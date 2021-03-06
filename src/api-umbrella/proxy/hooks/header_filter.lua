local error_handler = require "api-umbrella.proxy.error_handler"
local rewrite_response = require "api-umbrella.proxy.middleware.rewrite_response"

local settings = ngx.ctx.settings

-- Perform any response rewriting.
local err = rewrite_response(settings)
if err then
  return error_handler(err, settings)
end
