mem: cName cEmail wType score fail sRank date
0 score! 0 fail! 0 sRank! 0 date! 0 wType!
"a" cName

@: replies pos neg
pos: Continue Yes Yea Yeah Ready
neg: No End Not_Ready
replies: :pos :neg

: rankCalc ( n n "s" "s" -- "s") { score fail sRank wType }
fail 0 > score 50 < sRank "C" same? or or -> "Fail" |
score 69 < -> "C" |
score 84 < -> "B" |
score 85 > wType "CITIZEN_/_PR" same? and -> "A*" |
otherwise "A" |.
;

include ./topics/button.m
include ./topics/dateSelect.m
include ./topics/introduction.m
include ./topics/workingExperience.m
include ./topics/experiences.m
include ./topics/personalInfo.m

Q: $replies.@pos
A: Lets get started! I would need more information on you. What is your name?
K: name
--
