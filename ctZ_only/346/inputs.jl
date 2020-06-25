#============= Observables =============================================#
function obs1(params)
    0.1983412843532579.-0.3424331975734875*params.p1.+0.208619048239085*params.p1.^2
end

observables = [
    Observable("Obs1", obs1)
]

#    sigma_346 = 0.5235
#    sigma_err_346 = 0.015
#    factor_346 = sigma_err_346/sigma_346
#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs1", 0.196706, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.005636275072))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0], active=false),

    Correlation("syst", [1.0])
]
#=======================================================================#
