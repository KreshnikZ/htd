/*
 * File:   LabeledDirectedGraph.hpp
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

#ifndef HTD_HTD_LABELEDDIRECTEDGRAPH_HPP
#define	HTD_HTD_LABELEDDIRECTEDGRAPH_HPP

#include <htd/Globals.hpp>
#include <htd/IMutableLabeledDirectedGraph.hpp>
#include <htd/DirectedGraph.hpp>

namespace htd
{
    /**
     *  Default implementation of the IMutableLabeledDirectedGraph interface.
     */
    class HTD_API LabeledDirectedGraph : public htd::DirectedGraph, public virtual htd::IMutableLabeledDirectedGraph
    {
        public:
            /**
             *  Constructor for a labeled directed graph.
             */
            LabeledDirectedGraph(void);

            /**
             *  Constructor for a labeled directed graph.
             *
             *  @param[in] initialSize  The initial size of the created graph.
             */
            LabeledDirectedGraph(std::size_t initialSize);

            /**
             *  Copy constructor for a labeled directed graph.
             *
             *  @param[in] original  The original labeled directed graph.
             */
            LabeledDirectedGraph(const LabeledDirectedGraph & original);

            /**
             *  Copy constructor for a directed graph.
             *
             *  @param[in] original  The original directed graph.
             */
            LabeledDirectedGraph(const htd::IDirectedGraph & original);

            /**
             *  Copy constructor for a labeled directed graph.
             *
             *  @param[in] original  The original labeled directed graph.
             */
            LabeledDirectedGraph(const htd::ILabeledDirectedGraph & original);
            
            virtual ~LabeledDirectedGraph();

            void removeVertex(htd::vertex_t vertex) HTD_OVERRIDE;

            void removeEdge(htd::id_t edgeId) HTD_OVERRIDE;

            const htd::ILabelingCollection & labelings(void) const HTD_OVERRIDE;

            std::size_t labelCount(void) const HTD_OVERRIDE;

            htd::ConstCollection<std::string> labelNames(void) const HTD_OVERRIDE;

            const std::string & labelNameAtPosition(htd::index_t index) const HTD_OVERRIDE;

            bool isLabeledVertex(const std::string & labelName, htd::vertex_t vertex) const HTD_OVERRIDE;

            bool isLabeledEdge(const std::string & labelName, htd::id_t edgeId) const HTD_OVERRIDE;

            const htd::ILabel & vertexLabel(const std::string & labelName, htd::vertex_t vertex) const HTD_OVERRIDE;

            const htd::ILabel & edgeLabel(const std::string & labelName, htd::id_t edgeId) const HTD_OVERRIDE;

            void setVertexLabel(const std::string & labelName, htd::vertex_t vertex, htd::ILabel * label) HTD_OVERRIDE;

            void setEdgeLabel(const std::string & labelName, htd::id_t edgeId, htd::ILabel * label) HTD_OVERRIDE;

            void removeVertexLabel(const std::string & labelName, htd::vertex_t vertex) HTD_OVERRIDE;

            void removeEdgeLabel(const std::string & labelName, htd::id_t edgeId) HTD_OVERRIDE;

            void swapVertexLabels(htd::vertex_t vertex1, htd::vertex_t vertex2) HTD_OVERRIDE;

            void swapEdgeLabels(htd::id_t edgeId1, htd::id_t edgeId2) HTD_OVERRIDE;

            void swapVertexLabel(const std::string & labelName, htd::vertex_t vertex1, htd::vertex_t vertex2) HTD_OVERRIDE;

            void swapEdgeLabel(const std::string & labelName, htd::id_t edgeId1, htd::id_t edgeId2) HTD_OVERRIDE;

            htd::ILabel * transferVertexLabel(const std::string & labelName, htd::vertex_t vertex) HTD_OVERRIDE;

            htd::ILabel * transferEdgeLabel(const std::string & labelName, htd::id_t edgeId) HTD_OVERRIDE;

#ifndef HTD_USE_VISUAL_STUDIO_COMPATIBILITY_MODE
            LabeledDirectedGraph * clone(void) const HTD_OVERRIDE;
#else
            /**
             *  Create a deep copy of the current mutable labeled directed graph.
             *
             *  @return A new LabeledDirectedGraph object identical to the current mutable labeled directed graph.
             */
            LabeledDirectedGraph * clone(void) const;

            htd::IGraph * cloneGraph(void) const HTD_OVERRIDE;

            htd::IMultiGraph * cloneMultiGraph(void) const HTD_OVERRIDE;

            htd::IHypergraph * cloneHypergraph(void) const HTD_OVERRIDE;

            htd::IDirectedGraph * cloneDirectedGraph(void) const HTD_OVERRIDE;

            htd::IMultiHypergraph * cloneMultiHypergraph(void) const HTD_OVERRIDE;

            htd::IDirectedMultiGraph * cloneDirectedMultiGraph(void) const HTD_OVERRIDE;

            htd::ILabeledGraph * cloneLabeledGraph(void) const HTD_OVERRIDE;

            htd::ILabeledMultiGraph * cloneLabeledMultiGraph(void) const HTD_OVERRIDE;

            htd::ILabeledHypergraph * cloneLabeledHypergraph(void) const HTD_OVERRIDE;

            htd::ILabeledDirectedGraph * cloneLabeledDirectedGraph(void) const HTD_OVERRIDE;

            htd::ILabeledMultiHypergraph * cloneLabeledMultiHypergraph(void) const HTD_OVERRIDE;

            htd::ILabeledDirectedMultiGraph * cloneLabeledDirectedMultiGraph(void) const HTD_OVERRIDE;

            htd::IMutableDirectedGraph * cloneMutableDirectedGraph(void) const HTD_OVERRIDE;

            htd::IMutableLabeledDirectedGraph * cloneMutableLabeledDirectedGraph(void) const HTD_OVERRIDE;
#endif

            /**
             *  Copy assignment operator for a mutable labeled directed graph.
             *
             *  @param[in] original  The original labeled directed graph.
             */
            LabeledDirectedGraph & operator=(const LabeledDirectedGraph & original);

#ifndef HTD_USE_VISUAL_STUDIO_COMPATIBILITY_MODE
            LabeledDirectedGraph & operator=(const htd::IDirectedGraph & original) HTD_OVERRIDE;

            LabeledDirectedGraph & operator=(const htd::IDirectedMultiGraph & original) HTD_OVERRIDE;

            LabeledDirectedGraph & operator=(const htd::ILabeledDirectedGraph & original) HTD_OVERRIDE;

            LabeledDirectedGraph & operator=(const htd::ILabeledDirectedMultiGraph & original) HTD_OVERRIDE;
#else
            LabeledDirectedGraph & operator=(const htd::IDirectedGraph & original);

            LabeledDirectedGraph & operator=(const htd::IDirectedMultiGraph & original);

            LabeledDirectedGraph & operator=(const htd::ILabeledDirectedGraph & original);

            LabeledDirectedGraph & operator=(const htd::ILabeledDirectedMultiGraph & original);

            void assign(const htd::IDirectedGraph & original) HTD_OVERRIDE;

            void assign(const htd::IDirectedMultiGraph & original) HTD_OVERRIDE;

            void assign(const htd::ILabeledDirectedGraph & original) HTD_OVERRIDE;

            void assign(const htd::ILabeledDirectedMultiGraph & original) HTD_OVERRIDE;
#endif

        private:
            htd::ILabelingCollection * labelings_;
    };
}

#endif /* HTD_HTD_LABELEDDIRECTEDGRAPH_HPP */
