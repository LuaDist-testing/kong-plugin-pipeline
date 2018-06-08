local BasePlugin = require "kong.plugins.base_plugin"
local log = require "kong.cmd.utils.log"
local json = require "cjson"

local PipelineHandler = BasePlugin:extend()

function PipelineHandler:new()
    PipelineHandler.super.new(self, "pipeline")
end

function PipelineHandler:access(config)
    PipelineHandler.super.access(self)

    local ctx = ngx.ctx
    if ctx.balancer_address.type == "name" then
        local tag, _  = ngx.re.match(ngx.var.host, "[a-z]+([0-9]+)")
        if tag then
            ctx.balancer_address.host = (tag[1] or "") .. ctx.balancer_address.host
            ctx.api.upstream_url = (tag[1] or "") .. ctx.api.upstream_url
        end
    end
end

function PipelineHandler:header_filter(conf)
    PipelineHandler.super.header_filter(self)
end

return PipelineHandler

