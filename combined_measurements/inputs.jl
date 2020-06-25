#============= Observables =============================================#
function obs345(params)
    0.13817735729865072.+0.3065209907315471*params.p1.-0.24242129914645835*params.p2.-0.30636976693619483*params.p1.*params.p2.+0.17932842222372164*params.p1.^2 .+0.14765321753216887*params.p2.^2
end

function obs346(params)
    0.19925838519194095.+0.4382343502945576*params.p1.-0.34120253774348663*params.p2.-0.4336657521025895*params.p1.*params.p2.+0.25570647207129416*params.p1.^2 .+0.20751284255438407*params.p2.^2
end

function obs347(params)
    0.24169623622278144.+0.5324607110911943*params.p1.-0.4144061986734695*params.p2.-0.5279067538132275*params.p1.*params.p2.+0.31128425604263765*params.p1.^2 .+0.25266172748564036*params.p2.^2
end

function obs348(params)
    0.27546063449312597.+0.6107098637699027*params.p1.-0.47579730634867845*params.p2.-0.6061228728822554*params.p1.*params.p2.+0.35723669501330424*params.p1.^2 .+0.2903644677792675*params.p2.^2
end

function obs349(params)
    0.29796268513535684.+0.6642643280073814*params.p1.-0.5261073094023664*params.p2.-0.6691207492774258*params.p1.*params.p2.+0.39111611234007365*params.p1.^2 .+0.32289579629971576*params.p2.^2
end

observables = [
    Observable("Obs345", obs345),
    Observable("Obs346", obs346),
    Observable("Obs347", obs347),
    Observable("Obs348", obs348),
    Observable("Obs349", obs349),
]

#============= Measurements ============================================#
measurements_only_345 = [
    Measurement("Meas1","Obs345", 0.1364834, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.004515994853), active = true),
    Measurement("Meas2","Obs346", 0.19639, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.005626361032), active = false),
    Measurement("Meas3","Obs347", 0.238591, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.009212007722), active = false),
    Measurement("Meas4","Obs348", 0.273931, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.01033701887), active = false),
    Measurement("Meas4","Obs349", 0.293804, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.0109833271), active = false)
]
measurements_only_346 = [
    Measurement("Meas1","Obs345", 0.1364834, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.004515994853), active = false),
    Measurement("Meas2","Obs346", 0.19639, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.005626361032), active = true),
    Measurement("Meas3","Obs347", 0.238591, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.009212007722), active = false),
    Measurement("Meas4","Obs348", 0.273931, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.01033701887), active = false),
    Measurement("Meas4","Obs349", 0.293804, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.0109833271), active = false)
]
measurements_only_347 = [
    Measurement("Meas1","Obs345", 0.1364834, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.004515994853), active = false),
    Measurement("Meas2","Obs346", 0.19639, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.005626361032), active = false),
    Measurement("Meas3","Obs347", 0.238591, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.009212007722), active = true),
    Measurement("Meas4","Obs348", 0.273931, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.01033701887), active = false),
    Measurement("Meas4","Obs349", 0.293804, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.0109833271), active = false)
]
measurements_only_348 = [
    Measurement("Meas1","Obs345", 0.1364834, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.004515994853), active = false),
    Measurement("Meas2","Obs346", 0.19639, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.005626361032), active = false),
    Measurement("Meas3","Obs347", 0.238591, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.009212007722), active = false),
    Measurement("Meas4","Obs348", 0.273931, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.01033701887), active = true),
    Measurement("Meas4","Obs349", 0.293804, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.0109833271), active = false)
]
measurements_only_349 = [
    Measurement("Meas1","Obs345", 0.1364834, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.004515994853), active = false),
    Measurement("Meas2","Obs346", 0.19639, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.005626361032), active = false),
    Measurement("Meas3","Obs347", 0.238591, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.009212007722), active = false),
    Measurement("Meas4","Obs348", 0.273931, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.01033701887), active = false),
    Measurement("Meas4","Obs349", 0.293804, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.0109833271), active = true)
]
measurements_combined = [
    Measurement("Meas1","Obs345", 0.1364834, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.004515994853), active = true),
    Measurement("Meas2","Obs346", 0.19639, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.005626361032), active = true),
    Measurement("Meas3","Obs347", 0.238591, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.009212007722), active = true),
    Measurement("Meas4","Obs348", 0.273931, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.01033701887), active = true),
    Measurement("Meas4","Obs349", 0.293804, Uncertainties("stat"=>0.0,
                                                    "syst"=>0.0109833271), active = true)
]

#============= Correlations ============================================#
correlations = [
    Correlation("stat", [1.0 0.0 0.0 0.0 0.0
                         0.0 1.0 0.0 0.0 0.0
                         0.0 0.0 1.0 0.0 0.0
                         0.0 0.0 0.0 1.0 0.0
                         0.0 0.0 0.0 0.0 1.0], active=false),

    Correlation("syst", [1.0 0.0 0.0 0.0 0.0
                         0.0 1.0 0.0 0.0 0.0
                         0.0 0.0 1.0 0.0 0.0
                         0.0 0.0 0.0 1.0 0.0 
                         0.0 0.0 0.0 0.0 1.0])
]
#=======================================================================#
