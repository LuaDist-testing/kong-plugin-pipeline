-- This file was automatically generated for the LuaDist project.

package = "kong-plugin-pipeline"
version = "0.1.0-1"
-- LuaDist source
source = {
  tag = "0.1.0-1",
  url = "git://github.com/LuaDist-testing/kong-plugin-pipeline.git"
}
-- Original source
-- source = {
--    url = "git://github.com/Kong-Study-Group/kong-plugin-pipeline",
--    tag = "0.1.0"
-- }
description = {
   summary = "Kong custom plugin for hiting the specified upstream target",
   homepage = "https://github.com/Kong-Study-Group/kong-plugin-pipeline",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.pipeline.handler"] = "kong/plugins/pipeline/handler.lua",
      ["kong.plugins.pipeline.schema"] = "kong/plugins/pipeline/schema.lua",
      ["spec.pipilne.01-access_spec"] = "spec/pipilne/01-access_spec.lua"
   }
}