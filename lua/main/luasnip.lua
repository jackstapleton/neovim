require("luasnip.loaders.from_vscode").lazy_load()

local ls = require('luasnip')
local types = require('luasnip.util.types')


ls.config.set_config {
  history = true, -- remember the last snippet
  updateevents = "TextChanged,TextChangedI", -- update snippet as your typing
  enable_autosnippets = true, -- update snippet as your typing
}

ls.snippets = {
  all = {
    ls.parser.parse_snippet("expand", "-- this is what was expanded")
  },

  python = {
    ls.parser.parse_snippet("dbg", "from IPython import embed; embed()"),
  },

  q = {
    ls.parser.parse_snippet("fn0", "$1:{[$2]\n$0\n };"),

    ls.parser.parse_snippet("sql0", "?[$1; $2; $3; $4]$0"),
    ls.parser.parse_snippet("sql1", "?[$1; enlist($2); {x!x} (),$3; enlist($4)!enlist($5)]$0"),

    ls.parser.parse_snippet("if", "if[$1;\n$2;\n];$0"),
    ls.parser.parse_snippet("while", "while[$1;\n$2;\n];$0"),
    ls.parser.parse_snippet("$", "$$[$1;$2;$3];$0"),

    ls.parser.parse_snippet("sel", "select $1 from $2 where $0"),
    ls.parser.parse_snippet("exe", "exec $1 from $2 where $0"),
    ls.parser.parse_snippet("upd", "update $1 from $2 where $0"),
    ls.parser.parse_snippet("del", "delete $1 from $2 where $0"),

    ls.parser.parse_snippet("dup", ".dupNS.exception:`$0;"),
  },
}
