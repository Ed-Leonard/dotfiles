return {
  { -- Autocompletion
    'saghen/blink.cmp',
    build = 'cargo +nightly build --release',
    event = 'VimEnter',
    version = '1.*',
    dependencies = {
      -- Snippet Engine
      {
        'L3MON4D3/LuaSnip',
        version = '2.*',
        dependencies = {},
        opts = {},
      },
      'folke/lazydev.nvim',
      'tailwind-tools',
      'onsails/lspkind-nvim',
    },
    --- @module 'blink.cmp'
    --- @type blink.cmp.Config
    opts = {
      keymap = {
        preset = 'default',
        ['<Up>'] = { 'select_prev', 'fallback' },
        ['<Down>'] = { 'select_next', 'fallback' },
        ['<Tab>'] = { 'accept', 'fallback' },
      },

      appearance = {
        nerd_font_variant = 'mono',
      },

      sources = {
        default = { 'lsp', 'path', 'snippets', 'lazydev' },
        providers = {
          lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
        },
      },

      snippets = { preset = 'luasnip' },

      fuzzy = { implementation = 'prefer_rust_with_warning' },

      signature = { enabled = true },

      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 10,
        },
      },

      cmdline = {
        menu = { autoshow = true },
      },

      function()
        return {
          formatting = {
            format = require('lspkind').cmp_format {
              before = require('tailwind-tools.cmp').lspkind_format,
            },
          },
        }
      end,
    },
  },
}
