return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
    config = function()
      require('noice').setup {
        -- most of this is default just row = 95% to put cmd line down the bottom
        presets = {
          command_palette = {
            views = {
              cmdline_popup = {
                position = {
                  row = '95%',
                  col = '50%',
                },
                size = {
                  min_width = 60,
                  width = 'auto',
                  height = 'auto',
                },
              },
              cmdline_popupmenu = {
                relative = 'editor',
                position = {
                  row = 6,
                  col = '50%',
                },
                size = {
                  width = 60,
                  height = 'auto',
                  max_height = 15,
                },
                border = {
                  style = 'rounded',
                  padding = { 0, 1 },
                },
                win_options = {
                  winhighlight = { Normal = 'Normal', FloatBorder = 'NoiceCmdlinePopupBorder' },
                },
              },
            },
          },
        },
      }
    end,
  },
}
