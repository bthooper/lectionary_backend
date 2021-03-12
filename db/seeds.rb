
puts "Creating Lectionaries."
lectionary = Lectionary.create(name: 'Revised Common Lectionary', description: '', owner: 'Revised Common Lectionary, Copyright 1992 Consultation on Common Texts. Used by permission.', license: 'Copyright 2005' )
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
  season = schedule.seasons.find_by(name: "Advent")
  season.days.create([{name: "First Sunday of Advent"},
                    {name: "Second Sunday of Advent"},
                    {name: "Third Sunday of Advent"},
                    {name: "Fourth Sunday of Advent"}])
  season = schedule.seasons.find_by(name: "Christmas")
  season.days.create([
    {name: "Nativity of the Lord - Proper I"},
    {name: "Nativity of the Lord - Proper II"},
    {name: "Nativity of the Lord - Proper III"},
    {name: "First Sunday After Christmas Day"},
    {name: "Holy Name of Jesus"},
    {name: "New Year's Day"},
    {name: "Second Sunday After Christmas Day"},
  ])
  season = schedule.seasons.find_by(name: "Epiphany")
  season.days.create([
    {name: "Epiphany of the Lord"},
    {name: "Baptism of the Lord"},
    {name: "Second Sunday After the Epiphany"},
    {name: "Third Sunday After the Epiphany"},
    {name: "Fourth Sunday After the Epiphany"},
    {name: "Fifth Sunday After the Epiphany"},
    {name: "Sixth Sunday After the Epiphany - Proper 1"},
    {name: "Seventh Sunday After the Epiphany - Proper 2"},
    {name: "Eighth Sunday After the Epiphany - Proper 3"},
    {name: "Ninth Sunday After the Epiphany - Proper 4"},
    {name: "Last Sunday After the Epiphany - Transfiguration Sunday"},
  ])
  season = schedule.seasons.find_by(name: "Lent")
  season.days.create([
    {name: "Ash Wednesday"},
    {name: "First Sunday in Lent"},
    {name: "Second Sunday in Lent"},
    {name: "Third Sunday in Lent"},
    {name: "Fourth Sunday in Lent"},
    {name: "Annunciation of the Lord"},
    {name: "Fifth Sunday in Lent"},
    {name: "Sixth Sunday in Lent - Liturgy of the Palms"},
    {name: "Sixth Sunday in Lent - Liturgy of the Passion"},
  ])
  season = schedule.seasons.find_by(name: "Holy Week")
  season.days.create([
    {name: "Monday of Holy Week"},
    {name: "Tuesday of Holy Week"},
    {name: "Wednesday of Holy Week"},
    {name: "Holy Thursday"},
    {name: "Good Friday"},
    {name: "Holy Saturday"},
  ])
  season = schedule.seasons.find_by(name: "Easter")
  season.days.create([
    {name: "Resurrection of the Lord - Easter Vigil"},
    {name: "Resurrection of the Lord - Easter Day"},
    {name: "Resurrection of the Lord - Easter Evening"},
    {name: "Second Sunday of Easter"},
    {name: "Third Sunday of Easter"},
    {name: "Fourth Sunday of Easter"},
    {name: "Fifth Sunday of Easter"},
    {name: "Sixth Sunday of Easter"},
    {name: "Ascension of the Lord"},
    {name: "Seventh Sunday of Easter"},
    {name: "Day of Pentecost"},
    {name: "Visitation of Mary to Elizabeth"},
  ])
  
end

puts "Creating Advent Days - Year A"

yearA = schedules.first
puts yearA.name

day = yearA.seasons.first.days.find_by(name: "First Sunday of Advent")
day.readings.create([{reference: 'Isaiah 2:1-5', reading_type: 'First Reading'},
                     {reference: 'Psalm 122', reading_type: 'Psalm'},
                     {reference: 'Romans 13:11-14', reading_type: 'Second Reading'},
                     {reference: 'Matthew 24:36-44', reading_type: 'Gospel'}])

day = yearA.seasons.first.days.find_by(name: "Second Sunday of Advent")

