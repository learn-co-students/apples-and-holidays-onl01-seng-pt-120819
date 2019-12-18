require 'pry'
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
  
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, decoration|
    decoration << supply
   end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, decoration|
      decoration << supply
    end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = [supply_array].flatten
end


def all_winter_holiday_supplies(holiday_hash)
  array = holiday_hash[:winter].collect do |holiday, supply|
   supply
  end
 array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts "#{season.capitalize}:"
  data.each do |holiday, supplies|
    new_array = []
    array = holiday.to_s.split("_")
    array.collect do |caps|
     new_array << caps.capitalize!
  end
    holiday = new_array.join(" ")
     supplies = supplies.join(", ")
     puts "  #{holiday}: #{supplies}"
  end
end
end

def all_holidays_with_bbq(holiday_hash)
    holiday_hash.collect do |season, data|
      data.collect do |holiday, supply|
       if supply.include?("BBQ")
           holiday
       end
      end
    end.flatten.compact
  end







