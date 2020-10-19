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

\ Previous question must give key: SalaryQuestion
room: SalaryQuestion

\ Q: _ \ Process prev answer
\ A: What is your monthly salary expectation in SGD ${"$5000-$7000" AnswerButton} ${"$7000-$10000" AnswerButton} ${"$10000-$12000" AnswerButton}?
\ K: $back StartDateQuestion
\ --
end-room

\ Previous question must give key: StartdateQuestion
room: StartDateQuestion

Q: $x.@salaryRanges
A: $x salaries sRank! % If offered the position what is your availability to start ${ dateSelector }?
L: ${ cName } ${ cEmail} ${ score fail sRank wType rankCalc } ${ score } ${ wType } ${ date }
K: $back End    \ Implement next key

--
end-room
