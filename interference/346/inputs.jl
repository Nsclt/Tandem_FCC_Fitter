#============= Observables =============================================#
function obs1(params)
    0.19925838519194095.+0.4382343502945576*params.p1.-0.34120253774348663*params.p2.-0.4336657521025895*params.p1.*params.p2.+0.25570647207129416*params.p1.^2 .+0.20751284255438407*params.p2.^2
end

observables = [
    Observable("Obs1", obs1)
]

#    sigma_346 = 0.5235
#    sigma_err_346 = 0.015
#    factor_346 = sigma_err_346/sigma_346
#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.19639, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.005626361032))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
