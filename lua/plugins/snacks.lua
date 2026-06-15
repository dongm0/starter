return {
  {
    "snacks.nvim",
    dependencies = {
      "MaximilianLloyd/ascii.nvim",
    },
    opts = {
      dashboard = {
        preset = {
          header = require("custom-ascii").getRandom(),
        },
      },
    },
  },
}
