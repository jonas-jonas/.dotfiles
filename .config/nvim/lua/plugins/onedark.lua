return {
  {
    "navarasu/onedark.nvim",
    name = 'onedark',
    opts = {
      style = "darker"
    },
    config = function() 
      require('onedark').load()
    end
  }
}
