#============= Observables =============================================#
function obs1(params)
    0.5302851973992773.+1.2005882209960814*params.p1.-0.9517864405579839*params.p2.-1.25158602645301*params.p1.*params.p2.+0.6039532152039699*params.p1.^2 .+0.7313239388912209*params.p2.^2
end

observables = [
    Observable("Obs1", obs1)
]

#0.1369516 0.00134933380244
#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.524105, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.014))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
