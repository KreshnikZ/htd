/*
 * File:   LabeledDirectedMultiGraphFactory.cpp
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

#ifndef HTD_HTD_LABELEDDIRECTEDMULTIGRAPHFACTORY_CPP
#define HTD_HTD_LABELEDDIRECTEDMULTIGRAPHFACTORY_CPP

#include <htd/Globals.hpp>
#include <htd/Helpers.hpp>
#include <htd/LabeledDirectedMultiGraphFactory.hpp>
#include <htd/LabeledDirectedMultiGraph.hpp>

#include <stdexcept>

htd::LabeledDirectedMultiGraphFactory::LabeledDirectedMultiGraphFactory(void)
{
    constructionTemplate_ = new htd::LabeledDirectedMultiGraph();
}

htd::LabeledDirectedMultiGraphFactory::~LabeledDirectedMultiGraphFactory()
{
    if (constructionTemplate_ != nullptr)
    {
        delete constructionTemplate_;

        constructionTemplate_ = nullptr;
    }
}

htd::LabeledDirectedMultiGraphFactory & htd::LabeledDirectedMultiGraphFactory::instance(void)
{
    static htd::LabeledDirectedMultiGraphFactory instance_;

    return instance_;
}

htd::IMutableLabeledDirectedMultiGraph * htd::LabeledDirectedMultiGraphFactory::getLabeledDirectedMultiGraph(void)
{
    return constructionTemplate_->clone();
}

htd::IMutableLabeledDirectedMultiGraph * htd::LabeledDirectedMultiGraphFactory::getLabeledDirectedMultiGraph(std::size_t initialSize)
{
    htd::IMutableLabeledDirectedMultiGraph * ret = constructionTemplate_->clone();

    ret->addVertices(initialSize);

    return ret;
}

htd::IMutableLabeledDirectedMultiGraph * htd::LabeledDirectedMultiGraphFactory::getLabeledDirectedMultiGraph(const htd::ILabeledDirectedMultiGraph & original)
{
    htd::IMutableLabeledDirectedMultiGraph * ret = constructionTemplate_->clone();

    *ret = original;

    return ret;
}

void htd::LabeledDirectedMultiGraphFactory::setConstructionTemplate(htd::IMutableLabeledDirectedMultiGraph * original)
{
    if (original == nullptr)
    {
        throw std::logic_error("void htd::LabeledDirectedMultiGraphFactory::setConstructionTemplate(htd::IMutableLabeledDirectedMultiGraph *)");
    }

    if (original->vertexCount() > 0)
    {
        throw std::logic_error("void htd::LabeledDirectedMultiGraphFactory::setConstructionTemplate(htd::IMutableLabeledDirectedMultiGraph *)");
    }

    if (constructionTemplate_ != nullptr)
    {
        delete constructionTemplate_;

        constructionTemplate_ = nullptr;
    }

    constructionTemplate_ = original;
}

htd::IMutableLabeledDirectedMultiGraph & htd::LabeledDirectedMultiGraphFactory::accessMutableLabeledDirectedMultiGraph(htd::ILabeledDirectedMultiGraph & original)
{
    return *(dynamic_cast<htd::IMutableLabeledDirectedMultiGraph *>(&original));
}

const htd::IMutableLabeledDirectedMultiGraph & htd::LabeledDirectedMultiGraphFactory::accessMutableLabeledDirectedMultiGraph(const htd::ILabeledDirectedMultiGraph & original)
{
    return *(dynamic_cast<const htd::IMutableLabeledDirectedMultiGraph *>(&original));
}

#endif /* HTD_HTD_LABELEDDIRECTEDMULTIGRAPHFACTORY_CPP */