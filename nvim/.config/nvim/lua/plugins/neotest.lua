return {
  "nvim-neotest/neotest",
  dependencies = {
    "marilari88/neotest-vitest",
    "nvim-neotest/neotest-jest",
    "olimorris/neotest-rspec",
  },
  opts = {
    adapters = {
      ["neotest-vitest"] = {},
      ["neotest-jest"] = {
        -- jestCommand = "pnpm test --",
      },
      ["neotest-rspec"] = {
        rspec_cmd = function(position_type)
          if position_type == "test" then
            return vim
              .iter({
                "bin/run",
                "rspec",
                "--fail-fast",
              })
              :flatten()
              :totable()
          else
            return vim
              .iter({
                "bin/run",
                "rspec",
              })
              :flatten()
              :totable()
          end
        end,

        transform_spec_path = function(path)
          local prefix = require("neotest-rspec").root(path)
          if not prefix then
            return path
          end
          return string.sub(path, string.len(prefix) + 2, -1)
        end,

        results_path = "tmp/rspec.output",
        formatter = "json",
      },
    },
  },
}
