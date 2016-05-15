class ScheduleCreator
   def initialize(schedule_id)
       @schedule_id = schedule_id
       @schedule_candidate = create_candidate()
   end
   def calculate_fitness(schedule_id)
   end
   def print_schedule(schedule_id)
       schedule_id = 1
       scs = ScheduleCandidate.joins(:schedules).where(schedules: {id: schedule_id}).select([:id, :mass_id])
       output_string = ""
       output_strings = []
       old_pos = 0
       masses = Mass.where(id: scs.collect{|entry| entry[:mass_id]})
       scs = scs.collect{|entry| entry[:id]}
       mass_counter = 0
       acos = Acolyte.select("*")
       scs.each{ |sc|
           mass = masses[mass_counter]
           mass_counter = mass_counter + 1
           output_string = ""
           output_string += "#{mass[:begin]}"
           lineup = LineupItem.joins(:schedule_candidates).where(schedule_candidates: {id: sc}).order(:position_id)
           old_pos = 0
           lineup.each{ |entry|
             if old_pos != entry[:position_id]
               old_pos = entry[:position_id]
               position_name = Position.find(entry[:position_id])[:description]
               output_string += " #{position_name}: "
             end
             aco = acos.bsearch{|acolyte| acolyte[:id] == entry[:acolyte_id]}
             aco_name = " #{aco[:firstname]} #{aco[:lastname]}, "
             output_string += aco_name
           }
           output_strings += [output_string]
        }
        output_strings.each{ |outputs|
          puts outputs
        }
       
   end
   def create_candidate()
       @schedule_id = 1
       sh = ScheduleHeader.find(@schedule_id)
       from = sh[:from]
       to = sh[:to]
       masses = Mass.where("begin >= :from AND end <= :to", {from: from, to: to})
       aco_ids = Acolyte.ids
       sc_ids = []
       aco_used = []
       current_acolyte = 0
       acolyte_length = aco_ids.length
       schedule = Schedule.create(schedule_header_id: @schedule_id, fitness: 0.0)
       masses.each{ |mass|
         schedule_candidate = ScheduleCandidate.create(mass_id: mass.id)
         schedule_candidate.schedules << Schedule.where(id: schedule.id)
         sc_ids = sc_ids + [schedule_candidate.id]
         restrictions = Requirement.joins(:masses).where(masses: {id: mass[:id]})
         restrictions.each{ |restriction|
           aco_used = []
           acos_needed = restriction[:amount]
           pos = restriction[:position_id]
           acos_needed.times{
               aco_used = aco_used + [aco_ids[current_acolyte%acolyte_length]]
               current_acolyte = current_acolyte + 1
           }
           schedule_candidate.lineup_items << LineupItem.where(acolyte_id: aco_used, position_id: pos)
         }
       }
   end
   def reverse_schedule(schedule_candidate)
       return schedule_candidate
   end
end