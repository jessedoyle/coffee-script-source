CoffeeScript Source
===================

This repository contains a basic [Crystal](http://crystal-lang.org) shard that contains the raw javascript for the [CoffeeScript](https://github.com/jashkenas/coffeescript) compiler.

Most of this code was taken from Ruby's [coffee-script-source](https://rubygems.org/gems/coffee-script-source)'s gem and Crystalized.

Installation
============

In your `shard.yml`:

```yaml
dependencies:
  coffee-script-source:
    github: jessedoyle/coffee-script-source
    version: ~> 2.0
```

the execute `shards install`.

Usage
=====

```crystal
require "coffee-script-source"

CoffeeScript::Source.bundled_path    # => somewhere...
CoffeeScript::Source.bundled_version # => "X.X.X"
```

Notes
=====

* Currently, this shard supports the 1.X releases of CoffeeScript. PRs are welcome - please see the discussion [here](https://github.com/jessedoyle/coffee-script-source/pull/3#issuecomment-779522699) for context.

Maintenance
===========

For future reference, when a new CoffeeScript version is released:

1. Create a new branch on this repo, then checkout the created branch.
2. From the repo's root directory execute: `bin/build-coffee-script 1.x.x`.
3. Update the `bundled_version` static method in [`src/coffee_script_source.cr`](https://github.com/jessedoyle/coffee-script-source/blob/master/src/coffee_script_source.cr).
4. Commit and merge as usual. Don't forget to add the correct release tags (eg. `v1.10.0`).

License
=======

The MIT License. See `LICENSE.md` for details.
