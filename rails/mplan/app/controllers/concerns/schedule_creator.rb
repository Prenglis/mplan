class ScheduleCreator
   def initialize(schedule_id)
       @schedule_id = schedule_id
       @schedule_candidate = create_candidate()
       @schedule_candidate_reverse = reverse_schedule(schedule_candidate)
    end
    def create_candidate()
        sh = ScheduleHeader.find(@schedule_id)
        sh = ScheduleHeader.find(1)
        from = sh[:from]
        to = sh[:to]
        masses = Mass.where("begin >= :from AND end <= :to", {from: from, to: to}).joins(:requirements)
        # reqs = masses.distinct.pluck(:requirement.id)
        # reqs = Requirement.joins(:masses).where(requirement_id: reqs);
        reqs = Requirement.joins(:masses).pluck(:position_id, :amount).distinct
        acos = Acolyte.ids
        lineup = {}
        lineup_reverse = {}
        i = 0
        j = acos.length-1
        temp_lineup = []
        temp_lineup_reverse = []
        reqs.each{ |rid,pid,amount|
          if lineup[rid].nil?
              lineup[rid] = {}
              lineup_reverse[rid] = {}
          end
          temp_lineup = []
          temp_lineup_reverse = []
          amount.times{
              temp_lineup += [acos[i%acos.length]]
              temp_lineup_reverse += [acos[j%acos.length]]
              i = i + 1
              j = j - 1
          }
          lineup[rid][pid] = temp_lineup
          lineup_reverse[rid][pid] = temp_lineup_reverse
        }
    end
    def reverse_schedule(schedule_candidate)
        return schedule_candidate
    end
end
sc = ScheduleCreator.new(1)