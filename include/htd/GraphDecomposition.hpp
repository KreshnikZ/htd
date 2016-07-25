/* 
 * File:   GraphDecomposition.hpp
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

#ifndef HTD_HTD_GRAPHDECOMPOSITION_HPP
#define	HTD_HTD_GRAPHDECOMPOSITION_HPP

#include <htd/Globals.hpp>
#include <htd/Helpers.hpp>
#include <htd/IMutableGraphDecomposition.hpp>
#include <htd/LabeledMultiHypergraph.hpp>

#include <unordered_map>

namespace htd
{
    /**
     *  Default implementation of the IMutableGraphDecomposition interface.
     */
    class GraphDecomposition : public htd::LabeledMultiHypergraph, public virtual htd::IMutableGraphDecomposition
    {
        public:
            /**
             *  Constructor for a graph decomposition.
             */
            GraphDecomposition(void);

            /**
             *  Copy constructor for a graph decomposition.
             *
             *  @param[in] original  The original graph decomposition.
             */
            GraphDecomposition(const GraphDecomposition & original);

            /**
             *  Copy constructor for a graph decomposition.
             *
             *  @param[in] original  The original multi-hypergraph.
             */
            GraphDecomposition(const htd::IMultiHypergraph & original);

            /**
             *  Copy constructor for a graph decomposition.
             *
             *  @param[in] original  The original labeled multi-hypergraph.
             */
            GraphDecomposition(const htd::ILabeledMultiHypergraph & original);

            /**
             *  Copy constructor for a graph decomposition.
             *
             *  @param[in] original  The original graph decomposition.
             */
            GraphDecomposition(const htd::IGraphDecomposition & original);
            
            ~GraphDecomposition();

            htd::vertex_t addVertex(void) HTD_OVERRIDE;

            htd::vertex_t addVertex(const std::vector<htd::vertex_t> & bagContent, const htd::FilteredHyperedgeCollection & inducedEdges) HTD_OVERRIDE;

            htd::vertex_t addVertex(std::vector<htd::vertex_t> && bagContent, htd::FilteredHyperedgeCollection && inducedEdges) HTD_OVERRIDE;

            htd::vertex_t addVertices(std::size_t count) HTD_OVERRIDE;

            void removeVertex(htd::vertex_t vertex) HTD_OVERRIDE;

            std::size_t bagSize(htd::vertex_t vertex) const HTD_OVERRIDE;

            std::vector<htd::vertex_t> & bagContent(htd::vertex_t vertex) HTD_OVERRIDE;

            const std::vector<htd::vertex_t> & bagContent(htd::vertex_t vertex) const HTD_OVERRIDE;

            htd::FilteredHyperedgeCollection & inducedHyperedges(htd::vertex_t vertex) HTD_OVERRIDE;

            const htd::FilteredHyperedgeCollection & inducedHyperedges(htd::vertex_t vertex) const HTD_OVERRIDE;

            std::size_t minimumBagSize(void) const HTD_OVERRIDE;

            std::size_t maximumBagSize(void) const HTD_OVERRIDE;

#ifndef HTD_USE_VISUAL_STUDIO_COMPATIBILITY_MODE
            GraphDecomposition * clone(void) const HTD_OVERRIDE;
#else
            GraphDecomposition * clone(void) const;

            htd::IMultiHypergraph * cloneMultiHypergraph(void) const HTD_OVERRIDE;

            htd::ILabeledMultiHypergraph * cloneLabeledMultiHypergraph(void) const HTD_OVERRIDE;

            htd::IGraphDecomposition * cloneGraphDecomposition(void) const HTD_OVERRIDE;

            htd::IMutableMultiHypergraph * cloneMutableMultiHypergraph(void) const HTD_OVERRIDE;

            htd::IMutableLabeledMultiHypergraph * cloneMutableLabeledMultiHypergraph(void) const HTD_OVERRIDE;

            htd::IMutableGraphDecomposition * cloneMutableGraphDecomposition(void) const HTD_OVERRIDE;
#endif

            /**
             *  Copy assignment operator for a mutable graph decomposition.
             *
             *  @param[in] original  The original graph decomposition.
             */
            GraphDecomposition & operator=(const GraphDecomposition & original);

            GraphDecomposition & operator=(const htd::IMultiHypergraph & original) HTD_OVERRIDE;

            GraphDecomposition & operator=(const htd::ILabeledMultiHypergraph & original) HTD_OVERRIDE;

            GraphDecomposition & operator=(const htd::IGraphDecomposition & original) HTD_OVERRIDE;

        private:
            std::unordered_map<htd::vertex_t, std::vector<htd::vertex_t>> bagContent_;

            std::unordered_map<htd::vertex_t, htd::FilteredHyperedgeCollection> inducedEdges_;
    };
}

#endif /* HTD_HTD_GRAPHDECOMPOSITION_HPP */
