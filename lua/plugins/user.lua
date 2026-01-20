---@type LazySpec
return {
  -- -- trouble
  -- {
  --   "folke/trouble.nvim",
  --   opts = { wrap = true },
  -- },
  -- virt-column
  {
    "lukas-reineke/virt-column.nvim",
    opts = {
      -- char = "",
      virtcolumn = "80",
    },
  },
  -- add copilot to cmp
  -- {
  --   "Saghen/blink.cmp",
  --   opts = {
  --     sources = {
  --       providers = {
  --         copilot = {
  --           transform_items = function(_, items)
  --             local CompletionItemKind = require("blink.cmp.types").CompletionItemKind
  --             local kind_idx = #CompletionItemKind + 1
  --             CompletionItemKind[kind_idx] = "Copilot"
  --             for _, item in ipairs(items) do
  --               item.kind = kind_idx
  --             end
  --             return items
  --           end,
  --           score_offset = 10000,
  --         },
  --       },
  --     },
  --     completion = {
  --       menu = {
  --         draw = {
  --           columns = {
  --             { "label", "label_description", gap = 1 },
  --             { "kind_icon", "kind", gap = 1 },
  --           },
  --         },
  --       },
  --     },
  --     appearance = {
  --       kind_icons = {
  --         Copilot = "",
  --       },
  --     },
  --   },
  -- },

  -- luasnip
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  -- autopairs
  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },

  -- lualine
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = { theme = "16color" },
    },
  },

  -- neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        width = 27,
      },
    },
  },

  -- lsp_signature
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- -- hardtime
  -- {
  --   "m4xshen/hardtime.nvim",
  --   opts = {
  --     timeout = 6000,
  --   },
  -- },
  -- reascript
  {
    "2TheGalaxy/reascript-lua-ls.nvim",
    opts = {},
  },

  -- landing page
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = table.concat({
            "         /\\                                                               ",
            "        /**\\                                                              ",
            "       /****\\   /\\                                                        ",
            "      /      \\ /**\\                                                       ",
            "     /  /\\    /    \\        /\\    /\\  /\\      /\\            /\\/\\/\\  /\\    ",
            "    /  /  \\  /      \\      /  \\/\\/  \\/  \\  /\\/  \\/\\  /\\  /\\/ / /  \\/  \\   ",
            "   /  /    \\/ /\\     \\    /    \\ \\  /    \\/ /   /  \\/  \\/  \\  /    \\   \\  ",
            "  /  /      \\/  \\/\\   \\  /      \\  /     /                                 ",
            "_/__/_______/___/__\\___\\_________________________________🦫🦫_____________",
            "",
            " ::::    ::: :::::::::: ::::::::  :::     ::: ::::::::::: ::::     :::: ",
            " :+:+:   :+: :+:       :+:    :+: :+:     :+:     :+:     +:+:+: :+:+:+ ",
            " :+:+:+  +:+ +:+       +:+    +:+ +:+     +:+     +:+     +:+ +:+:+ +:+ ",
            " +#+ +:+ +#+ +#++:++#  +#+    +:+ +#+     +:+     +#+     +#+  +:+  +#+ ",
            " +#+  +#+#+# +#+       +#+    +#+  +#+   +#+      +#+     +#+       +#+ ",
            " #+#   #+#+# #+#       #+#    #+#   #+#+#+#       #+#     #+#       #+# ",
            " ###    #### ########## ########      ###     ########### ###       ### ",
          }, "\n"),
        },
      },
    },
  },
}