day.readings.create([{reference: 'Isaiah 11:1-10', reading_type: 'First Reading'},
                     {reference: 'Psalm 72:1-7, 18-19', reading_type: 'Psalm'},
                     {reference: 'Romans 15:4-13', reading_type: 'Second Reading'},
                     {reference: 'Matthew 3:1-12', reading_type: 'Gospel'}])
day = yearA.seasons.first.days.find_by(name: "Third Sunday of Advent")
day.readings.create([{reference: 'Isaiah 35:1-10', reading_type: 'First Reading'},
                     {reference: 'Psalm 146:5-10', reading_type: 'Psalm'},
                     {reference: 'James 5:7-10', reading_type: 'Second Reading'},
                     {reference: 'Matthew 11:2-11', reading_type: 'Gospel'}])
day = yearA.seasons.first.days.find_by(name: "Fourth Sunday of Advent")
day.readings.create([{reference: 'Isaiah 7:10-16', reading_type: 'First Reading'},
                     {reference: 'Psalm 80:1-7, 17-19', reading_type: 'Psalm'},
                     {reference: 'Romans 1:1-7', reading_type: 'Second Reading'},
                     {reference: 'Matthew 1:18-25', reading_type: 'Gospel'}])

puts "Creating Christmas Days - Year A"
christmas = yearA.seasons.find_by(name: "Christmas")
day = christmas.days.find_by(name: "Nativity of the Lord - Proper I")
day.readings.create([{reference: 'Isaiah 9:2-7', reading_type: 'First Reading'},
                     {reference: 'Psalm 96', reading_type: 'Psalm'},
                     {reference: 'Titus 2:11-14', reading_type: 'Second Reading'},
                     {reference: 'Luke 2:1-14 (15-20)', reading_type: 'Gospel'}])
day = christmas.days.find_by(name: "Nativity of the Lord - Proper II")
day.readings.create([{reference: 'Isaiah 62: 6-12', reading_type: 'First Reading'},
                     {reference: 'Psalm 97', reading_type: 'Psalm'},
                     {reference: 'Titus 3:4-7', reading_type: 'Second Reading'},
                     {reference: 'Luke 2:(1-7) 8-20', reading_type: 'Gospel'}])
day = christmas.days.find_by(name: "Nativity of the Lord - Proper III")
day.readings.create([{reference: 'Isaiah 52:7-10', reading_type: 'First Reading'},
                     {reference: 'Psalm 98', reading_type: 'Psalm'},
                     {reference: 'Hebrews 1:1-4, (5-12)', reading_type: 'Second Reading'},
                     {reference: 'John 1:1-14', reading_type: 'Gospel'}])
day = christmas.days.find_by(name: "First Sunday After Christmas Day")
day.readings.create([{reference: 'Isaiah 63:7-9', reading_type: 'First Reading'},
                     {reference: 'Psalm 148', reading_type: 'Psalm'},
                     {reference: 'Hebrews 2:10-18', reading_type: 'Second Reading'},
                     {reference: 'Matthew 2:13-23', reading_type: 'Gospel'}])
day = christmas.days.find_by(name: "Holy Name of Jesus")
day.readings.create([{reference: 'Numbers 6:22-27', reading_type: 'First Reading'},
                     {reference: 'Psalm 8', reading_type: 'Psalm'},
                     {reference: 'Galatians 4:4-7', reading_type: 'Second Reading'},
                     {reference: 'Philippians 2:5-11', reading_type: 'Second Reading Alternate'},
                     {reference: 'Luke 2:15-21', reading_type: 'Gospel'}])
day = christmas.days.find_by(name: "New Year's Day")
day.readings.create([{reference: 'Ecclesiastes 3:1-13', reading_type: 'First Reading'},
                     {reference: 'Psalm 8', reading_type: 'Psalm'},
                     {reference: 'Revelation 21:1-6a', reading_type: 'Second Reading'},
                     {reference: 'Matthew 25:31-46', reading_type: 'Gospel'}])
