# HashArrayFlatten

Flatten nested hash with arrays into single level.

https://rubygems.org/gems/hash_array_flatten

## Usage

### Nested hash

```ruby
HashArrayFlatten.visit({"a" => {"x" => 1, "y" => 2}})
# => {"a.x"=>1, "a.y"=>2}
```

### Nested hash with array

```ruby
HashArrayFlatten.visit({"a" => {"aa" => 1, "ab" => 2}, "b" => [100, 200, {"c" => 300}]})
# => {"a.aa"=>1, "a.ab"=>2, "b.0"=>100, "b.1"=>200, "b.2.c"=>300}
```

## License

MIT
