\ Introduction chatbot flow

@: replies
replies: Continue End \ Is handled throughout duration of bot since this is not a room

Q: $replies.@replies
A: $replies :Continue same? % Welcome! I would need more information on you. What is your name?
A: $startChat :End same? % Byeee
K: name \ Key to "name" room
--


room: name

Q: $yourname
A: Thank you $yourname. Could you also provide us with your email address?
K: $back email \ Key to "email" room
--

end-room



room: email

Q: $mail
A: Thank you. Before we begin, we would like to tell you more about what we do at Keppel. Would you be keen to find out more? ${ "Yes" Answerbutton } ${ "No" Answerbutton }
K: $back findoutmore \ Key to "findoutmore" room
--

end-room



room: findoutmore

@: findoutmore
findoutmore: Yes No

Q: $findoutmore.@findoutmore
A: $findoutmore :Yes same? % Watch the video to learn more about Keppel! ${ "nVoFLM_BDgs" 100 200 (utube) }
A: $findoutmore :No same? % Great! Lets get started!
\ K:  Key to workingExperience

--

end-room
