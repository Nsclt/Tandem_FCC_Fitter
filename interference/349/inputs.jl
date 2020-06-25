#============= Observables =============================================#
function obs1(params)
    0.29796268513535684.+0.6642643280073814*params.p1.-0.5261073094023664*params.p2.-0.6691207492774258*params.p1.*params.p2.+0.39111611234007365*params.p1.^2 .+0.32289579629971576*params.p2.^2
end

observables = [
    Observable("Obs1", obs1)
]


#    sigma_349 = 0.535
#    sigma_err_349 = 0.02
#    factor_349 = sigma_err_349/sigma_349

#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.293804, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.0109833271))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
