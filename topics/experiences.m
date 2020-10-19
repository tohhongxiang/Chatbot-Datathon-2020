\
\ @author: ntubot043
\ @date: 14 Oct 2020
\
\ Experience
\

include ./topics/numbers.m
include ./topics/button.m

\ Mems should be declared in main
\ mem: score fail

@: answerCrit3 answerCrit4
answerCrit3: None 0_-_4_Years 5_-_7_Years Over_8_Years
answerCrit4: None 0_-_2_Years 3_-_5_Years Over_6_Years
assoc: expWeight3 yearWeight3 yearFail3 yearWeight4 yearFail4

{{
    "Java" 5
    "Python" 5
    "NET" 5
    "cSharp" 5
}} +expWeight3

{{
    :None 0
    :0_-_4_Years 10
    :5_-_7_Years 25
    :Over_8_Years 40
}} +yearWeight3

{{
    :None 1
    :0_-_4_Years 0
    :5_-_7_Years 0
    :Over_8_Years 0
}} +yearFail3

{{
    :None 0
    :0_-_2_Years 10
    :3_-_5_Years 25
    :Over_6_Years 40
}} +yearWeight4

{{
    :None 1
    :0_-_2_Years 0
    :3_-_5_Years 0
    :Over_6_Years 0
}} +yearFail4

: getScore ( "s" "s" "s" "s" -- n) { java python net csharp }
score java int 1 = IF "Java" expWeight3 + THEN python int 1 = IF "Python" expWeight3 + THEN net int 1 = IF "NET" expWeight3 + THEN csharp int 1 = IF "cSharp" expWeight3 + THEN
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

: t3 ( -- "s" )
"How many years of experience do you have in RPA? <br> "
;

: t4 ( -- "s" )
"Do you have experience in UIPath Platform? <br>"
;

: t5 ( -- "s" )
"What is your monthly salary expectation in SGD? <br>"
;


\ Score reset (for testing)
\ 0 fail! 0 score!

room: criteria2

Q: $a $b $c $d
A: $a $b $c $d getScore score! % ${ t3 } ${ "None" AnswerButton } ${ "0 - 4 Years" AnswerButton } ${ "5 - 7 Years" AnswerButton } ${ "Over 8 Years" AnswerButton }
K: $back criteria3
-- 

end-room

room: criteria3

Q: $answerCrit3.@answerCrit3
K: score $answerCrit3 yearWeight3 + score! fail $answerCrit3 yearFail3 + fail! DROP % $back criteria4
A: ${ t4 } ${ "None" AnswerButton } ${ "0 - 2 Years" AnswerButton } ${ "3 - 5 Years" AnswerButton } ${ "Over 6 Years" AnswerButton }
--

end-room

room: criteria4

Q: $answerCrit4.@answerCrit4
K: score $answerCrit4 yearWeight4 + score! fail $answerCrit4 yearFail4 + fail! DROP % $back StartDateQuestion
\ Add contiuation to criteria 5 here
A: ${ t5 } ${ "$5000-$7000" AnswerButton } ${ "$7000-$10000" AnswerButton } ${ "$10000-$12000" AnswerButton }
--

end-room


\ For Testing
\ Q: check
\ A: score ${ score } fail ${ fail }
\ --

\ Q: $x
\ A: ${ t2 } ${ multi2 } <--- Add this to previous room answer before transitioning
\ K: $back criteria2
\ --



