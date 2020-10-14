\
\ @author: ntubot044
\ @date: 14 Oct 2020
\
\ Working Experience Questions
\
mem: counts

@: replies
replies: Yes No

@: workingRights
workingRights: Citizen_/_PR EP_/_SPass Others

init: Type "start" to begin

Q: start
A: Do you have authorized working rights in Singapore? ${ "Yes" AnswerButton } ${ "No" AnswerButton }
--

Q: $replies.@replies
A: $replies :No same? % Thanks bye
A: Please choose your current working rights ${ "Citizen / PR" AnswerButton } ${ "EP / SPass" AnswerButton } ${ "Others" AnswerButton }
K: +counts %
--

Q: $workingRight.@workingRights
A: $workingRight :Others same? % Please tell me your working type
A: You should be fine working here
K: +counts %
--

Q: $_
A: counts 1 >= % Your working right is $_
A: I do not understand what you said
--



