module FoodieTool
  class Food
    def self.portray(food)
      if food.casecmp('broccoli').zero? # downcase
        'Gross!'
      else
        'Delicious!'
      end
    end
  end
end
