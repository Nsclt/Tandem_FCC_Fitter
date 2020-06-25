#============= Observables =============================================#
function obs1(params)
    0.29606536774054054.-0.5285110458404064*params.p1.+0.3248450245052548*params.p1.^2
end

observables = [
    Observable("Obs1", obs1)
]

#    sigma_349 = 0.535
#    sigma_err_349 = 0.02
#    factor_349 = sigma_err_349/sigma_349
#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.29295, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.01095140187))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
