require 'thor'
require 'foodie_tool'
require 'foodie_tool/generators/recipe'

module FoodieTool
  class CLI < Thor
    desc 'portray ITEM', 'Determines if a piece of food is gross or delicious'
    def portray(name)
      puts FoodieTool::Food.portray(name)
    end

    desc 'pluralize', 'Pluralizes a word'
    method_option :word, aliases: '-w'
    def pluralize
      puts FoodieTool::Food.pluralize(options[:word])
    end

    desc 'recipe', 'Generates a recipe scaffold'
    def recipe(group, name)
      FoodieTool::Generators::Recipe.start([group, name])
    end
  end
end
