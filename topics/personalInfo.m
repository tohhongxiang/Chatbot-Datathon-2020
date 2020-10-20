\
\ @author: ntubot045
\ @date: 14 Oct 2020
\
\ A brief description of this program.
\

@: salaryRanges
salaryRanges: $5000-$7000 $7000-$10000 $10000-$12000

assoc: salaries

{{
    "$5000-$7000"   "A"
    "$7000-$10000"  "B"
    "$10000-$12000" "C"
}} +salaries


\ Previous question must give key: StartdateQuestion
room: StartDateQuestion

Q: $x.@salaryRanges
A: $x salaries sRank! % If offered the position what is your availability to start? ${ dateSelector }
K: $back End

--
end-room

room: End

Q: $x.@date
A: Thank you! This brings us to the end. We will be in touch if you are shortlisted for the next step.
L: ${ cName } ${ cEmail} ${ score fail sRank wType rankCalc } ${ score } ${ wType } ${ date }
K: $back Done

--
end-room

room: Done

Q: $_
A: Thank you! We are done with your application. Please reload the page to start a new submission.

--
end-room
