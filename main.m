\
\ @author: ntubot043
\ @date: 6 Oct 2020
\
\ A brief description of this program.
\


\ Main for Keppel Test

terra/chat
terra/chat/app

include ./topics/Entry.m

idk: I'm not sure what you mean. Please answer the question

: test 
    \ A* Condition
    "Yes" answer . cr
    "John" answer . cr
    "John@gmail.com" answer . cr
    "No" answer . cr
    "Yes" answer . cr
    "Citizen / PR" answer . cr
    "1 1 1 1" answer . cr
    "Over 8 years" answer . cr
    "Over 6 years" answer . cr
    "$7000-$10000" answer . cr
    "2020-10-21" answer . cr
;

: publish 
  \ What your bot says at first. 
  init: Hi there, thank you for your interest in the RPA Technical architect position here at Keppel. <br><br> For your information, I will be asking you some questions about your experience and details about yourself. This would take approximately 15 minutes. Are you ready?
  
  \ The background image. Should be tileable/repeatable.
  background: https://live.staticflickr.com/4135/4915115384_ca7b1df603_b.jpg
  
  \ Image of the avatar to use. 
  avatar: https://images.pexels.com/photos/3394658/pexels-photo-3394658.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260

  \ These will be visible when you share the link to your bot. 
  title: Chatbot for Keppel
  \ IMPORTANT!! Remember to insert your username.
  url: https://app.smojo.org/ntubot043/keppel
  description: KeppelTest
  thumbnail: https://images.pexels.com/photos/3394658/pexels-photo-3394658.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260
  
  \ name of your bot.
  \ The URL depends on this.
  publish: keppel
;



