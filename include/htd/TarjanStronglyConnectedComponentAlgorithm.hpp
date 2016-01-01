/* 
 * File:   TarjanStronglyConnectedComponentAlgorithm.hpp
 *
 * Author: ABSEHER Michael (abseher@dbai.tuwien.ac.at)
 * 
 * Copyright 2015, Michael Abseher
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

#ifndef HTD_HTD_TARJANSTRONGLYCONNECTEDCOMPONENTALGORITHM_HPP
#define	HTD_HTD_TARJANSTRONGLYCONNECTEDCOMPONENTALGORITHM_HPP

#include <htd/Globals.hpp>
#include <htd/IStronglyConnectedComponentAlgorithm.hpp>
#include <htd/Collection.hpp>
#include <htd/IHypergraph.hpp>
#include <htd/IDirectedGraph.hpp>

namespace htd
{
    class TarjanStronglyConnectedComponentAlgorithm : public virtual htd::IStronglyConnectedComponentAlgorithm
    {
        public:
            TarjanStronglyConnectedComponentAlgorithm(void);

            ~TarjanStronglyConnectedComponentAlgorithm();
            
            htd::Collection<htd::Collection<htd::vertex_t>> determineComponents(const htd::IHypergraph & graph) const HTD_OVERRIDE;

            htd::Collection<htd::Collection<htd::vertex_t>> determineComponents(const htd::IDirectedGraph & graph) const HTD_OVERRIDE;

            TarjanStronglyConnectedComponentAlgorithm * clone(void) const HTD_OVERRIDE;
    };
}

#endif /* HTD_HTD_TARJANSTRONGLYCONNECTEDCOMPONENTALGORITHM_HPP */