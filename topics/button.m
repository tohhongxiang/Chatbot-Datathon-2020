\
\ @author: ntubot044
\ @date: 14 Oct 2020
\
\ fUNCTION TO CREATE BUTTON FROM TEXT
\

: AnswerButton ( "s" -- "s" )
  q{ 
    padding: 0.75em 2em;
    border-radius: 8px;
    display: block;
    color: #fff;
    background-color: #4fc08d;
    transition: all 0.15s ease;
    box-sizing: border-box;
    border: 1px solid #4fc08d;
    opacity: 0.9;
    font-size: 18px;
    font-weight: bold;
    box-shadow: 3px 3px 4px 2px rgba(0, 0, 0, 0.1);
    outline: none;
  }q  (button) ;