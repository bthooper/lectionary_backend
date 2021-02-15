# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

puts "Creating Lectionaries."
Lectionary.create(name: 'Open Lectionary', description: '', owner: 'Consultation on Common Texts, Augsburg Fortress Publishers', license: 'Copyright 2005' )
Lectionary.create(name: 'Orthodox Lectionary', description: '', owner: 'Consultation on Common Texts, Augsburg Fortress Publishers', license: 'Copyright 2005' )
lectionary = Lectionary.create(name: 'Revised Common Lectionary', description: '', owner: 'Consultation on Common Texts, Augsburg Fortress Publishers', license: 'Copyright 2005' )
puts 'Finished creating ${lectionary.name}'

puts "Creating schedules."
schedules = lectionary.schedules.create([{name: "Year A", description: "Year A of the Revised Common Lectionary"},
                            {name: "Year B", description: "Year B of the Revised Common Lectionary"},
                            {name: "Year C", description: "Year C of the Revised Common Lectionary"}])
puts "Creating seasons."
schedules.each do |schedule|
  puts "Working on schedule #{schedule.name}"
  schedule.seasons.create([{name: "Advent"}, 
                           {name: "Christmas"}, 
                           {name: "Epiphany"}, 
                           {name: "Lent"}, 
                           {name: "Holy Week"}, 
                           {name: "Easter"}, 
                           {name: "Season After Pentecost"}])
end

puts "Creating Advent Days"

season = Season.find_by(name: "Advent")
season.days.create([{name: "First Sunday of Advent"},
                    {name: "Second Sunday of Advent"},
                    {name: "Third Sunday of Advent"},
                    {name: "Fourth Sunday of Advent"}])

day = Day.find_by(name: "First Sunday of Advent")
day.readings.create([{reference: 'Isaiah 2: 1-5', reading_type: 'First Reading'},
                     {reference: 'Psalm 122', reading_type: 'Psalm'},
                     {reference: 'Romans 13: 11-14', reading_type: 'Second Reading'},
                     {reference: 'Matthew 24: 36-44', reading_type: 'Gospel'}])

day = Day.find_by(name: "Second Sunday of Advent")

day.readings.create([{reference: 'Isaiah 11: 1-10', reading_type: 'First Reading'},
                     {reference: 'Psalm 72:1-7, 18-19', reading_type: 'Psalm'},
                     {reference: 'Romans 15: 4-13', reading_type: 'Second Reading'},
                     {reference: 'Matthew 3: 1-12', reading_type: 'Gospel'}])
day = Day.find_by(name: "Third Sunday of Advent")
day.readings.create([{reference: 'Isaiah 35: 1-10', reading_type: 'First Reading'},
                     {reference: 'Psalm 146:5-10', reading_type: 'Psalm'},
                     {reference: 'James 5:7-10', reading_type: 'Second Reading'},
                     {reference: 'Matthew 11:2-11', reading_type: 'Gospel'}])
day = Day.find_by(name: "Fourth Sunday of Advent")
day.readings.create([{reference: 'Isaiah 7:10-16', reading_type: 'First Reading'},
                     {reference: 'Psalm 80:1-7, 17-19', reading_type: 'Psalm'},
                     {reference: 'Romans 1: 1-7', reading_type: 'Second Reading'},
                     {reference: 'Matthew 1: 18-25', reading_type: 'Gospel'}])


puts "Seeding done."
