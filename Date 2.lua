local function run(msg, matches)
  local url , res = http.request('http://probot.000webhostapp.com/api/time.php/')
  if res ~= 200 then return tdcli.sendMessage(msg.chat_id_, msg.id_, 1, '<b>No Connection</b>', 1, 'html') end
  local jdat = json:decode(url)
   if jdat.L == "0" then
   jdat_L = 'ÎíÑ'
   elseif jdat.L == "1" then
   jdat_L = 'Èáå'
   end
  local text = '??ÓÇÚÊ : <code>'..jdat.Stime..'</code>\n\n??ÊÇÑíÎ : <code>'..jdat.FAdate..'</code>\n\n??ÊÚÏÇÏ ÑæÒ åÇí ãÇå ÌÇÑí : <code>'..jdat.t..'</code>\n\n??ÚÏÏ ÑæÒ ÏÑ åİÊå : <code>'..jdat.w..'</code>\n\n??ÔãÇÑå í Çíä åİÊå ÏÑ ÓÇá : <code>'..jdat.W..'</code>\n\n??äÇã ÈÇÓÊÇäí ãÇå : <code>'..jdat.p..'</code>\n\n?ÔãÇÑå í ãÇå ÇÒ ÓÇá : <code>'..jdat.n..'</code>\n\n??äÇã İÕá : <code>'..jdat.f..'</code>\n\n??ÔãÇÑå í İÕá ÇÒ ÓÇá : <code>'..jdat.b..'</code>\n\n??ÊÚÏÇÏ ÑæÒ åÇí ĞÔÊå ÇÒ ÓÇá : <code>'..jdat.z..'</code>\n\n??ÏÑ ÕÏ ĞÔÊå ÇÒ ÓÇá : <code>'..jdat.K..'</code>\n\n??ÊÚÏÇÏ ÑæÒ åÇí ÈÇŞíãÇäÏå ÇÒ ÓÇá : <code>'..jdat.Q..'</code>\n\n??ÏÑ ÕÏ ÈÇŞíãÇäÏå ÇÒ ÓÇá : <code>'..jdat.k..'</code>\n\n??äÇã ÍíæÇäí ÓÇá : <code>'..jdat.q..'</code>\n\n??ÔãÇÑå í ŞÑä åÌÑí ÔãÓí : <code>'..jdat.C..'</code>\n\n??ÓÇá ˜ÈíÓå : <code>'..jdat_L..'</code>\n\nãäØŞå í ÒãÇäí ÊäÙíã ÔÏå : <code>'..jdat.e..'</code>\n\n??ÇÎÊáÇİ ÓÇÚÊ ÌåÇäí : <code>'..jdat.P..'</code>\n\n??ÇÎÊáÇİ ÓÇÚÊ ÌåÇäí Èå ËÇäíå : <code>'..jdat.A..'</code>\n'
  tdcli.sendMessage(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
-- By @GODILOVEYOUME2
return {
  patterns ={
"^[!/#]([Tt][Ii][Mm][Ee])$"
 },
  run = run
}