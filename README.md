# ∅Nilist∅

A skeptical, meaningless gem

## -Usage

I can't conceive of a single reason to include this in your application. Let's
say you want to try it out, though. Run `bin/console`, then at the prompt,
initialize Nilist.

```Ruby
[1] pry(main)> Nilist.new
=> #<Nilist:0x007fca0a0a5588#<Nilist:0x0>
```

Most method calls will return `nil`, while predicate methods will raise
`UnprovableError`.

## -Contributing

Bug reports and pull requests are welcome
[on GitHub](https://github.com/landongrindheim/nilist).


## -Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake spec` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

## -License

The gem is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).
