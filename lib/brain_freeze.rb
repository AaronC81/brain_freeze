require 'parlour'

module BrainFreeze
  VERSION = '1.0.0'
  
  class Plugin < Parlour::Plugin
    def initialize(options)
      @include = options[:include] # default to all
    end

    def generate(root)
      objects = Parlour::TypeLoader.load_project('.')
      # TODO: @include
      objects.each do |object|
        object.generator = root.generator
        root.children << object
      end
    end
  end
end