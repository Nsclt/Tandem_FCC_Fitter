#============= Observables =============================================#
function obs1(params)
    0.19770541144881032.+0.43917391871713646*params.p1.+0.2569831311641164*params.p1.^2
end

observables = [
    Observable("Obs1", obs1)
]

#sigma_346 = 0.5235
#sigma_err_346 = 0.015
#factor_346 = sigma_err_346/sigma_346#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.196971, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.005643868))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
