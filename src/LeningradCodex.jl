module LeningradCodex

using OrderedCollections
using JLD2

include("../common/common.jl")
const codex = JLD2.load(joinpath(@__DIR__, "../data/Leningrad.jld2"))

end
