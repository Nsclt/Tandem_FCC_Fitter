#============= Observables =============================================#
function obs1(params)
    0.2754514652010686.+0.6123755621886863*params.p1.+0.3592770371361215*params.p1.^2
end

observables = [
    Observable("Obs1", obs1)
]

#    sigma_348 = 0.53
#    sigma_err_348 = 0.02
#    factor_348 = sigma_err_348/sigma_348

#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.27055, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.01020943396))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
