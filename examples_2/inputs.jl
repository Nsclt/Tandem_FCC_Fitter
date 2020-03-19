#============= Observables =============================================#
function obs1(params)
    0.13623468097117397.+0.11594535893430913*params.p1.+0.03428049448014159*params.p1.^2
end

observables = [
    Observable("Obs1", obs1)
]

#0.1369516 0.00134933380244
#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.1369516, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.00134933380244))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
