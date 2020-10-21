\
\ @author: ntubot044
\ @date: 14 Oct 2020
\
\ Working Experience Questions
\
\ @: replies
\ replies: Yes No

@: workingRights
workingRights: Citizen_/_PR EP_/_SPass Others

\ init: Type "start" to begin

\ Q: start
\ A: Do you have authorized working rights in Singapore? ${ "Yes" AnswerButton } ${ "No" AnswerButton }
\ K: workingExperience
\ --

: t2 ( -- "s" )
"What is your experience in programming? <br> "
;

: multi2 ( -- "s" )
q{
    <style>
    input#sub1{
        padding: 0.75em 2em;
        border-radius: 2em;
        display: inline-block;
        color: #fff;
        background-color: #4fc08d;
        transition: all 0.15s ease;
        box-sizing: border-box;
        border: 1px solid #4fc08d;
        opacity: 0.9;
        font-size: 24px;
        box-shadow: 3px 3px 4px 2px rgba(0, 0, 0, 0.1);
        outline: none;
    }
    </style>
    <script>
        function process2(){
            var count = 4;
            var c = "";
            for(var i=0;i<count;i++){
                c += (document.getElementById("c2Option"+(i+1).toString()).checked ? "1" : "0" ) + " ";
            }
            document.getElementById("question").value = c;
        }
    </script>

    <input type="checkbox" id="c2Option1">
    <label>Java</label>
    <br>
    <input type="checkbox" id="c2Option2">
    <label>Python</label>
    <br>
    <input type="checkbox" id="c2Option3">
    <label>.NET</label>
    <br>
    <input type="checkbox" id="c2Option4">
    <label>C#</label>
    <br>
    <input onclick="process2(); this.form.submit();" type="button" id="sub1" value="submit">
}q
;

room: workingExperience

Q: $replies.@replies
A: $replies :No same? % ${ t2 } ${ multi2 }
K: $replies :No same? % fail 1 + fail! "None" wType! $back criteria2
A: Please choose your current working rights ${ "Citizen / PR" AnswerButton } ${ "EP / SPass" AnswerButton } ${ "Others" AnswerButton }
--

Q: $workingRight.@workingRights
A: $workingRight :Others same? % Please tell me your working type
A: $workingRight wType! % You should be fine working here. <br> ${ t2 } ${ multi2 }
K: $back criteria2
--

Q: $_
A: Your working right is $_. <br> ${ t2 } ${ multi2 }
K: $_ wType! % $back criteria2
--

end-room

\ Q: $_
\ A: Please type start to begin collecting working experience information
\ --
