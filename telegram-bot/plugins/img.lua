-- BY: Telegram:@TiagoDanin -:- Twitter:@_TiagoEDGE

function run(msg, matches)
  local input = matches[1]
  local receiver = get_receiver(msg)

  local url = 'https://www.googleapis.com/customsearch/v1?'
  url = url .. '&key=AIzaSyBMEKEQbWR8OtQ_J1AvwbROHtsGcY2789Q' -- KEY Get https://console.developers.google.com/apis/credentials
  url = url .. '&cx=004410313735271290155:07ecgnjuq9k' -- CX Get https://cse.google.com/cse
  url = url .. '&searchType=image&imgSize=xlarge&alt=json&num=5&start=1'
  url = url .. '&q=' .. (URL.escape(input) or "")

  local res, rest = https.request(url)
  if rest ~=200 then return "ERRO URL" end

  local jdat = json:decode(res)
  local numb = jdat.queries.request[1].count or '1'
  local random = math.random(1, numb)
  local url_img = jdat.items[numb].link

  send_photo_from_url(receiver, url_img)
  -- Send MSG
  return nil
end

--Run
return {
  description = "Img google",
  usage = "/img",
  patterns = {
    "^/[Ii]mg$",
    "^/[Ii]mg (.*)$",
  },
  run = run
}