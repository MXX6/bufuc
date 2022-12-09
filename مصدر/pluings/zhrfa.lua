--[[
~> DEV JABWA ⇿ @JABWA
]] 
function zhrfa(msg)
text = nil
if msg and msg.content and msg.content.text then
text = msg.content.text.text
end
msg_chat_id = msg.chat_id
msg_id = msg.id
if tonumber(msg.sender_id.user_id) == tonumber(Fast) then
return false
end
if text then
local neww = Redis:get(Fast.."Get:Reides:Commands:Group"..msg.chat_id..":"..text)
if neww then
text = neww or text
end
end
if text == "زخرفه" or text == "زخرفة" then
local ban = bot.getUser(senderr)
local Name = '['..ban.first_name..'](tg://user?id='..ban.id..')' or 'لا يوجد اسم'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '↰ زخرفه عادي 🖌️', data = senderr..'/normal_zk'},},
{{text = '↰ زخرفه انلاين 🐣', data = senderr..'/inline_zk'},},
{{text = '↰ زخرفه جاهزه ✒️', data = senderr..'/decor'},},
}
}
return send(msg_chat_id,msg_id,"*مرحبا ⇿* "..Name.." 👋\n* ✪ اختار نوع الزخرفه الان*","md",false ,false ,false ,false ,reply_markup) 
end
if text and text:match("%a") and Redis:get(Fast..msg_chat_id..senderr.."zkrf:") == "zeng" then
Redis:del(Fast..msg_chat_id..senderr.."zkrf:")
Redis:set(Fast..msg_chat_id..senderr.."zkrf:text", text)
local api = https.request("https://ayad-12.xyz/anubis/zkhrfa.php?text="..URL.escape(text))
local zkrf = JSON.decode(api)
local inline_anubis = {data = {}}
for k,v in pairs(zkrf.anubis) do
inline_anubis[k] = {{text = v , data = senderr.."/az"..k}}
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = inline_anubis
}
return send(msg_chat_id,msg_id, "✪ اختࢪ الزخࢪفھـۃ التي تࢪيدها\n ▽ "..#zkrf['anubis'],"html",false,false,false,false,reply_markup)
end
if text and not text:match("%a") and Redis:get(Fast..msg_chat_id..senderr.."zkrf:") == "zar" then
Redis:del(Fast..msg_chat_id..senderr.."zkrf:")
Redis:set(Fast..msg_chat_id..senderr.."zkrf:text", text)
local api = https.request("https://ayad-12.xyz/anubis/zkhrfa.php?text="..URL.escape(text))
local zkrf = JSON.decode(api)
local inline_anubis = {data = {}}
for k,v in pairs(zkrf.anubis) do
inline_anubis[k] = {{text = v , data = senderr.."/az"..k}}
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = inline_anubis
}
return send(msg_chat_id,msg_id, "✪ اختࢪ الزخࢪفھـۃ التي تࢪيدها\n ▽","html",false,false,false,false,reply_markup)
end
if text == "استيراد زخرفه السورس" then 
if not msg.Asasy then
return send(msg_chat_id,msg_id,'*\n* ✪ هاذا الامر يخص'..Controller_Num(1)..' *',"md",true)
end
if Redis:get(Fast.."zk_deffult") then
return send(msg_chat_id,msg_id,'* ✪ تم استيراد قائمه الزخرفه مسبقا*',"md",true)
end
local zk_list = {
"###",
"𓂄𓆩###𓆪𓂁",
"𓆩⸤###⸥𓆪",
"𓆩###𓆪",
"ꔷ ### ’♥", 
"ꔷ ### ˝♥›.", 
"➹ ### 𓂄𓆩♥𓆪‌‌𓂁", 
"★⃝▷ ### ꗛ", 
"⋆⃟▷ ### ꕸ",
"⸢ ### ⸥",
"ꞏ ### ｢♥｣",
"⋆ ### ’🧸💕›",
" ᯓ 𓆩 ˹ ### ˼ 𓆪 𓆃",
"𓆩 ###ｌ➝ ˛⁽♥₎ 𓆪",
"𒅒 ✪!! ###ᵛ͢ᵎᵖ 𒅒",
"˚₊· ͟͟͞͞➳❥❬ ### ❭ ✪ °",
"ᥫ᭡ 𖥻 ### ۰ ໋࣭ヾ",
"- َ### 𓍲 🎀.",
"#;ُِ ### .𓇼",
}
for i = 1 , #zk_list , 1 do
Redis:sadd(Fast.."zk_list:", zk_list[i])
end
Redis:set(Fast.."zk_deffult", true)
return send(msg_chat_id,msg_id,"* ✪ تم استيراد جميع الزخارف *","md",true)
end
if text == "تفعيل رموز الزخرفه" then 
if not msg.Asasy then
return send(msg_chat_id,msg_id,'*\n* ✪ هاذا الامر يخص'..Controller_Num(1)..' *',"md",true)
end
if Redis:get(Fast.."zk_deffult") then
return send(msg_chat_id,msg_id,'* ✪ تم تفعيل رموز الزخرفه مسبقا*',"md",true)
end
local zk_list = {
"###",
"𓂄𓆩###𓆪𓂁",
"𓆩⸤###⸥𓆪",
"𓆩###𓆪",
"ꔷ ### ’♥", 
"ꔷ ### ˝♥›.", 
"➹ ### 𓂄𓆩♥𓆪‌‌𓂁", 
"★⃝▷ ### ꗛ", 
"⋆⃟▷ ### ꕸ",
"⸢ ### ⸥",
"ꞏ ### ｢♥｣",
"⋆ ### ’🧸💕›",
" ᯓ 𓆩 ˹ ### ˼ 𓆪 𓆃",
"𓆩 ###ｌ➝ ˛⁽♥₎ 𓆪",
"𒅒 ✪!! ###ᵛ͢ᵎᵖ 𒅒",
"˚₊· ͟͟͞͞➳❥❬ ### ❭ ✪ °",
"ᥫ᭡ 𖥻 ### ۰ ໋࣭ヾ",
"- َ### 𓍲 🎀.",
"#;ُِ ### .𓇼",
}
for i = 1 , #zk_list , 1 do
Redis:sadd(Fast.."zk_list:", zk_list[i])
end
Redis:set(Fast.."zk_deffult", true)
return send(msg_chat_id,msg_id,"* ✪ تم تفعيل رموز الزخرفه بنجاح ✅ *","md",true)
end
if text == "مسح الزخارف" then 
if not msg.Asasy then
return send(msg_chat_id,msg_id,'*\n* ✪ هاذا الامر يخص'..Controller_Num(1)..' *',"md",true)
end
if not Redis:get(Fast.."zk_deffult") then
return send(msg_chat_id,msg_id,'* ✪ لايوجد زخارف اصلا*',"md",true)
end
Redis:del(Fast.."zk_deffult")
return send(msg_chat_id,msg_id,"* ✪ تم حذف جميع الزخارف *","md",true)
end
if text == "اضف زخرفه" then 
if not msg.Asasy then
return send(msg_chat_id,msg_id,'*\n* ✪ هاذا الامر يخص'..Controller_Num(1)..' *',"md",true)
end
Redis:set(Fast.."add_zk"..senderr, true)
return send(msg_chat_id,msg_id,"* ✪ ارسل الزخرفه الان بهذا الشكل ⇞⇟*\n▷ 𓂄𓆩###𓆪𓂁 \n ✪ هاذه مثال حبيبي جرب اسم *","md",true) 
end
if text and Redis:get(Fast.."add_zk"..senderr) then
if not msg.Asasy then
return send(msg_chat_id,msg_id,'*\n* ✪ هاذا الامر يخص'..Controller_Num(1)..' *',"md",true)
end
if not text:match("(.*)###(.*)") then
return send(msg_chat_id,msg_id,"* ✪ عذرآ لم يتم استقبال الزخرفه \n▷ 𓂄𓆩###𓆪𓂁 *","md",true)
end
Redis:del(Fast.."add_zk"..senderr)
Redis:sadd(Fast.."zk_list:", text)
return send(msg_chat_id,msg_id,"* ✪ تم حفظ الزخرفه بنجاح *","md",true) 
end
if text == "حذف زخرفه" or text == "مسح زخرفه" then 
if not msg.Asasy then
return send(msg_chat_id,msg_id,'*\n* ✪ هاذا الامر يخص'..Controller_Num(1)..' *',"md",true)
end
local zk_list = Redis:smembers(Fast.."zk_list:")
local inline_Jabwa = {data = {}}
for k,v in pairs(zk_list) do
inline_Jabwa[k] = {{text = v , data = senderr.."/delz"..k}}
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = inline_Jabwa
}
send(msg_chat_id,msg_id,"* ✪ اضغط علي الزخرفه لحذفها *", "md",true,false,false,false,reply_markup)
end

end
return {Fast = zhrfa}