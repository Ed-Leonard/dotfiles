return {
  'Jezda1337/nvim-html-css',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    enable_on = {
      'svelte',
    },
    handlers = {
      definition = {
        bind = 'gd',
      },
      hover = {
        bind = 'K',
        wrap = true,
        border = 'none',
        position = 'cursor',
      },
    },
    documentation = {
      auto_show = true,
    },
    style_sheets = {
      'https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css',
    },
  },
}
