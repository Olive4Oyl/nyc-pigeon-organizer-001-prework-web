require 'pry'
# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   }
    
def nyc_pigeon_organizer(data)
  names = data.map do |attribute, information|
    information.values
  end.flatten.uniq

  organized = {}
    names.each do |pigeon_names|
      organized[pigeon_names] = {}
    end 

  data.each do |attribute, information|
    organized.each do |name, empty_hash|
      organized[name][attribute] = []
    end
  end
 
  data.each do |attribute, information|
    organized.each do |name, main_information|
      information.each do |key, value|
        if value.include? name
          organized[name][attribute] << key.to_s
        end  
      end
    end
  end 
  organized
end  




