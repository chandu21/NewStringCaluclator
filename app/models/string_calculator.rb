class StringCalculator < ApplicationRecord
  def self.add(numbers)
  	 return 0 if numbers.blank?
     delimiter = ",|\n"
     if numbers.start_with?("//")
       delimiter_section, numbers = numbers.split("\n", 2)  #moving first part of string to //n to one . rest calclation part will change numbers value
       
     end
     numbers_list = numbers.split(Regexp.union(delimiter))
     negetive_values = numbers_list.select { |numbers| numbers < 0 }
     raise "Negatives not allowed" if negatives.present?
     numbers_list.sum
  end
end


# puts StringCalculator.add("1,2,3,5")

# puts StringCalculator.add("&&& 1,2,3,5")

# puts StringCalculator.add("1,2,3, -5")