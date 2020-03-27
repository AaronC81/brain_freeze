# Brain Freeze

Brain Freeze is a gem for generating a Sorbet RBI from inline types or other
RBIs within a project.

It is an ultra-simple script based on [Parlour](https://github.com/AaronC81/parlour).
It loads the project using Parlour's type parsing and loading, filters the 
objects within it, and then generates a new RBI.

## Usage

At the root of a Sorbet project, to generate an RBI file called `foo.rbi`:

```
brain_freeze --output-file foo.rbi
```

It's likely this will include types you don't want, such as external RBIs. To
filter to only the modules you'd like to include:

```
brain_freeze --output-file foo.rbi --include-module Foo --include-module Bar
```

This will remove definitions for all namespaces except `Foo` and `Bar`. (Please
note that this doesn't support nested namespaces yet, like `A::B`.)

## Tips

  - If you get any JSON parsing errors, you might not have Sorbet currently
    installed in your Bundler environment - run `bundle install`.

  - If you get errors about conflicting namespaces, delete any RBIs previously
    generated with Brain Freeze for the same project.

## Tests

Brain Freeze contains a set of project tests, which are tests which simulate
running it on a Sorbet project. These tests are in `spec/projects`. Each one
requires:

  - A Ruby source file which Brain Freeze will read.
  - A `sorbet` directory containing a `config` file, whose content is simply the
    name of the Ruby source file. This tells Sorbet which file to read when
    typechecking, without requiring a full `srb init`ed project.
  - An `expected.rbi` file with the expected output of Brain Freeze.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/AaronC81/brain_freeze.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
