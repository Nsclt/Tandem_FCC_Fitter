#============= Observables =============================================#
function obs500(params)
    0.5856725428736612.+1.3874273453381765*params.p1.-1.1040972122826611*params.p2.-1.9041631797850822*params.p1.*params.p2.+0.9116043422918848*params.p1.^2 .+1.1123180626218552*params.p2.^2
end

function obs365(params)
    0.5302851973992773.+1.2005882209960814*params.p1.-0.9517864405579839*params.p2.-1.25158602645301*params.p1.*params.p2.+0.6039532152039699*params.p1.^2 .+0.7313239388912209*params.p2.^2
end

function obs355(params)
    0.41381581771262893.+0.9391780087989758*params.p1.-0.7430293798969133*params.p2.-0.9588334888090653*params.p1.*params.p2.+0.46259424852186665*params.p1.^2 .+0.561102443142997*params.p2.^2
end

function obs345(params)
    0.13817735729865072.+0.3065209907315471*params.p1.-0.24242129914645835*params.p2.-0.30636976693619483*params.p1.*params.p2.+0.17932842222372164*params.p1.^2 .+0.14765321753216887*params.p2.^2
end


observables = [
    Observable("Obs500", obs500),
    Observable("Obs365", obs365),
    Observable("Obs355", obs355),
    Observable("Obs345", obs345)
]

#0.1369516 0.00134933380244
#============= Measurements ============================================#
measurements = [
    Measurement("Meas1","Obs500", 0.568093, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.014)),
    Measurement("Meas2","Obs365", 0.524105, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.014)),
    Measurement("Meas3","Obs355", 0.414594, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.014)),
    Measurement("Meas4","Obs345", 0.1364834, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.014))
]


#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0 0.0 0.0 0.0
                         0.0 1.0 0.0 0.0
                         0.0 0.0 1.0 0.0
                         0.0 0.0 0.0 1.0], active=false),

    Correlation("syst", [1.0 0.0 0.0 0.0
                         0.0 1.0 0.0 0.0
                         0.0 0.0 1.0 0.0
                         0.0 0.0 0.0 1.0])
]
#=======================================================================#