day = christmas.days.find_by(name: "Second Sunday After Christmas Day")
day.readings.create([{reference: 'Jeremiah 31:7-14', reading_type: 'First Reading'},
                     {reference: 'Sirach 24:1-12', reading_type: 'First Reading Alternate'},
                     {reference: 'Psalm 147', reading_type: 'Psalm'},
                     {reference: 'Wisdom of Solomon 10:15-21', reading_type: 'Pslam Alternate'},
                     {reference: 'Ephesians 1:3-14', reading_type: 'Second Reading'},
                     {reference: 'John 1:(1-9), 10-18', reading_type: 'Gospel'}])

puts "Creating Epiphany Days - Year A"
epiphany = yearA.seasons.find_by(name: "Epiphany")
day = epiphany.days.find_by(name: "Epiphany of the Lord")
day.readings.create([{reference: 'Isaiah 60:1-6', reading_type: 'First Reading'},
                     {reference: 'Psalm 72:1-7, 10-14', reading_type: 'Psalm'},
                     {reference: 'Ephesians 3:1-12', reading_type: 'Second Reading'},
                     {reference: 'Matthew 2:1-12', reading_type: 'Gospel'}])
day = epiphany.days.find_by(name: "Baptism of the Lord")
day.readings.create([{reference: 'Isaiah 42:1-9', reading_type: 'First Reading'},
                     {reference: 'Psalm 29', reading_type: 'Psalm'},
                     {reference: 'Acts 10:34-43', reading_type: 'Second Reading'},
                     {reference: 'Matthew 3:13-17', reading_type: 'Gospel'}])
day = epiphany.days.find_by(name: "Second Sunday After the Epiphany")
day.readings.create([{reference: 'Isaiah 49:1-7', reading_type: 'First Reading'},
                     {reference: 'Psalm 40:1-11', reading_type: 'Psalm'},
                     {reference: '1 Corinthians 1:1-9', reading_type: 'Second Reading'},
                     {reference: 'John 1:29-42', reading_type: 'Gospel'}])
day = epiphany.days.find_by(name: "Third Sunday After the Epiphany")
day.readings.create([{reference: 'Isaiah 9:1-4', reading_type: 'First Reading'},
                     {reference: 'Psalm 27:1, 4-9', reading_type: 'Psalm'},
                     {reference: '1 Corinthians 1:10-18', reading_type: 'Second Reading'},
                     {reference: 'Mathew 4:12-23', reading_type: 'Gospel'}])
day = epiphany.days.find_by(name: "Fourth Sunday After the Epiphany")
day.readings.create([{reference: 'Micah 6:1-8', reading_type: 'First Reading'},
                     {reference: 'Psalm 15', reading_type: 'Psalm'},
                     {reference: '1 Corinthians 1:18-31', reading_type: 'Second Reading'},
                     {reference: 'Matthew 5:1-12', reading_type: 'Gospel'}])
day = epiphany.days.find_by(name: "Fifth Sunday After the Epiphany")
day.readings.create([{reference: 'Isaiah 58:1-9a, (9b-12)', reading_type: 'First Reading'},
                     {reference: 'Psalm 112:1-9 (10)', reading_type: 'Psalm'},
                     {reference: '1 Corinthians 2:1-12, (13-16)', reading_type: 'Second Reading'},
                     {reference: 'Mathew 5:13-20', reading_type: 'Gospel'}])
day = epiphany.days.find_by(name: "Sixth Sunday After the Epiphany - Proper 1")
day.readings.create([{reference: 'Deuteronomy 31:15-20', reading_type: 'First Reading'},
                     {reference: 'Sirach 15:15-20', reading_type: 'First Reading Alternate'},
                     {reference: 'Psalm 119:1-8', reading_type: 'Psalm'},
                     {reference: '1 Corinthians 3:1-9', reading_type: 'Second Reading'},
                     {reference: 'Matthew 5:21-37', reading_type: 'Gospel'}])
