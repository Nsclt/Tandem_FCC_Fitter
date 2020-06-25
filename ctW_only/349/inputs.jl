#============= Observables =============================================#
function obs1(params)
    0.30514566197513865.+0.6793737417959177*params.p1.+0.3995999695289872*params.p1.^2
end

observables = [
    Observable("Obs1", obs1)
]

#    sigma_349 = 0.535
#    sigma_err_349 = 0.02
#    factor_349 = sigma_err_349/sigma_349#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.301193, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.0112595514))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
