#============= Observables =============================================#
function obs1(params)
    0.13817735729865072.+0.3065209907315471*params.p1.-0.24242129914645835*params.p2.-0.30636976693619483*params.p1.*params.p2.+0.17932842222372164*params.p1.^2 .+0.14765321753216887*params.p2.^2
end

observables = [
    Observable("Obs1", obs1)
]


#    sigma_345 = 0.544
#    sigma_err_345 = 0.018
#    factor_345 = sigma_err_345/sigma_345
#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.1364834, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.004515994853))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
