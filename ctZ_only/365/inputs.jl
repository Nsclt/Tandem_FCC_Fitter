#============= Observables =============================================#
function obs1(params)
    0.528820369294148.-0.9573650545423233*params.p1.+0.6064519853810653*params.p1.^2
end

observables = [
    Observable("Obs1", obs1)
]

#0.1369516 0.00134933380244
#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.521639, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.014))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
