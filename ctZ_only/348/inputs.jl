#============= Observables =============================================#
function obs1(params)
    0.2754720443744421.-0.4769442475794563*params.p1.+0.2917353508531981*params.p1.^2
end

observables = [
    Observable("Obs1", obs1)
]

#    sigma_348 = 0.53
#    sigma_err_348 = 0.02
#    factor_348 = sigma_err_348/sigma_348
#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.272932, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.01029932075))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
