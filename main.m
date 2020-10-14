terra/chat
terra/chat/app

include ./topics/button.m
include ./topics/workingExperience.m

idk: I don't understand the question.

: test 
  \ NOTE: Add your questions to test here.
  "Yes" answer . cr
  "No" answer . cr
  "Citizen / PR" answer . cr
  "Others" answer . cr
  "asdf" answer . cr
;

: publish 
  \ The background image. Should be tileable/repeatable.
  background: https://i.redd.it/ptop9lupzcq31.jpg
  
  \ Image of the avatar to use. 
  avatar: https://pm1.narvii.com/7032/4f274d2256b6dad98d82abb076be6b813a942e05r1-1079-1296v2_hq.jpg

  \ These will be visible when you share the link to your bot. 
  title: https://www.youtube.com/watch?v=dQw4w9WgXcQ
  \ IMPORTANT!! Remember to insert your username.
  url: https://app.smojo.org/ntubot044/bot
  description: ไม่ทราบว่าคุณเล่นอะไรอ่ะครับ น้องผมเป็นโรคหัวใจมาเปิดดูกระทู้นี้ตอนนี้ ส่ง ร.พ. ไปแล้วครับ พ่อแม่รีบหามไปเมื่อครู่ใหญ่ๆ คือตอนที่เค้าล้มจากเก้าอี้พวกผมตกใจ พอส่ง ร.พ.ไป มาเห็นหน้าคอมที่ก่อนหน้านี้น้องเล่นอยู่ดีๆ ในหน้าคอมเปิด เกมที่คุณเอามาลงค้างไว้ แล้วก็หน้ากระทุ้ของคุณอยากบอกว่าจะเล่นอะไรคิดถึงคนอื่นด้วยนะครับไม่ใช่จะเอาแต่สนุก ตอนนี้น้องผมเพิ่งไปร.พ. กะพ่อและแม่ ไม่เป็นอันต้องทำงานพอดีทำอะไรคิดหน้าคิดหลังก่อนนะ และจำไว้เป็นอุทาหรณ์เลยถ้าร้องผมเป็นอะไรไปผมไม่ยอมแน่ๆ ผมแจ้งสาเหตุที่น้องผมโรคหัวใจกำเริบให้กับ ร.พ.ไปแล้ว เค้าก็บอกว่าเคยมีพวกที่แกล้งเอารูปผีที่จะโผล่ๆมาใน window เคยผู้ป่วยโรคหัวใจมีคนเข้า ร.พ.เพราะเคสนี้มา 3-4 คนแล้ว
  thumbnail: https://pm1.narvii.com/7032/4f274d2256b6dad98d82abb076be6b813a942e05r1-1079-1296v2_hq.jpg
  
  \ name of your bot.
  \ The URL depends on this.
  publish: bot  
;







