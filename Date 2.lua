local function run(msg, matches)
  local url , res = http.request('http://probot.000webhostapp.com/api/time.php/')
  if res ~= 200 then return tdcli.sendMessage(msg.chat_id_, msg.id_, 1, '<b>No Connection</b>', 1, 'html') end
  local jdat = json:decode(url)
   if jdat.L == "0" then
   jdat_L = '���'
   elseif jdat.L == "1" then
   jdat_L = '���'
   end
  local text = '??���� : <code>'..jdat.Stime..'</code>\n\n??����� : <code>'..jdat.FAdate..'</code>\n\n??����� ��� ��� ��� ���� : <code>'..jdat.t..'</code>\n\n??��� ��� �� ���� : <code>'..jdat.w..'</code>\n\n??����� � ��� ���� �� ��� : <code>'..jdat.W..'</code>\n\n??��� ������� ��� : <code>'..jdat.p..'</code>\n\n?����� � ��� �� ��� : <code>'..jdat.n..'</code>\n\n??��� ��� : <code>'..jdat.f..'</code>\n\n??����� � ��� �� ��� : <code>'..jdat.b..'</code>\n\n??����� ��� ��� ����� �� ��� : <code>'..jdat.z..'</code>\n\n??�� �� ����� �� ��� : <code>'..jdat.K..'</code>\n\n??����� ��� ��� ��������� �� ��� : <code>'..jdat.Q..'</code>\n\n??�� �� ��������� �� ��� : <code>'..jdat.k..'</code>\n\n??��� ������ ��� : <code>'..jdat.q..'</code>\n\n??����� � ��� ���� ���� : <code>'..jdat.C..'</code>\n\n??��� ����� : <code>'..jdat_L..'</code>\n\n����� � ����� ����� ��� : <code>'..jdat.e..'</code>\n\n??������ ���� ����� : <code>'..jdat.P..'</code>\n\n??������ ���� ����� �� ����� : <code>'..jdat.A..'</code>\n'
  tdcli.sendMessage(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
-- By @GODILOVEYOUME2
return {
  patterns ={
"^[!/#]([Tt][Ii][Mm][Ee])$"
 },
  run = run
}