day = epiphany.days.find_by(name: "Seventh Sunday After the Epiphany - Proper 2")
day.readings.create([{reference: 'Leviticus 19:1-2, 9-18', reading_type: 'First Reading'},
                     {reference: 'Psalm 119', reading_type: 'Psalm'},
                     {reference: '1 Corinthians 3:10-11, 16-23', reading_type: 'Second Reading'},
                     {reference: 'Matthew 5:38-48', reading_type: 'Gospel'}])
day = epiphany.days.find_by(name: "Eighth Sunday After the Epiphany - Proper 3")
day.readings.create([{reference: 'Isaiah 49:8-16a', reading_type: 'First Reading'},
                     {reference: 'Psalm 131', reading_type: 'Psalm'},
                     {reference: '1 Corinthians 4:1-5', reading_type: 'Second Reading'},
                     {reference: 'Matthew 6:24-34', reading_type: 'Gospel'}])
day = epiphany.days.find_by(name: "Ninth Sunday After the Epiphany - Proper 4")
day.readings.create([{reference: 'Deuteronomy 11:18-21, 26-28', reading_type: 'First Reading'},
                     {reference: 'Psalmm 31:1-5, 19-24', reading_type: 'Psalm'},
                     {reference: 'Romans 1:16-17; 3:22b-28, (29-31)', reading_type: 'Second Reading'},
                     {reference: 'Matthew 7:21-29', reading_type: 'Gospel'}])
day = epiphany.days.find_by(name: "Last Sunday After the Epiphany - Transfiguration Sunday")
day.readings.create([{reference: 'Exodus 24:12-18', reading_type: 'First Reading'},
                     {reference: 'Psalm 2', reading_type: 'Psalm'},
                     {reference: 'Psalm 99', reading_type: 'Psalm Alternate'},
                     {reference: '2 Peter 1:16-21', reading_type: 'Second Reading'},
                     {reference: 'Matthew 17:1-9', reading_type: 'Gospel'}])

puts "Creating Lenten Days - Year A"
lent = yearA.seasons.find_by(name: "Lent")
day = lent.days.find_by(name: "Ash Wednesday")
day.readings.create([{reference: 'Joel 2:1-2, 12-17', reading_type: 'First Reading'},
                     {reference: 'Isaiah 58:1-12', reading_type: 'First Reading Alternate'},
                     {reference: 'Psalm 51:1-17', reading_type: 'Psalm'},
                     {reference: '2 Corinthians 5:20b-6:10', reading_type: 'Second Reading'},
                     {reference: 'Matthew 6:1-6, 16-21', reading_type: 'Gospel'}])
day = lent.days.find_by(name: "First Sunday in Lent")
day.readings.create([{reference: 'Genesis 2:15-17; 3:1-7', reading_type: 'First Reading'},
                     {reference: 'Psalm 32', reading_type: 'Psalm'},
                     {reference: 'Romans 5:12-19', reading_type: 'Second Reading'},
                     {reference: 'Matthew 4:1-11', reading_type: 'Gospel'}])
day = lent.days.find_by(name: "Second Sunday in Lent")
day.readings.create([{reference: 'Genesis 12:1-4a', reading_type: 'First Reading'},
                     {reference: 'Psalm 121', reading_type: 'Psalm'},
                     {reference: 'Romans 4:1-5, 13-17', reading_type: 'Second Reading'},
                     {reference: 'John 3:1-17', reading_type: 'Gospel'},
                     {reference: 'Matthew 17:1-9', reading_type: 'Gospel Alternate'}])
day = lent.days.find_by(name: "Third Sunday in Lent")
day.readings.create([{reference: 'Exodus 17:1-7', reading_type: 'First Reading'},
                     {reference: 'Psalm 95', reading_type: 'Psalm'},
                     {reference: 'Romans 5:1-11', reading_type: 'Second Reading'},
                     {reference: 'John 4:5-42', reading_type: 'Gospel'}])
day = lent.days.find_by(name: "Fourth Sunday in Lent")
day.readings.create([{reference: '1 Samuel 16:1-13', reading_type: 'First Reading'},
                     {reference: 'Psalm 23', reading_type: 'Psalm'},
                     {reference: 'Ephesians 5:8-14', reading_type: 'Second Reading'},
                     {reference: 'John 9:1-41', reading_type: 'Gospel'}])
