#!/usr/bin/env julia

using Downloads

include("../common/common.jl")

const target = joinpath(@__DIR__, "xml")

mkpath(target)
for book in Books
    Downloads.download("https://tanach.us/Books/$(book).xml", joinpath(target, "$(book).xml"))
end
exit(0)
