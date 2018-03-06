# rubygems-update

A small cookbook that helps you to update system's and chef-client's rubygems version as they a rarely updated via the system updates.

It was created to mitigate problems like that one: https://www.ruby-lang.org/en/news/2018/02/17/multiple-vulnerabilities-in-rubygems/

## How to use

This cookbook just runs `gem update --system` for both system's and chef-client's embedded RubyGems setup.

Just add it to your `run_list`: `recipe[rubgems-update]`

If you do not want either system or chef-client gem to be updated you can set attributes:

```ruby
node['rubygems-update']['chef-client']['skip'] = true

# or

node['rubgems-update']['system']['skip'] = true
```

Or you can add only the desired recipe: `recipe[rubgems-update::system]` / `recipe[rubgems-update::chef-client]`

## Supported platforms

Tested on:

- Ubuntu 16.04
- Debian 8
- Debian 9
- Centos 6
- Centos 7
- Fedora 26
- Fedora 27

## TODO

* Run 'update' commands a bit rarer then during every chef run.

## Sponsor

[![Sponsored by Evil Martians](https://evilmartians.com/badges/sponsored-by-evil-martians.png)](https://evilmartians.com)