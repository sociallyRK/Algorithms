

 def proximity_sort(results, current_location)
 				h1 = {}
        results.each do |h|
        	h1[h[:name]] = distance(current_location, h)
        end
        puts h1.sort_by {|name, distance| distance }
 end

def distance(current_location, other_location)
	curr_lat = current_location[:lat]
	curr_long = current_location[:long] 
	other_lat = other_location[:location][:lat]
	other_long = other_location[:location][:long]
  dist = Math.sqrt(((curr_lat - other_lat)**2 + (curr_long - other_long)**2))
	return dist
end

my_results = [  {name: "six pack of beer", location: {lat: 37.767182, long: -122.5}}, 
                {name: "whacky glasses", location: {lat: 37.767182, long: -122.51}},
                {name: "whiskey bottle", location: {lat: 37.767282, long: -122.49}},
                {name: "diving goggles", location: {lat: 37.770282, long: -122.503}},
                {name: "running shoes", location: {lat: 37.7669, long: -122.457}},
                {name: "paint brushes", location: {lat: 37.76800, long: -122.4580}}]


current_location = {lat: 37.7, long: -122.3}

proximity_sort(my_results, current_location)

#other_location = {name: "paint brushes", location: {lat: 37.76800, long: -122.4580}}

#distance(current_location, other_location)