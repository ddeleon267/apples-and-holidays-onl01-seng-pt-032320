require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)

  holiday_hash[:winter].values.flatten
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
end

## if you want to use separate putses for the season and the holidats
# def all_supplies_in_holidays(holiday_hash)
#   holiday_hash.each do |season, hol_hash_data|
#     puts "#{season.capitalize}:"
    
#     hol_hash_data.each do |holiday, supplies|
#       puts "  #{holiday.to_s.split("_").map{|word| word.capitalize}.join(" ")}: #{supplies.join(", ")}"
#     end
#   end
# end


## if you want to format it all as one string, then puts (don't forget to comment the right test in!)
# def all_supplies_in_holidays(holiday_hash)
#   formatted_string = ""
#   holiday_hash.each do |season, hol_hash_data|
#     formatted_string += "#{season.capitalize}:\n"

#     hol_hash_data.each do |holiday, supplies|
#       formatted_string += "  " + holiday.to_s.split("_").map{|word| word.capitalize}.join(" ") + ": "
#       formatted_string += supplies.join(", ") + "\n"
#     end
    
#   end
#   puts formatted_string
# end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.collect do |season, hol_hash_data|
    hol_hash_data.collect do |holiday, supplies|
      holiday if supplies.include?("BBQ") 
    end
  end.flatten.compact
end







