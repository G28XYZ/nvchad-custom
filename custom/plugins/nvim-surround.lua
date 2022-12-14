require("nvim-surround").setup {
  delimiters = {
    pairs = { -- Remaps "a" and "b"
      ["a"] = {
        { "this", "has", "several", "lines" },
        "single line",
      },
      ["b"] = function()
        return {
          "hello",
          "world",
        }
      end,
    },
    HTML = { -- Disables HTML-style mappings
      ["t"] = false,
      ["T"] = false,
    },
  },
  highlight_motion = { -- Disables highlights
    duration = false,
  },
}
