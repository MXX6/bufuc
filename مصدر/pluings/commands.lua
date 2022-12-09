--[[
~> DEV JABWA ⇿ @JABWA
]] 
function cmd(msg)
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
if text == 'الاوامر' then
if not msg.Admin then
return send(msg_chat_id,msg_id,'*\n✪ عذرآ الامر يخص〘 '..Controller_Num(7)..' 〙*',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n✪ عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n✪ عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✪ الادمنيه ❇️', data = senderr..'/help1'}, {text = '✪ المطورين 🔧', data = senderr..'/help2'}, 
},
{
{text = '✪ المطور الاساسي 🤖', data = senderr..'/Basic'},
},
{
{text = '✪ الثانوين 🛡️', data = senderr..'/help3'}, {text = '✪ مالك الجروب 🔮', data = senderr..'/helpp6'}, 
},
{
{text = '✪ التسليه 🎭', data = senderr..'/comfort'},{text = '✪ الاضافه والمسح 🌐', data = senderr..'/swipe'}, 
},
{
{text = '✪ القفل والفتح ⚙️', data = senderr..'/NoNextSeting'}, {text = '✪ التعطيل والتفعيل 📢', data = senderr..'/listallAddorrem'}, 
},
{
{text = '✶ اضغط لتنصيب بوتك 💗ˣ.', url = "https://t.me/Lion_makar_bot"}
},
}
}
return send(msg_chat_id,msg_id, [[*
▱▰▱▰▱▰▱▰▱▰▱▰▱▰
✪ مرحبا اليك قائمة اوامر البوت 🤖
❖ ─ ✦ ─『✙ 𝐿𝑖𝑂𝑛  ✙』─ ✦ ─ ❖
✪ قم باختيار الاوامر من الازرار 🔰
▱▰▱▰▱▰▱▰▱▰▱▰▱▰
*]],"md",false, false, false, false, reply_markup)
end

end
return {Fast = cmd}