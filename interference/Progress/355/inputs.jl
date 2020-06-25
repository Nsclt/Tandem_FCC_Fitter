#============= Observables =============================================#
function obs1(params)
    0.41381581771262893.+0.9391780087989758*params.p1.-0.7430293798969133*params.p2.-0.9588334888090653*params.p1.*params.p2.+0.46259424852186665*params.p1.^2 .+0.561102443142997*params.p2.^2
end

observables = [
    Observable("Obs1", obs1)
]

#0.1369516 0.00134933380244
#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.414594, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.014))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
