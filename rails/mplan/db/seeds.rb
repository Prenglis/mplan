# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Church.create(name: 'Herz-Jesu')
Church.create(name: 'St. Ummeln')
Position.create(description: 'Kreuz')
Position.create(description: 'Weihrauch')
Position.create(description: 'Fahne')
Position.create(description: 'Bischoffshelfer')
Position.create(description: 'Altar')
Position.create(description: 'Kerze')
Position.create(description: 'Flambo')
Requirement.create(position_id:1, amount:1)
Requirement.create(position_id:2, amount:2)
Requirement.create(position_id:3, amount:4)
Requirement.create(position_id:4, amount:2)
Requirement.create(position_id:5, amount:2)
Requirement.create(position_id:6, amount:2)
Requirement.create(position_id:7, amount:8)
r1 = Requirement.where(id: [1,2,3,4,5,6,7])
r2 = Requirement.where(id: [5,6])
r3 = Requirement.where(id: [1,2,5,6,7])
m = Mass.create(begin: DateTime.parse('2016-04-29 16:30:00'), end: DateTime.parse('2016-04-29 17:30:00'), church_id:1)
m.requirements << r2
m = Mass.create(begin: DateTime.parse('2016-05-01 11:30:00'), end: DateTime.parse('2016-05-01 12:30:00'), church_id:1)
m.requirements << r3
m = Mass.create(begin: DateTime.parse('2016-05-07 16:30:00'), end: DateTime.parse('2016-05-07 17:30:00'), church_id:1)
m.requirements << r2
m = Mass.create(begin: DateTime.parse('2016-05-08 11:30:00'), end: DateTime.parse('2016-05-08 12:30:00'), church_id:1)
m.requirements << r2
m = Mass.create(begin: DateTime.parse('2016-05-14 16:30:00'), end: DateTime.parse('2016-05-14 17:30:00'), church_id:1)
m.requirements << r2
m = Mass.create(begin: DateTime.parse('2016-05-15 11:30:00'), end: DateTime.parse('2016-05-15 12:30:00'), church_id:1)
m.requirements << r2
m = Mass.create(begin: DateTime.parse('2016-05-21 16:30:00'), end: DateTime.parse('2016-05-21 17:30:00'), church_id:1)
m.requirements << r2
m = Mass.create(begin: DateTime.parse('2016-05-22 11:30:00'), end: DateTime.parse('2016-05-22 12:30:00'), church_id:1)
m.requirements << r1
m = Mass.create(begin: DateTime.parse('2016-05-28 16:30:00'), end: DateTime.parse('2016-05-28 17:30:00'), church_id:1)
m.requirements << r2
m = Mass.create(begin: DateTime.parse('2016-05-29 11:30:00'), end: DateTime.parse('2016-05-29 12:30:00'), church_id:1)
m.requirements << r3
Constraint.create(ctype:1)
Constraint.create(ctype:1)
Constraint.create(ctype:1)
Constraint.create(ctype:2)
Constraint.create(ctype:2)
Constraint.create(ctype:2)
Constraint.create(ctype:3)
Constraint.create(ctype:3)
Constraint.create(ctype:3)
Constraint.create(ctype:3)
Constraint.create(ctype:3)
Constraint.create(ctype:3)
Constraint.create(ctype:3)
IntervalConstraint.create(constraint_id:1, from: DateTime.parse('2016-04-01 16:30:00'), to: DateTime.parse('2016-05-21 17:30:00'))
IntervalConstraint.create(constraint_id:2, from: DateTime.parse('2016-05-08 11:30:00'), to: DateTime.parse('2016-05-14 17:30:00'))
IntervalConstraint.create(constraint_id:3, from: DateTime.parse('2016-05-14 16:30:00'), to: DateTime.parse('2016-06-29 16:30:00'))
MassConstraint.create(constraint_id:4, mass_id:1)
MassConstraint.create(constraint_id:5, mass_id:8)
MassConstraint.create(constraint_id:6, mass_id:3)
WeekdayConstraint.create(constraint_id:7, day:1, name:'Montag')
WeekdayConstraint.create(constraint_id:8, day:2, name:'Dienstag')
WeekdayConstraint.create(constraint_id:9, day:3, name:'Mittwoch')
WeekdayConstraint.create(constraint_id:10, day:4, name:'Donnerstag')
WeekdayConstraint.create(constraint_id:11, day:5, name:'Freitag')
WeekdayConstraint.create(constraint_id:12, day:6, name:'Samstag')
WeekdayConstraint.create(constraint_id:13, day:7, name:'Sonntag')
a = Acolyte.create(firstname: 'Jonas', lastname: 'Bmann', church_id:1, since: Date.parse('01-05-2009'))
a.constraints << Constraint.where(id: [1, 5])
a = Acolyte.create(firstname: 'Hanno', lastname: 'Rats', church_id:1, since: Date.parse('01-05-2008'))
a.constraints << Constraint.where(id: [13])
a = Acolyte.create(firstname: 'Nicole', lastname: 'Rats', church_id:1, since: Date.parse('01-05-2007'))
a.constraints << Constraint.where(id: [12])
a = Acolyte.create(firstname: 'Jannis', lastname: 'Schinken', church_id:1, since: Date.parse('01-05-2006'))
a.constraints << Constraint.where(id: [2])
a = Acolyte.create(firstname: 'Ibrahim', lastname: 'Helf', church_id:1, since: Date.parse('01-05-2009'))
a.constraints << Constraint.where(id: [3])
a = Acolyte.create(firstname: 'Jos', lastname: 'Eil', church_id:1, since: Date.parse('01-05-2008'))
a = Acolyte.create(firstname: 'Joha', lastname: 'Nna', church_id:1, since: Date.parse('01-05-2007'))
a = Acolyte.create(firstname: 'Fel', lastname: 'Atz', church_id:1, since: Date.parse('01-05-2006'))
a = Acolyte.create(firstname: 'Chris', lastname: 'Kall', church_id:1, since: Date.parse('01-05-2015'))
a = Acolyte.create(firstname: 'Alex', lastname: 'Lipp', church_id:1, since: Date.parse('01-05-2016'))
a = Acolyte.create(firstname: 'Pia', lastname: 'Blatt', church_id:1, since: Date.parse('01-05-2014'))
a = Acolyte.create(firstname: 'Judi', lastname: 'Roep', church_id:1, since: Date.parse('01-05-2013'))
a = Acolyte.create(firstname: 'Lyn', lastname: 'Wend', church_id:1, since: Date.parse('01-05-2012'))
a = Acolyte.create(firstname: 'Jud', lastname: 'Eil', church_id:1, since: Date.parse('01-05-2011'))
a = Acolyte.create(firstname: 'Dav', lastname: 'Bär', church_id:1, since: Date.parse('01-05-2010'))
a = Acolyte.create(firstname: 'Luk', lastname: 'Schu', church_id:1, since: Date.parse('01-05-2009'))
a = Acolyte.create(firstname: 'Fra', lastname: 'Bei', church_id:1, since: Date.parse('01-05-2008'))
a = Acolyte.create(firstname: 'Uwe', lastname: 'Bri', church_id:1, since: Date.parse('01-05-2007'))
a = Acolyte.create(firstname: 'Tim', lastname: 'Hen', church_id:1, since: Date.parse('01-05-2006'))
a = Acolyte.create(firstname: 'Ali', lastname: 'Gat', church_id:1, since: Date.parse('01-05-2005'))
a = Acolyte.create(firstname: 'Sud', lastname: 'Den', church_id:1, since: Date.parse('01-05-2012'))
a = Acolyte.create(firstname: 'DN', lastname: 'P', church_id:1, since: Date.parse('01-05-2010'))
a = Acolyte.create(firstname: 'Max', lastname: 'Wit', church_id:1, since: Date.parse('01-05-2013'))
a = Acolyte.create(firstname: 'Jan', lastname: 'Zin', church_id:1, since: Date.parse('01-05-2009'))
a = Acolyte.create(firstname: 'Fal', lastname: 'Wel', church_id:1, since: Date.parse('01-05-2008'))
ScheduleHeader.create(from: DateTime.parse('2016-04-29 16:30:00'), to: DateTime.parse('2016-05-29 12:30:00'))

