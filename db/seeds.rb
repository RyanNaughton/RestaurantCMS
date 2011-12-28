# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
User.create do |user|
  user.first_name = 'Ryan'
  user.last_name = 'Naughton'
  user.email = 'Ryan.J.Naughton@gmail.com'
  user.password = 'nalgene360'
  user.password_confirmation = 'nalgene360'
  user.admin = true
  #user.restaurant = Restaurant.first
end

Neighborhood.destroy_all
neighborhoods = Neighborhood.create([{ name: "Albany Park" }, { name: "Altgeld Gardens" }, { name: "Andersonville" }, { name: "Archer Heights" }, { name: "Armour Square" }, { name: "Ashburn" }, { name: "Ashburn Estates" }, { name: "Auburn Gresham" }, { name: "Austin" }, { name: "Avalon Park" }, { name: "Avondale" }, { name: "Back of the Yards" }, { name: "Belmont Gardens" }, { name: "Belmont Heights" }, { name: "Belmont Terrace" }, { name: "Beverly" }, { name: "Beverly View" }, { name: "Beverly Woods" }, { name: "Big Oaks" }, { name: "Boystown" }, { name: "Bowmanville" }, { name: "Brainerd" }, { name: "Brickyard" }, { name: "Bridgeport" }, { name: "Brighton Park" }, { name: "Bronzeville" }, { name: "Bucktown" }, { name: "Budlong Woods" }, { name: "Buena Park" }, { name: "Burnside" }, { name: "Cabrini–Green" }, { name: "Calumet Heights" }, { name: "Canaryville" }, { name: "Central Station" }, { name: "Chatham" }, { name: "Chicago Lawn" }, { name: "Chinatown" }, { name: "Chrysler Village" }, { name: "Clarendon Park" }, { name: "Clearing" }, { name: "Cottage Grove Heights" }, { name: "Cragin" }, { name: "Crestline" }, { name: "Dearborn Park" }, { name: "DePaul" }, { name: "Douglas" }, { name: "Dunning" }, { name: "East Garfield Park" }, { name: "East Side" }, { name: "East Village" }, { name: "Eden Green" }, { name: "Edgebrook" }, { name: "Edgewater" }, { name: "Edgewater Glen" }, { name: "Edison Park" }, { name: "Englewood" }, { name: "Epic" }, { name: "Fernwood" }, { name: "Fifth City" }, { name: "Ford City" }, { name: "Forest Glen" }, { name: "Fuller Park" }, { name: "Fulton River District" }, { name: "Gage Park" }, { name: "Galewood" }, { name: "Garfield Ridge" }, { name: "Gladstone Park" }, { name: "Golden Gate" }, { name: "Goose Island" }, { name: "Grand Boulevard" }, { name: "Grand Crossing" }, { name: "Greater Grand Crossing" }, { name: "Greektown" }, { name: "Gresham" }, { name: "Groveland Park" }, { name: "Hamilton Park" }, { name: "Hanson Park" }, { name: "Heart of Chicago" }, { name: "Hegewisch" }, { name: "Hermosa" }, { name: "Hollywood Park" }, { name: "Homan Square" }, { name: "Humboldt Park" }, { name: "Hyde Park" }, { name: "Irving Park" }, { name: "Irving Woods" }, { name: "Jackowo" }, { name: "Jackson Park Highlands" }, { name: "Jefferson Park" }, { name: "Kelvyn Park" }, { name: "Kennedy Park" }, { name: "Kensington" }, { name: "Kenwood" }, { name: "Kilbourn Park" }, { name: "K-Town" }, { name: "Lake Meadows" }, { name: "Lake View East" }, { name: "Lakewood/Balmoral" }, { name: "Le Claire Courts" }, { name: "Lilydale" }, { name: "Lincoln Park" }, { name: "Lincoln Square" }, { name: "Lithuanian Plaza" }, { name: "Little Italy" }, { name: "Little Village" }, { name: "Logan Square" }, { name: "Longwood Manor" }, { name: "Lower West Side" }, { name: "Loyola" }, { name: "Magnificent Mile" }, { name: "Marquette Park" }, { name: "Marshall Square" }, { name: "Marynook" }, { name: "Mayfair" }, { name: "McKinley Park" }, { name: "Medical Center" }, { name: "Middle Edgebrook" }, { name: "Montclare" }, { name: "Morgan Park" }, { name: "Mount Greenwood" }, { name: "Near North Side" }, { name: "Near South Side" }, { name: "New Chinatown" }, { name: "New City" }, { name: "New Eastside" }, { name: "Noble Square" }, { name: "North Halsted" }, { name: "North Lawndale" }, { name: "North Mayfair" }, { name: "North Park" }, { name: "North Center" }, { name: "Nortown" }, { name: "Norwood Park" }, { name: "Oakland" }, { name: "O'Hare" }, { name: "Old Irving Park" }, { name: "Old Norwood" }, { name: "Old Town Triangle" }, { name: "Old Town" }, { name: "Oriole Park" }, { name: "Palmer Square" }, { name: "Park Manor" }, { name: "Park West" }, { name: "Parkview" }, { name: "Peterson Park" }, { name: "Pill Hill" }, { name: "Pilsen" }, { name: "The Polish Village" }, { name: "Portage Park" }, { name: "Prairie Avenue Historic District" }, { name: "Prairie Shores" }, { name: "Princeton Park" }, { name: "Printer's Row" }, { name: "Pulaski Park" }, { name: "Pullman" }, { name: "Ranch Triangle" }, { name: "Ravenswood" }, { name: "Ravenswood Gardens" }, { name: "Ravenswood Manor" }, { name: "River North" }, { name: "Riverdale" }, { name: "Rogers Park" }, { name: "Roscoe Village" }, { name: "Rosehill" }, { name: "Roseland" }, { name: "Rosemoor" }, { name: "Saint Ben's" }, { name: "Sauganash" }, { name: "Schorsch Forest View" }, { name: "Schorsch Village" }, { name: "Scottsdale" }, { name: "Sheffield" }, { name: "Neighbors" }, { name: "Sheridan Park" }, { name: "Sleepy Hollow" }, { name: "Smith Park" }, { name: "South Chicago" }, { name: "South Commons" }, { name: "South Deering" }, { name: "South Lawndale" }, { name: "South Loop" }, { name: "South Shore" }, { name: "Stony Island Park" }, { name: "Streeterville" }, { name: "Talley's Corner" }, { name: "The Gap" }, { name: "The Gold Coast" }, { name: "The Island" }, { name: "The Loop" }, { name: "The Villa" }, { name: "Tri-Taylor" }, { name: "Ukrainian Village" }, { name: "Union Ridge" }, { name: "University Village" }, { name: "Uptown" }, { name: "Vittum Park" }, { name: "Waclawowo" }, { name: "Washington Heights" }, { name: "Washington Park" }, { name: "Wentworth Gardens" }, { name: "West Beverly" }, { name: "West Chesterfield" }, { name: "West Elsdon" }, { name: "West Englewood" }, { name: "West Garfield Park" }, { name: "West Lakeview" }, { name: "West Lawn" }, { name: "West Morgan Park" }, { name: "West Pullman" }, { name: "West Ridge" }, { name: "West Rogers Park" }, { name: "West Town" }, { name: "Wicker Park" }, { name: "Wildwood" }, { name: "Woodlawn" }, { name: "Wrightwood" }, { name: "Wrightwood Neighbors" }, { name: "Wrigleyville" }])

