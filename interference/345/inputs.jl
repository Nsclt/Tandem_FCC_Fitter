#============= Observables =============================================#
function obs1(params)
    0.13817735729865072.+0.3065209907315471*params.p1.-0.24242129914645835*params.p2.-0.30636976693619483*params.p1.*params.p2.+0.17932842222372164*params.p1.^2 .+0.14765321753216887*params.p2.^2
end

observables = [
    Observable("Obs1", obs1)
]

#0.1369516 0.00134933380244
#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.1364834, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.014))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
