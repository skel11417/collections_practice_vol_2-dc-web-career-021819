require 'pry'
# your code goes here
def begins_with_r(array)
  array.each do |word| 
    if word[0] != "r"
      return false
    end
  end
  true
end

def contain_a(array)
  array.select {|x| x.include?("a")}
end

def first_wa(array)
  array.find {|i| i[0..1] == "wa"}
end

def remove_non_strings(array)
  array.delete_if {|x| !(x.is_a? String)}
end

def count_elements(array)
  return_array = []
  all_names = array.map {|x| x.values}
  all_names.flatten!
  unique_names = all_names.uniq
  unique_names.each do |name|
    name_count = all_names.count(name)
    return_array << {:name=>name.to_s, :count=>name_count}
  end
  return_array
end

def merge_data(thing1, thing2)
  attributes = thing2[0]
  output = []
  thing1.each do |person|
    add_attributes = attributes[person[:first_name]]
    output << person.merge(add_attributes)
  end
  output
end

def find_cool(array)
  # binding.pry
  output = []
  array.each do |person|
    if person[:temperature] == "cool"
      output << person
    end
  end
  output
end

def organize_schools(hash)
  output = Hash.new
  cities_array = Array.new
  # create hash keys of cities
  
  cities = hash.values
  cities.map {|x| cities_array << x[:location]}
  cities_array!
  
  
  cities_array.each do |city|
    school_list = []
    hash.each do |k,v|
      if v[:location] == city
        school_list << k
      end
    end
    output[city] = school_list
  end
  output
end