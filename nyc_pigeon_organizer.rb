require 'pry'

def nyc_pigeon_organizer(data)
  	bird_names = data[:gender].map {|key,value| value}.flatten
	
	pigeon_data =	bird_names.each_with_object({}) do |name, h|  
			h[name] = {
				:color => [],
				:gender => [],
				:lives => [],
			}

			[:color,:gender,:lives].each do |key|
				data[key].map do |k,v| 
					[k => v.each{|val| h[name][key] << k.to_s if val == name}]
				end
			end
		
		end

	pigeon_data
end
