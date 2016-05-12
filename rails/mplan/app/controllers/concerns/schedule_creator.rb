class ScheduleCreator
   def initialize(schedule_id)
       @schedule_id = schedule_id
       @schedule_candidate = create_candidate()
       @schedule_candidate_reverse = reverse_schedule(schedule_candidate)
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
         restrictions = Requirement.joins(:masses)
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