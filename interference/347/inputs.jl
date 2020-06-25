#============= Observables =============================================#
function obs1(params)
    0.24169623622278144.+0.5324607110911943*params.p1.-0.4144061986734695*params.p2.-0.5279067538132275*params.p1.*params.p2.+0.31128425604263765*params.p1.^2 .+0.25266172748564036*params.p2.^2
end

observables = [
    Observable("Obs1", obs1)
]

#    sigma_347 = 0.518
#    sigma_err_347 = 0.02
#    factor_347 = sigma_err_347/sigma_347

#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.238591, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.009212007722))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
