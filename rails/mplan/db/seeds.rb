# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Church.create(name: "Herz-Jesu")
Church.create(name: "St. Ummeln")
Mass.create(start: DateTime.parse('2016-04-29 16:30:00'), end: DateTime.parse('2016-04-29 17:30:00'), church_id:1)
Mass.create(start: DateTime.parse('2016-05-01 11:30:00'), end: DateTime.parse('2016-05-01 12:30:00'), church_id:1)
Mass.create(start: DateTime.parse('2016-05-07 16:30:00'), end: DateTime.parse('2016-05-07 17:30:00'), church_id:1)
Mass.create(start: DateTime.parse('2016-05-08 11:30:00'), end: DateTime.parse('2016-05-08 12:30:00'), church_id:1)
Mass.create(start: DateTime.parse('2016-05-14 16:30:00'), end: DateTime.parse('2016-05-14 17:30:00'), church_id:1)
Mass.create(start: DateTime.parse('2016-05-15 11:30:00'), end: DateTime.parse('2016-05-15 12:30:00'), church_id:1)
Mass.create(start: DateTime.parse('2016-05-21 16:30:00'), end: DateTime.parse('2016-05-21 17:30:00'), church_id:1)
Mass.create(start: DateTime.parse('2016-05-22 11:30:00'), end: DateTime.parse('2016-05-22 12:30:00'), church_id:1)
Mass.create(start: DateTime.parse('2016-05-28 16:30:00'), end: DateTime.parse('2016-05-28 17:30:00'), church_id:1)
Mass.create(start: DateTime.parse('2016-05-29 11:30:00'), end: DateTime.parse('2016-05-29 12:30:00'), church_id:1)
Acolyte.create(firstname: 'Jonas', lastname: 'Bmann', church_id:1)
Acolyte.create(firstname: 'Hanno', lastname: 'Rats', church_id:2)
Acolyte.create(firstname: 'Nicole', lastname: 'Rats', church_id:2)
Acolyte.create(firstname: 'Jannis', lastname: 'Schinken', church_id:2)
Acolyte.create(firstname: 'Ibrahim', lastname: 'Helf', church_id:2)
Acolyte.create(firstname: 'Jos', lastname: 'Eil', church_id:1)
Acolyte.create(firstname: 'Joha', lastname: 'Nna', church_id:1)
Acolyte.create(firstname: 'Fel', lastname: 'Atz', church_id:1)
