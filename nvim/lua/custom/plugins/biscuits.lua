return {
  {
    'code-biscuits/nvim-biscuits',
    keys = {
      {
        '<leader>p',
        function()
          require('nvim-biscuits').BufferAttach()
        end,
        mode = 'n',
        desc = 'Enable Biscuits',
      },
    },
  },
}
