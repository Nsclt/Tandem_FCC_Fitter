#============= Observables =============================================#
function obs1(params)
    0.5856725428736612.+1.3874273453381765*params.p1.-1.1040972122826611*params.p2.-1.9041631797850822*params.p1.*params.p2.+0.9116043422918848*params.p1.^2 .+1.1123180626218552*params.p2.^2
end

observables = [
    Observable("Obs1", obs1)
]

#0.1369516 0.00134933380244
#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.568093, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.014))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
