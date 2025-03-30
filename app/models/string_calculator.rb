class StringCalculator < ApplicationRecord
  def self.add(num)
  	 return 0 if num.blank?
     delimiter = ",|\n"
     num_list = num.split(Regexp.union(delimiter))
     negetive_values = num_list.select { |num| num < 0 }
     raise "Negatives not allowed" if negatives.present?
     num_list.sum
  end
end
