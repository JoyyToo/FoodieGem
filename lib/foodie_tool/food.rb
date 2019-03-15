require 'active_support/inflector'

module FoodieTool
  class Food
    def self.portray(food)
      if food.casecmp('broccoli').zero? # downcase
        'Gross!'
      else
        'Delicious!'
      end
    end

    def self.pluralize(word)
      word.pluralize
    end
  end
end
