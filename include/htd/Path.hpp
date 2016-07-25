/* 
 * File:   Path.hpp
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

#ifndef HTD_HTD_PATH_HPP
#define	HTD_HTD_PATH_HPP

#include <htd/Globals.hpp>
#include <htd/Helpers.hpp>
#include <htd/IMutablePath.hpp>

#include <string>
#include <unordered_map>
#include <unordered_set>

namespace htd
{
    /**
     *  Default implementation of the IMutablePath interface.
     */
    class Path : public virtual htd::IMutablePath
    {
        public:
            /**
             *  Constructor for a path.
             */
            Path(void);

            /**
             *  Copy constructor for a path.
             *
             *  @param[in] original  The original path.
             */
            Path(const Path & original);

            /**
             *  Copy constructor for a path.
             *
             *  @param[in] original  The original path.
             */
            Path(const htd::IPath & original);
            
            ~Path();
            
            std::size_t vertexCount(void) const HTD_OVERRIDE;

            std::size_t vertexCount(htd::vertex_t subPathRoot) const HTD_OVERRIDE;

            std::size_t edgeCount(void) const HTD_OVERRIDE;

            std::size_t edgeCount(htd::vertex_t vertex) const HTD_OVERRIDE;

            bool isVertex(htd::vertex_t vertex) const HTD_OVERRIDE;

            bool isEdge(htd::id_t edgeId) const HTD_OVERRIDE;

            bool isEdge(htd::vertex_t vertex1, htd::vertex_t vertex2) const HTD_OVERRIDE;

            bool isEdge(const std::vector<htd::vertex_t> & elements) const HTD_OVERRIDE;

            bool isEdge(const htd::ConstCollection<htd::vertex_t> & elements) const HTD_OVERRIDE;

            htd::ConstCollection<htd::id_t> associatedEdgeIds(htd::vertex_t vertex1, htd::vertex_t vertex2) const HTD_OVERRIDE;

            htd::ConstCollection<htd::id_t> associatedEdgeIds(const std::vector<htd::vertex_t> & elements) const HTD_OVERRIDE;

            htd::ConstCollection<htd::id_t> associatedEdgeIds(const htd::ConstCollection<htd::vertex_t> & elements) const HTD_OVERRIDE;

            htd::vertex_t vertexAtPosition(htd::index_t index) const HTD_OVERRIDE;

            bool isConnected(void) const HTD_OVERRIDE;
            
            bool isConnected(htd::vertex_t vertex1, htd::vertex_t vertex2) const HTD_OVERRIDE;

            std::size_t neighborCount(htd::vertex_t vertex) const HTD_OVERRIDE;

            htd::ConstCollection<htd::vertex_t> neighbors(htd::vertex_t vertex) const HTD_OVERRIDE;

            void copyNeighborsTo(std::vector<htd::vertex_t> & target, htd::vertex_t vertex) const HTD_OVERRIDE;

            htd::vertex_t neighborAtPosition(htd::vertex_t vertex, htd::index_t index) const HTD_OVERRIDE;

            bool isNeighbor(htd::vertex_t vertex, htd::vertex_t neighbor) const HTD_OVERRIDE;

            htd::ConstCollection<htd::vertex_t> vertices(void) const HTD_OVERRIDE;

            std::size_t isolatedVertexCount(void) const HTD_OVERRIDE;

            htd::ConstCollection<htd::vertex_t> isolatedVertices(void) const HTD_OVERRIDE;

            htd::vertex_t isolatedVertexAtPosition(htd::index_t index) const HTD_OVERRIDE;

            bool isIsolatedVertex(htd::vertex_t vertex) const HTD_OVERRIDE;

            htd::ConstCollection<htd::Hyperedge> hyperedges(void) const HTD_OVERRIDE;

            htd::ConstCollection<htd::Hyperedge> hyperedges(htd::vertex_t vertex) const HTD_OVERRIDE;

            const htd::Hyperedge & hyperedge(htd::id_t edgeId) const HTD_OVERRIDE;

            const htd::Hyperedge & hyperedgeAtPosition(htd::index_t index) const HTD_OVERRIDE;

            const htd::Hyperedge & hyperedgeAtPosition(htd::index_t index, htd::vertex_t vertex) const HTD_OVERRIDE;

            htd::FilteredHyperedgeCollection hyperedgesAtPositions(const std::vector<htd::index_t> & indices) const HTD_OVERRIDE;

            htd::FilteredHyperedgeCollection hyperedgesAtPositions(std::vector<htd::index_t> && indices) const HTD_OVERRIDE;

            htd::vertex_t root(void) const HTD_OVERRIDE;

            bool isRoot(htd::vertex_t vertex) const HTD_OVERRIDE;

            std::size_t leafCount(void) const HTD_NOEXCEPT HTD_OVERRIDE;

            htd::ConstCollection<htd::vertex_t> leaves(void) const HTD_OVERRIDE;

            void copyLeavesTo(std::vector<htd::vertex_t> & target) const HTD_OVERRIDE;

            htd::vertex_t leaf(void) const HTD_OVERRIDE;

            htd::vertex_t leafAtPosition(htd::index_t index) const HTD_OVERRIDE;

            bool isLeaf(htd::vertex_t vertex) const HTD_OVERRIDE;

            htd::vertex_t parent(htd::vertex_t vertex) const HTD_OVERRIDE;

            bool isParent(htd::vertex_t vertex, htd::vertex_t parent) const HTD_OVERRIDE;

            std::size_t childCount(htd::vertex_t vertex) const HTD_OVERRIDE;

            htd::ConstCollection<htd::vertex_t> children(htd::vertex_t vertex) const HTD_OVERRIDE;

            void copyChildrenTo(std::vector<htd::vertex_t> & target, htd::vertex_t vertex) const HTD_OVERRIDE;

            htd::vertex_t child(htd::vertex_t vertex) const HTD_OVERRIDE;

            htd::vertex_t childAtPosition(htd::vertex_t vertex, htd::index_t index) const HTD_OVERRIDE;

            bool isChild(htd::vertex_t vertex, htd::vertex_t child) const HTD_OVERRIDE;

            std::size_t height(void) const HTD_OVERRIDE;

            std::size_t height(htd::vertex_t vertex) const HTD_OVERRIDE;

            std::size_t depth(htd::vertex_t vertex) const HTD_OVERRIDE;

            htd::vertex_t nextVertex(void) const HTD_OVERRIDE;

            htd::id_t nextEdgeId(void) const HTD_OVERRIDE;

            void removeVertex(htd::vertex_t vertex) HTD_OVERRIDE;

            void removeSubpath(htd::vertex_t subpathRoot) HTD_OVERRIDE;

            htd::vertex_t insertRoot(void) HTD_OVERRIDE;

            htd::vertex_t addChild(htd::vertex_t vertex) HTD_OVERRIDE;

            htd::vertex_t addParent(htd::vertex_t vertex) HTD_OVERRIDE;

            void removeChild(htd::vertex_t vertex) HTD_OVERRIDE;

            void removeChild(htd::vertex_t vertex, htd::vertex_t child) HTD_OVERRIDE;

            void swapWithParent(htd::vertex_t vertex) HTD_OVERRIDE;

#ifndef HTD_USE_VISUAL_STUDIO_COMPATIBILITY_MODE
            Path * clone(void) const HTD_OVERRIDE;
#else
            Path * clone(void) const;

            htd::IPath * clonePath(void) const HTD_OVERRIDE;

            htd::ITree * cloneTree(void) const HTD_OVERRIDE;

            htd::IGraph * cloneGraph(void) const HTD_OVERRIDE;

            htd::IMultiGraph * cloneMultiGraph(void) const HTD_OVERRIDE;

            htd::IHypergraph * cloneHypergraph(void) const HTD_OVERRIDE;

            htd::IMultiHypergraph * cloneMultiHypergraph(void) const HTD_OVERRIDE;

            htd::IMutablePath * cloneMutablePath(void) const HTD_OVERRIDE;
#endif

            /**
             *  Copy assignment operator for a mutable path.
             *
             *  @param[in] original  The original path.
             */
            Path & operator=(const Path & original);

            Path & operator=(const htd::IPath & original) HTD_OVERRIDE;

        protected:
            /**
             *  Structure representing a node of a path.
             */
            struct Node
            {
                /**
                 *  The ID of the path node.
                 */
                htd::id_t id;

                /**
                 *  The parent of the path node.
                 */
                htd::vertex_t parent;

                /**
                 *  The child of the path node.
                 */
                htd::vertex_t child;

                /**
                 *  Constructor for a path node.
                 *
                 *  @param[in] id       The ID of the constructed path node.
                 *  @param[in] parent   The parent of the constructed path node.
                 */
                Node(htd::id_t id, htd::vertex_t parent) : id(id), parent(parent), child(htd::Vertex::UNKNOWN)
                {

                }
            };

            /**
             *  The size of the path.
             */
            std::size_t size_;

            /**
             *  The root vertex of the path.
             */
            htd::vertex_t root_;

            /**
             *  The ID the next edge added to the tree will get.
             */
            htd::id_t next_edge_;

            /**
             *  The ID the next vertex added to the path will get.
             */
            htd::vertex_t next_vertex_;

            /**
             *  The collection of all vertices of the path in ascending order.
             */
            std::vector<htd::vertex_t> vertices_;

            /**
             *  The map of pointers to all path nodes. It maps vertex IDs to the corresponding node information.
             */
            std::unordered_map<htd::id_t, Node *> nodes_;

            /**
             *  Delete a node of the path and perform an update of the internal state.
             *
             *  @param[in] node The node of the path which shall be removed.
             */
            void deleteNode(htd::Path::Node * node);
    };
}

#endif /* HTD_HTD_PATH_HPP */
