#use "src/core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 92; capacity = 79; latency = 12; risk = 23; weight = 8 };;
expect (score signal_case_1 = 139);;
expect (classify signal_case_1 = "review");;
let signal_case_2 = { demand = 69; capacity = 70; latency = 24; risk = 22; weight = 10 };;
expect (score signal_case_2 = 44);;
expect (classify signal_case_2 = "review");;
let signal_case_3 = { demand = 83; capacity = 71; latency = 27; risk = 14; weight = 10 };;
expect (score signal_case_3 = 93);;
expect (classify signal_case_3 = "review");;

#use "src/review.ml";;
let domain_review = { signal = 59; slack = 49; drag = 11; confidence = 89 };;
expect (review_score domain_review = 223);;
expect (review_lane domain_review = "ship");;
