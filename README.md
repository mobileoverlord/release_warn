# ReleaseWarn

Release steps defined in dependencies will
render warnings in elixir 1.10-dev (7f86ea3)

To reproduce:

```bash
mix deps.get
```

Output:

```bash
warning: Dep.init/1 is undefined (module Dep is not available or is yet to be defined)
  mix.exs:33: ReleaseWarn.MixProject.release/0
```