day = lent.days.find_by(name: "Fifth Sunday in Lent")
day.readings.create([{reference: 'Ezekiel 37:1-14', reading_type: 'First Reading'},
                     {reference: 'Psalm 130', reading_type: 'Psalm'},
                     {reference: 'Romans 8:6-11', reading_type: 'Second Reading'},
                     {reference: 'John 11:1-45', reading_type: 'Gospel'}])
day = lent.days.find_by(name: "Sixth Sunday in Lent - Liturgy of the Palms")
day.readings.create([ {reference: 'Psalm 118:1-2, 19-29', reading_type: 'Psalm'},
                     {reference: 'Matthew 21:1-11', reading_type: 'Gospel'}])
day = lent.days.find_by(name: "Sixth Sunday in Lent - Liturgy of the Passion")
day.readings.create([{reference: 'Isaiah 50:4-9a', reading_type: 'First Reading'},
                     {reference: 'Psalm 31:9-16', reading_type: 'Psalm'},
                     {reference: 'Philippians 2:5-11', reading_type: 'Second Reading'},
                     {reference: 'Matthew 26:14-27:66', reading_type: 'Gospel'},
                     {reference: 'Matthew 27:11-54', reading_type: 'Gospel Alternate'}])
day = lent.days.find_by(name: "Annunciation of the Lord")
day.readings.create([{reference: 'Isaiah 7:10-14', reading_type: 'First Reading'},
                     {reference: 'Psalm 45', reading_type: 'Psalm'},
                     {reference: 'Psalm 40:5-10', reading_type: 'Psalm Alternate'},
                     {reference: 'Hebrews 10:4-10', reading_type: 'Second Reading'},
                     {reference: 'Luke 1:26-38', reading_type: 'Gospel'}])

puts "Creating Holy Week Days - Year A"
holyweek = yearA.seasons.find_by(name: "Holy Week")
day = holyweek.days.find_by(name: "Monday of Holy Week")
day.readings.create([{reference: 'Isaiah 42:1-9', reading_type: 'First Reading'},
                     {reference: 'Psalm 36:5-11', reading_type: 'Psalm'},
                     {reference: 'Hebrews 9:11-15', reading_type: 'Second Reading'},
                     {reference: 'John 12:1-11', reading_type: 'Gospel'}])
day = holyweek.days.find_by(name: "Tuesday of Holy Week")
day.readings.create([{reference: 'Isaiah 49:1-7', reading_type: 'First Reading'},
                     {reference: 'Psalm 71:1-14', reading_type: 'Psalm'},
                     {reference: '1 Corinthians 1:18-31', reading_type: 'Second Reading'},
                     {reference: 'John 12:20-36', reading_type: 'Gospel'}])
day = holyweek.days.find_by(name: "Wednesday of Holy Week")
day.readings.create([{reference: 'Isaiah 50;4-9a', reading_type: 'First Reading'},
                     {reference: 'Psalm 70', reading_type: 'Psalm'},
                     {reference: 'Hebrews 12:1-3', reading_type: 'Second Reading'},
                     {reference: 'John 13:21-32', reading_type: 'Gospel'}])
day = holyweek.days.find_by(name: "Holy Thursday")
day.readings.create([{reference: 'Exodus 12:1-4, (5-10), 11-14', reading_type: 'First Reading'},
                     {reference: 'Psalm 116:1-2, 12-19', reading_type: 'Psalm'},
                     {reference: '1 Corinthians 11:23-26', reading_type: 'Second Reading'},
                     {reference: 'John 13:1-17, 31b-35', reading_type: 'Gospel'}])
day = holyweek.days.find_by(name: "Good Friday")
day.readings.create([{reference: 'Isaiah 52:13-53:12', reading_type: 'First Reading'},
                     {reference: 'Psalm ', reading_type: 'Psalm'},
                     {reference: 'Hebrews 10:16-25', reading_type: 'Second Reading'},
                     {reference: 'Hebrews 4:14-16; 5:7-9', reading_type: 'Second Reading Alternate'},
                     {reference: 'John 18:1-19:42', reading_type: 'Gospel'}])
