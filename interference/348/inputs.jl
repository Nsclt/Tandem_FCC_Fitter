#============= Observables =============================================#
function obs1(params)
    0.27546063449312597.+0.6107098637699027*params.p1.-0.47579730634867845*params.p2.-0.6061228728822554*params.p1.*params.p2.+0.35723669501330424*params.p1.^2 .+0.2903644677792675*params.p2.^2
end

observables = [
    Observable("Obs1", obs1)
]


#    sigma_348 = 0.53
#    sigma_err_348 = 0.02
#    factor_348 = sigma_err_348/sigma_348

#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.273931, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.01033701887))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
