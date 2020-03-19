#============= Observables =============================================#
function obs1(params)
    0.13690095434578742.+0.30646286226228847*params.p1.-0.24239421620451485*params.p2.-0.3066134209804071*params.p1.*params.p2.+0.17924183360840712*params.p1.^2 .+0.1480135380726152*params.p2.^2
end

observables = [
    Observable("Obs1", obs1)
]

#0.1369516 0.00134933380244
#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.1358423, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.014))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
