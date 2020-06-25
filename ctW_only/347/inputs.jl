#============= Observables =============================================#
function obs1(params)
    0.23989743552955176.+0.5334979543872991*params.p1.+0.3127624321716552*params.p1.^2
end

observables = [
    Observable("Obs1", obs1)
]

#sigma_347 = 0.518
#sigma_err_347 = 0.02
#factor_347 = sigma_err_347/sigma_347
#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.237096, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.00915))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
