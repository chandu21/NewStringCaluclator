class StringCalculator < ApplicationRecord
  def self.add(numbers)
  	 return 0 if numbers.blank?
     delimiter = ",|\n"
     if numbers.start_with?("//")  #helps to filter the value if string starts with delimiter
       delimiter_section, numbers = numbers.split("\n", 2)  #moving first part of string to //n to one . rest calclation part will change numbers value
       delimiter = extract_delimiters(delimiter_section)  #extract and removed the starting delimiter values from the string
     end
     numbers_list = numbers.split(Regexp.union(delimiter)).map(&:to_i)
     negetive_values = numbers_list.select { |numbers| numbers < 0 }
     raise "Negatives not allowed" if negatives.present?
     numbers_list.sum
  end


  private 
   def self.extract_delimiters(delimiter_section)
     delimiter_section.include?("[") ? delimiter_section.scan(/\[(.*?)\]/).flatten : delimiter_section[2]
   end
end


# puts StringCalculator.add("1,2,3,5")

# puts StringCalculator.add("&&& 1,2,3,5")

# puts StringCalculator.add("1,2,3, -5")