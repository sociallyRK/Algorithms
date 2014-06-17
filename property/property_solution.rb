require 'csv'
require 'Date'

def date_lies_between(exclusion, beginning_date, end_date)
  return (exclusion > beginning_date) && (exclusion < end_date)
end

def closest_properties 
calendar = CSV.read('calendar.csv')
calendar_date = []

calendar.each do |exclusion|
  exclusion_array = []
  exclusion_array << exclusion[0]
  exclusion_array << Date.strptime(exclusion[1], "%m/%d/%y")
  exclusion_array << exclusion[2]
  exclusion_array << exclusion[3]
  calendar_date << exclusion_array
end

searches = CSV.read('searches.csv')
properties = CSV.read('properties.csv')
search_hash = {}
calendar_hash = {}
calendar_date.each do |exclusion|
  if calendar_hash[exclusion[0]] == nil
    calendar_hash[exclusion[0]] = [exclusion]
  else
    calendar_hash[exclusion[0]].push exclusion
  end
end
#p calendar_hash
solution = []
searches.each do |search|
  properties.each do |property|
    if ((property[2].to_f - search[2].to_f).abs < 1) && ((property[1].to_f - search[1].to_f).abs < 1) 
      beginning_date = DateTime.parse(search[3])
      end_date = DateTime.parse(search[4])
      exclusions = []
      exclusion_status = false
        if calendar_hash[property[0]] != nil 
          calendar_hash[property[0]].each do |exclusion|
             if date_lies_between(exclusion[1], beginning_date, end_date) 
               puts true
               exclusion_status = true
                if exclusion[2].to_i==0
                 puts "0"
                else
                 puts "1"
                end
             else
               #puts false
             end
          end
        end
      if search_hash[search[0]] == nil
        solution.push [search[0], property[0], (end_date - beginning_date).to_f * property[3].to_f]  
      else
        solution.push [search[0], property[0], (end_date - beginning_date).to_f * property[3].to_f]  
      end
    end
  end
end
#p solution
end

closest_properties 
