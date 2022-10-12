require("rizqirazkafi.set")
require("lualine").setup()
require("rizqirazkafi.remap")
require("rizqirazkafi.coc")
require("rizqirazkafi.treesitter")
-- require("rizqirazkafi.cmp")
-- require("rizqirazkafi.lsp")
require("flutter-tools").setup{
  ui = {
    border = "rounded",
    notification_style = "native",
  },
    decorations = {
    statusline = {
      app_version = false,
      device = false,
    }
  },
    widget_guides = {
    enabled = true,
  },
   lsp = {
    color = { -- show the derived colours for dart variables
      enabled = false, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
      background = false, -- highlight the background
      foreground = false, -- highlight the foreground
      virtual_text = true, -- show the highlight using virtual text
      virtual_text_str = "■", -- the virtual text character to highlight
    },
    --- OR you can specify a function to deactivate or change or control how the config is created
    capabilities = function(config)
      config.specificThingIDontWant = false
      return config
   end,
    -- see the link below for details on each option:
    -- https://github.com/dart-lang/sdk/blob/master/pkg/analysis_server/tool/lsp_spec/README.md#client-workspace-configuration
    settings = {
      showTodos = true,
      completeFunctionCalls = true,
      analysisExcludedFolders = {"<path-to-flutter-sdk-packages>"},
      renameFilesWithClasses = "prompt", -- "always"
      enableSnippets = true,
    }}
} -- use defaults