#initialize lineup_items
positions = Position.ids
Acolyte.ids.each{ |a_id|
  positions.each{ |p_id|
    LineupItem.create(acolyte_id:a_id, position_id:p_id)
  }
}
 # sh = ScheduleHeader.find(1)
 #        from = sh[:from]
 #        to = sh[:to]
 #        masses = Mass.where("begin >= :from AND end <= :to", {from: from, to: to})#.joins(:requirements)
 #        reqs = Requirement.joins(:masses).where(masses: {id: masses.ids}).pluck(:position_id, :amount)
 #        acos = Acolyte.ids
 #        lineup = {}
 #        lineup_reverse = {}
 #        i = 0
 #        j = acos.length-1
 #        temp_lineup = []
 #        temp_lineup_reverse = []
 #        reqs.each{ |pid,amount|
 #          if lineup[pid].nil?
 #              lineup[pid] = []
 #              lineup_reverse[pid] = []
 #          end
 #          temp_lineup = []
 #          temp_lineup_reverse = []
 #          amount.times{
 #              temp_lineup += [acos[i%acos.length]]
 #              temp_lineup_reverse += [acos[j%acos.length]]
 #              i = i + 1
 #              j = j - 1
 #          }
 #          lineup[pid] += [temp_lineup]
 #          lineup_reverse[pid] += [temp_lineup_reverse]
 #        }
 #        lineup.each{ |k,v|
 #          v.each{ |aco_list|
 #           aco_list.each{ |entry|
 #                LineupItem.create(acolyte_id:entry, position_id:k)
 #           }
 #          }
 #        }
 #       lineup_reverse.each{ |k,v|
 #          v.each{ |aco_list|
 #           aco_list.each{ |entry|
 #                LineupItem.create(acolyte_id:entry, position_id:k)
 #           }
 #          }
 #        }

