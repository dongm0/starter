return {
  {
    "snacks.nvim",
    dependencies = {
      "MaximilianLloyd/ascii.nvim",
    },
    opts = {
      dashboard = {
        preset = {
          header = table.concat(require("ascii").get_random("misc", "skulls"), "\n"),
        },
      },
    },
  },
}
