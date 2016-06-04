/*
 * File:   TdFormatExporter.cpp
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

#ifndef HTD_HTD_TDFORMATEXPORTER_CPP
#define	HTD_HTD_TDFORMATEXPORTER_CPP

#include <htd/Globals.hpp>
#include <htd/Helpers.hpp>
#include <htd/TdFormatExporter.hpp>

#include <iostream>
#include <unordered_map>

htd::TdFormatExporter::TdFormatExporter(void)
{

}

htd::TdFormatExporter::~TdFormatExporter()
{

}

void htd::TdFormatExporter::write(const htd::ITreeDecomposition & decomposition, const htd::IMultiHypergraph & graph, std::ostream & outputStream) const
{
    std::unordered_map<htd::vertex_t, std::size_t> indices;

    outputStream << "s td " << decomposition.vertexCount() << " " << decomposition.maximumBagSize() << " " << graph.vertexCount() << "\n";

    if (decomposition.vertexCount() > 0)
    {
        std::size_t index = 1;

        for (htd::vertex_t node : decomposition.vertices())
        {
            outputStream << "b " << index << " ";

            indices[node] = index;

            for (htd::vertex_t vertex : decomposition.bagContent(node))
            {
                outputStream << vertex << " ";
            }

            outputStream << "\n";

            ++index;
        }

        for (const htd::Hyperedge & hyperedge : decomposition.hyperedges())
        {
            for (htd::vertex_t vertex : hyperedge)
            {
                outputStream << indices[vertex] << " ";
            }

            outputStream << "\n";
        }
    }
}

void htd::TdFormatExporter::write(const htd::ITreeDecomposition & decomposition, const htd::NamedMultiHypergraph<std::string, std::string> & graph, std::ostream & outputStream) const
{
    std::unordered_map<htd::vertex_t, std::size_t> indices;

    outputStream << "s td " << decomposition.vertexCount() << " " << decomposition.maximumBagSize() << " " << graph.vertexCount() << "\n";

    if (decomposition.vertexCount() > 0)
    {
        std::size_t index = 1;

        for (htd::vertex_t node : decomposition.vertices())
        {
            outputStream << "b " << index << " ";

            indices[node] = index;

            for (htd::vertex_t vertex : decomposition.bagContent(node))
            {
                outputStream << vertex << " ";
            }

            outputStream << "\n";

            ++index;
        }

        for (const htd::Hyperedge & hyperedge : decomposition.hyperedges())
        {
            for (htd::vertex_t vertex : hyperedge)
            {
                outputStream << indices[vertex] << " ";
            }

            outputStream << "\n";
        }
    }
}

#endif /* HTD_HTD_TDFORMATEXPORTER_CPP */