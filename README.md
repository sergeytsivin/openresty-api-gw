# Openresty triage

Examples from https://blog.cloud66.com/supercharging-nginx-with-lua-part-2/

1. http://127.0.0.1:8080/echo/ generate content via echo directive
2. http://127.0.0.1:8080/lua/ generate content via ngx.say()
3. http://127.0.0.1:8080/example2/ generate content via content_by_lua_file directive
4. http://127.0.0.1:8080/example3/ authenticate based on remote_addr and remote_user