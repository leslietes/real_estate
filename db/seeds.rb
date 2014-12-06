# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Location.create([{ area: 'I.T. Park' },{ area: 'Lahug' },{ area: 'Capitol' }])

Developer.create([{ developer: 'Ayala Land',    permalink: 'ayala-land'   }])
Developer.create([{ developer: 'Primary Homes', permalink: 'primary-homes'}])
