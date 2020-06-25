#============= Observables =============================================#
function obs1(params)
    0.24069764820775846.-0.4163219331870179*params.p1.+0.2541072910105217*params.p1.^2
end

observables = [
    Observable("Obs1", obs1)
]

#    sigma_347 = 0.518
#    sigma_err_347 = 0.02
#    factor_347 = sigma_err_347/sigma_347

#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.239133, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.009232934363))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