Restaurant.destroy_all
Restaurant.create do |f|
  f.name = "Avec"
  f.phone = "312-555-5555"
  f.fax = "312-555-4444"
  f.address_formatted = "123 elm st. </br> Chicago, IL 60614"
  f.neighborhood = Neighborhood.first
  f.hours = "all day, every day"
end

Event.destroy_all
File.read('db/Events.txt').split(/\n\n/).map { |x| x.split(/\n/) }.select { |x| x.size < 4 }.each do |event|
  if event.length == 2
    name, description = event
    date = nil
  else
    date, name, description = event
  end
  Event.create :start_on => date, :name => name, :description => description, :restaurant => Restaurant.first
end

Announcement.destroy_all
Announcement.create do |f|
  f.name = "Call Avec Your Own: Reserve for a Private Event!"
  f.description = "Available for Private Lunches 7 days/week, as well as Evening Buyouts. <br/> Call 312.496.0012 for private dining information."
  f.restaurant = Restaurant.first
end

TopNav.destroy_all
['about', 'menus', 'press', 'gallery', 'events'].each_with_index do |page, i|
  TopNav.create :display_name => page, :nav_type => page, :order => i, :restaurant => Restaurant.first
end

Gallery.destroy_all
Picture.destroy_all

TopNav.all.each_with_index do |f,i|
  g = Gallery.create :imageable => f, :restaurant => Restaurant.first
  Picture.create :gallery => g, :url => ('picture' + i.to_s + '.jpg')
end

MenuItem.destroy_all
Category.destroy_all
order = 0
p 'start menu'
parse_menu = lambda do |string|
  string.scan(/^(.*)\n((?:\s+.*\n)+)?/).map do |category, string|
    if (m = /(\d+) - (.*)/.match(category))
      p 'menu', category, string
      price, description = m.captures
      MenuItem.create :price => price.to_i*100,
                      :description => description
    else
      p 'category', category, string
      c = Category.create :name => category,
                          :order => (order += 1),
                          :restaurant => Restaurant.first
      string = string.split(/\n/).map { |s| s[1..-1] }.join("\n")
      parse_menu[string].each do |child|
        child.parent_category = c if child.is_a? Category
        child.category = c if child.is_a? MenuItem
        child.save
      end
      c
    end
  end
end
parse_menu[File.read('db/Menu.txt')]
