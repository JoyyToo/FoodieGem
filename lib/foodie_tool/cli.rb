require 'thor'
require 'foodie_tool'

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
  end
end
