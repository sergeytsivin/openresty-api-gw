local remote_user = ngx.var.remote_user
local remote_addr = ngx.var.remote_addr
local uri = ngx.var.uri

if remote_user and string.match(remote_user, "mike") and
   string.match(remote_addr, "127.0.0.1") and 
   string.match(uri, "[%a%d_%-.]+") then
  -- we are ok here!
  ngx.say('You are authenticated!')
else
  ngx.exit(ngx.HTTP_FORBIDDEN)
end