#============= Observables =============================================#
function obs1(params)
    0.13723189652222723.-0.24393176597733843*params.p1.+0.14887561846042163*params.p1.^2
end

observables = [
    Observable("Obs1", obs1)
]

#0.1369516 0.00134933380244
#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.1368778, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.014))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
