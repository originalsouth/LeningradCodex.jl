#!/usr/bin/env julia
using EzXML
using OrderedCollections
using JLD2

include("../common/common.jl")

const tanakh = let
    retval = OrderedDict{String, Vector{Vector{Vector{String}}}}()
    fnc(x) = replace(string(x), r"<x>.*<\/x>" => s"", r"\<.*?\>" => s"")
    for (name, xmlbook) in zip(Books, [joinpath(@__DIR__, joinpath("xml", "$(book).xml")) for book in Books])
        content = elements(elements(root(EzXML.readxml(xmlbook)))[2])[1]
        book = Vector{Vector{Vector{String}}}()
        for c in eachelement(content)
            c.name != "c" && continue
            cn = c["n"]
            chapter = Vector{Vector{String}}()
            for v in eachelement(c)
                v.name != "v" && continue
                vn = v["n"]
                verse = Vector{String}()
                for (wn, w) in enumerate(eachelement(v))
                    if w.name == "w"
                        push!(verse, fnc(w))
                    elseif w.name == "pe"
                        push!(verse, "\n")
                    elseif w.name == "samekh"
                        push!(verse, " "^8)
                    elseif w.name == "k"
                        push!(verse, fnc(w))
                    elseif w.name == "q"
                        push!(verse, "[$(fnc(w))]")
                    elseif w.name == "x"
                        push!(verse, fnc(w))
                    elseif w.name == "reversednun"
                        push!(verse, " "^8 * "׆" * " "^8)
                    else
                        error("Unsupported tag \"$(w.name)\" in $(name):$(cn):$(vn):$(wn)")
                    end
                end
                push!(chapter, verse)
            end
            push!(book, chapter)
        end
        push!(retval, name => book)
    end
    retval
end

save(joinpath(@__DIR__, "Leningrad.jld2"), tanakh)

exit(0)
