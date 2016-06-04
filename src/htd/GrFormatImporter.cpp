/*
 * File:   GrFormatImporter.cpp
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

#ifndef HTD_HTD_GRFORMATIMPORTER_CPP
#define	HTD_HTD_GRFORMATIMPORTER_CPP

#include <htd/GrFormatImporter.hpp>

#include <htd/MultiGraphFactory.hpp>

#include <fstream>
#include <string>
#include <stdexcept>

htd::IMultiGraph * htd::GrFormatImporter::import(const std::string & path) const
{
    std::ifstream stream(path);

    return import(stream);
}

htd::IMultiGraph * htd::GrFormatImporter::import(std::istream & stream) const
{
    std::size_t vertexCount = 0;
    std::size_t edgeCount = 0;

    bool firstLine = true;

    bool error = false;

    htd::IMutableMultiGraph * ret = htd::MultiGraphFactory::instance().getMultiGraph();

    if (stream.good())
    {
        std::string line;

        while (!error && std::getline(stream, line))
        {
            if (line.empty())
            {
                error = true;
            }
            else
            {
                if (line[line.size() - 1] == '\r')
                {
                    line.pop_back();
                }

                if (line[0] != 'c')
                {
                    if (firstLine)
                    {
                        if (line.compare(0, 5, "p tw ") != 0)
                        {
                            error = true;
                        }

                        line = line.substr(5);

                        std::size_t pos = 0;

                        vertexCount = std::stol(line, &pos);

                        if (line[pos] != ' ')
                        {
                            error = true;
                        }

                        line = line.substr(pos + 1);

                        edgeCount = std::stol(line, &pos);

                        if (pos != line.length())
                        {
                            error = true;
                        }

                        ret->addVertices(vertexCount);

                        firstLine = false;
                    }
                    else
                    {
                        std::size_t pos = 0;

                        htd::vertex_t vertex1 = std::stoul(line, &pos);

                        if (line[pos] != ' ')
                        {
                            error = true;
                        }

                        line = line.substr(pos + 1);

                        htd::vertex_t vertex2 = std::stoul(line, &pos);

                        if (pos != line.length())
                        {
                            error = true;
                        }

                        ret->addEdge(vertex1, vertex2);

                        edgeCount--;
                    }
                }
            }
        }

        if (edgeCount != 0)
        {
            error = true;
        }
    }
    else
    {
        error = true;
    }

    if (firstLine || error)
    {
        delete ret;

        ret = nullptr;
    }
    
    return ret;
}

#endif /* HTD_HTD_GRFORMATIMPORTER_CPP */