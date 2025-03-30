class StringCalculator < ApplicationRecord
  def self.add(num)
  	 return 0 if num.blank?
     delimiter = ",|\n"
     num_list = num.split(Regexp.union(delimiter))
     num_list.sum
  end
end
