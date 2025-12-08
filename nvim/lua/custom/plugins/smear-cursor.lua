return {
  'sphamba/smear-cursor.nvim',
  opts = {
    time_interval = 5,
  },
  config = function()
    require('smear_cursor').setup {
      stiffness = 0.5,
      trailing_stiffness = 0.5,
      distance_stop_animating = 0.5,
    }
  end,
}