day = holyweek.days.find_by(name: "Holy Saturday")
day.readings.create([{reference: 'Job 14:1-14', reading_type: 'First Reading'},
                     {reference: 'Lamentations 3:1-9, 19-24', reading_type: 'First Reading Alternate'},
                     {reference: 'Psalm 31:1-4, 15-16', reading_type: 'Psalm'},
                     {reference: '1 Peter 4;1-8', reading_type: 'Second Reading'},
                     {reference: 'Matthew 27:57-66', reading_type: 'Gospel'},
                     {reference: 'John 19:38-42', reading_type: 'Gospel'}])
puts "Creating Easter Days - Year A"
easter = yearA.seasons.find_by(name: "Easter")
day = easter.days.find_by(name: "Resurrection of the Lord - Easter Vigil")
day.readings.create([{reference: 'Genesis 1:1-2:4a', reading_type: 'First Reading'},
                     {reference: 'Psalm 136:1-9, 23-26', reading_type: 'Psalm'},
                     {reference: 'Genesis 7:1-5, 11-18; 8:6-18; 9:8-13', reading_type: 'First Reading'},
                     {reference: 'Psalm 46', reading_type: 'Psalm'},
                     {reference: 'Genesis 22:1-18', reading_type: 'First Reading'},
                     {reference: 'Psalm 16', reading_type: 'Psalm'},
                     {reference: 'Exodus 14:10-31; 15:20-21', reading_type: 'First Reading'},
                     {reference: 'Exodus 15:1b-13, 17-18', reading_type: 'Psalm'},
                     {reference: 'Isaiah 55:1-11', reading_type: 'First Reading'},
                     {reference: 'Isaiah 12:2-6', reading_type: 'Psalm'},
                     {reference: 'Baruch 3:9-15, 32-4:4', reading_type: 'First Reading'},
                     {reference: 'Proverbs 8:1-8, 19-21, 9:4b-6', reading_type: 'Psalm'},
                     {reference: 'Psalm 19', reading_type: 'Psalm Alternate'},
                     {reference: 'Ezekiel 36:24-28', reading_type: 'First Reading'},
                     {reference: 'Psalm 42 and 43', reading_type: 'Psalm'},
                     {reference: 'Ezekiel 37:1-4', reading_type: 'First Reading'},
                     {reference: 'Psalm 143', reading_type: 'Psalm'},
                     {reference: 'Zephaniah 3:14-20', reading_type: 'First Reading'},
                     {reference: 'Psalm 98', reading_type: 'Psalm'},
                     {reference: 'Romans 6:3-11', reading_type: 'Second Reading'},
                     {reference: 'Psalm 114', reading_type: 'Psalm'},
                     {reference: 'Matthew 28:1-10', reading_type: 'Gospel'}])
day = easter.days.find_by(name: "Resurrection of the Lord - Easter Day")
day.readings.create([{reference: 'Acts 10:34-43', reading_type: 'First Reading'},
                     {reference: 'Jeremiah 31:1-6', reading_type: 'First Reading Alternate'},
                     {reference: 'Psalm 118:1-2, 14-24', reading_type: 'Psalm'},
                     {reference: 'Colossians 3:1-4', reading_type: 'Second Reading'},
                     {reference: 'Acts 10:34-43', reading_type: 'Second Reading Alternate'},
                     {reference: 'John 20:1-18', reading_type: 'Gospel'},
                     {reference: 'Matthew 28:1-10', reading_type: 'Gospel'}])
day = easter.days.find_by(name: "Resurrection of the Lord - Easter Evening")
day.readings.create([{reference: 'Isaiah 25:6-9', reading_type: 'First Reading'},
                     {reference: 'Psalm 114', reading_type: 'Psalm'},
                     {reference: '1 Corinthians 5:6b-8', reading_type: 'Second Reading'},
                     {reference: 'Luke 24:13-49', reading_type: 'Gospel'}])
