# Openresty triage

Run as:

```
docker-compose up --build
```

## Examples from https://blog.cloud66.com/supercharging-nginx-with-lua-part-2/

1. http://127.0.0.1:8080/echo/ generate content via echo directive
2. http://127.0.0.1:8080/lua/ generate content via ngx.say()
3. http://127.0.0.1:8080/example2/ generate content via content_by_lua_file directive
4. http://127.0.0.1:8080/example3/ authenticate based on remote_addr and remote_user
5. http://127.0.0.1:8080/time_cache/ demonstrate working with lua modules

## Using ngx.location.capture to issue a subrequest

http://127.0.0.1:8080/check_auth 

First goes to https://httpbin.org/uuid to get an UUID, parses the JSON body and then passes that UUID in the X-Rbc-User-Id header to the upstream. 

