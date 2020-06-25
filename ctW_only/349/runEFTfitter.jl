using BAT
using LinearAlgebra
using ValueShapes
using IntervalSets
using Plots
using FunctionWrappers

using EFTfitter

include("inputs.jl")

m = createmodel(observables, measurements, correlations)
#CombinationTool.printmodel(m)

likelihood = CombinationDensity(m)

prior = NamedTupleDist(
    p1 = [-10.0..10.0]
)

posterior = PosteriorDensity(likelihood, prior)

nchains = 4
nsamples = 10^4
algorithm = MetropolisHastings()

samples, stats = bat_sample(posterior, (nsamples, nchains), algorithm)

plot(samples)
savefig("fn.png")
