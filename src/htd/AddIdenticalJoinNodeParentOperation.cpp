/*
 * File:   AddIdenticalJoinNodeParentOperation.cpp
 *
 * Author: ABSEHER Michael (abseher@dbai.tuwien.ac.at)
 * 
 * Copyright 2015-2016, Michael Abseher
 *    E-Mail: <abseher@dbai.tuwien.ac.at>
 * 
 * This file is part of htd.
 * 
 * htd is free software: you can redistribute it and/or modify it under 
 * the terms of the GNU General Public License as published by the Free 
 * Software Foundation, either version 3 of the License, or (at your 
 * option) any later version.
 * 
 * htd is distributed in the hope that it will be useful, but WITHOUT 
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY 
 * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public 
 * License for more details.

 * You should have received a copy of the GNU General Public License
 * along with htd.  If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef HTD_HTD_ADDIDENTICALJOINNODEPARENTOPERATION_CPP
#define	HTD_HTD_ADDIDENTICALJOINNODEPARENTOPERATION_CPP

#include <htd/Globals.hpp>
#include <htd/AddIdenticalJoinNodeParentOperation.hpp>

htd::AddIdenticalJoinNodeParentOperation::AddIdenticalJoinNodeParentOperation(void)
{

}

htd::AddIdenticalJoinNodeParentOperation::~AddIdenticalJoinNodeParentOperation()
{

}

void htd::AddIdenticalJoinNodeParentOperation::apply(htd::IMutableTreeDecomposition & decomposition) const
{
    apply(decomposition, std::vector<htd::ILabelingFunction *>());
}

void htd::AddIdenticalJoinNodeParentOperation::apply(htd::IMutableTreeDecomposition & decomposition, const std::vector<htd::ILabelingFunction *> & labelingFunctions) const
{
    const htd::ConstCollection<htd::vertex_t> & joinNodeCollection = decomposition.joinNodes();

    for (htd::vertex_t node : joinNodeCollection)
    {
        const std::vector<htd::vertex_t> & bag = decomposition.bagContent(node);

        DEBUGGING_CODE(
        std::cout << "JOIN NODE: " << node << std::endl;
        std::cout << "   ";
        htd::print(bag, false);
        std::cout << std::endl << std::endl;
        )

        const htd::FilteredHyperedgeCollection & inducedHyperedges = decomposition.inducedHyperedges(node);

        if (decomposition.bagContent(decomposition.parent(node)) != bag)
        {
            htd::vertex_t newParent = decomposition.addParent(node);

            decomposition.setBagContent(newParent, bag);

            decomposition.setInducedHyperedges(newParent, inducedHyperedges);

            for (auto & labelingFunction : labelingFunctions)
            {
                htd::ILabelCollection * labelCollection = decomposition.labelings().exportVertexLabelCollection(newParent);

                htd::ILabel * newLabel = labelingFunction->computeLabel(bag, *labelCollection);

                delete labelCollection;

                decomposition.setVertexLabel(labelingFunction->name(), newParent, newLabel);
            }
        }
    }
}

htd::AddIdenticalJoinNodeParentOperation * htd::AddIdenticalJoinNodeParentOperation::clone(void) const
{
    return new htd::AddIdenticalJoinNodeParentOperation();
}

#endif /* HTD_HTD_ADDIDENTICALJOINNODEPARENTOPERATION_CPP */