day = easter.days.find_by(name: "Second Sunday of Easter")
day.readings.create([{reference: 'Acts 2:14a, 22-32', reading_type: 'First Reading'},
                     {reference: 'Psalm 16', reading_type: 'Psalm'},
                     {reference: '1 Peter 1:3-9', reading_type: 'Second Reading'},
                     {reference: 'John 20:19-31', reading_type: 'Gospel'}])
day = easter.days.find_by(name: "Third Sunday of Easter")
day.readings.create([{reference: 'Acts 2:14a, 36-41', reading_type: 'First Reading'},
                     {reference: 'Psalm 116:1-4, 12-19', reading_type: 'Psalm'},
                     {reference: '1 Peter 1:17-23', reading_type: 'Second Reading'},
                     {reference: 'Luke 24:13-35', reading_type: 'Gospel'}])
day = easter.days.find_by(name: "Fourth Sunday of Easter")
day.readings.create([{reference: 'Acts 2:42-47', reading_type: 'First Reading'},
                     {reference: 'Psalm 23', reading_type: 'Psalm'},
                     {reference: '1 Peter 2:19-25', reading_type: 'Second Reading'},
                     {reference: 'John 10:1-10', reading_type: 'Gospel'}])
day = easter.days.find_by(name: "Fifth Sunday of Easter")
day.readings.create([{reference: 'Acts 7:55-60', reading_type: 'First Reading'},
                     {reference: 'Psalm 31:1-5, 15-16', reading_type: 'Psalm'},
                     {reference: '1 Peter 2:2-10', reading_type: 'Second Reading'},
                     {reference: 'John 14:1-14', reading_type: 'Gospel'}])
day = easter.days.find_by(name: "Sixth Sunday of Easter")
day.readings.create([{reference: 'Acts 17:22-31', reading_type: 'First Reading'},
                     {reference: 'Psalm 66:8-20', reading_type: 'Psalm'},
                     {reference: '1 Peter 3:13-22', reading_type: 'Second Reading'},
                     {reference: 'John 14:15-21', reading_type: 'Gospel'}])
day = easter.days.find_by(name: "Ascension of the Lord")
day.readings.create([{reference: 'Acts 1:1-11', reading_type: 'First Reading'},
                     {reference: 'Psalm 47', reading_type: 'Psalm'},
                     {reference: 'Psalm 93', reading_type: 'Psalm Alternate'},
                     {reference: 'Ephesians 1:15-23', reading_type: 'Second Reading'},
                     {reference: 'Luke 24:44-53', reading_type: 'Gospel'}])
day = easter.days.find_by(name: "Seventh Sunday of Easter")
day.readings.create([{reference: 'Acts 1:6-14', reading_type: 'First Reading'},
                     {reference: 'Psalm 69:1-10, 32-35', reading_type: 'Psalm'},
                     {reference: '1 Peter 4:12-14; 5:6-11', reading_type: 'Second Reading'},
                     {reference: 'John 17:1-11', reading_type: 'Gospel'}])
day = easter.days.find_by(name: "Day of Pentecost")
day.readings.create([{reference: 'Acts 2:1-21', reading_type: 'First Reading'},
                     {reference: 'Numbers 11:24-30', reading_type: 'First Reading Alternate'},
                     {reference: 'Psalm 104:24-34, 35b', reading_type: 'Psalm'},
                     {reference: '1 Corinthians 12:3b-13', reading_type: 'Second Reading'},
                     {reference: 'Acts 2:1-21', reading_type: 'Second Reading Alternate'},
                     {reference: 'John 20: 19-23', reading_type: 'Gospel'},
                     {reference: 'John 7:37-39', reading_type: 'Gospel Alternate'}])
day = easter.days.find_by(name: "Visitation of Mary to Elizabeth")
day.readings.create([{reference: '1 Samuel 2:1-10', reading_type: 'First Reading'},
                     {reference: 'Psalm 113', reading_type: 'Psalm'},
                     {reference: 'Romans 12:9-16b', reading_type: 'Second Reading'},
                     {reference: 'Luke 1:39-57', reading_type: 'Gospel'}])
puts "Seeding done."
