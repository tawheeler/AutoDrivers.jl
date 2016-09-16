module GaussianMixtureRegressionDrivers

using AutomotiveDrivingModels
using Distributions
using Compat
using PyCall

const SKLEARN_MIXTURE = PyCall.PyNULL()
function __init__()
    copy!(SKLEARN_MIXTURE, pyimport("sklearn.mixture"))
end

export
    GaussianMixtureRegressionDriver,
    GMR,

    n_learned_components,
    nsuffstats,

    GMRTrainParams,
    calc_bic_score

include(Pkg.dir("AutoDrivers", "src", "GaussianMixtureRegressionDrivers", "gaussian_mixture_regression.jl"))
include(Pkg.dir("AutoDrivers", "src", "GaussianMixtureRegressionDrivers", "gaussian_mixture_regression_drivers.jl"))
include(Pkg.dir("AutoDrivers", "src", "GaussianMixtureRegressionDrivers", "learning.jl"))
include(Pkg.dir("AutoDrivers", "src", "GaussianMixtureRegressionDrivers", "io.jl"))

end