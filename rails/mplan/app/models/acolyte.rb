class Acolyte < ActiveRecord::Base
  belongs_to :church
  belongs_to :mass_constraint
  belongs_to :interval_constraint
  belongs_to :weekday_constraint
    def constraint
      # for a given class, returns the appropriate symbol
      # to pass to the ActiveRecord method reflect_on_association
      def reflection_symbol(klass)
        klass.to_s.split("::").last.underscore.to_sym    # for all subclasses of the given base class, returns a
      end
      # list of defined associations within the current class
      def association_methods(mti_base_class)
        Object.subclasses_of(mti_base_class).collect{|p|
          assoc = self.class.reflect_on_association(reflection_symbol(p))
          assoc ? assoc.name : nil
        }.compact
      end
   
      # invoke each association method and return the first
      # that is not null
      association_methods(Constraint).collect{|a|
        self.send a
      }.inject do |a, b| 
        a || b
      end
    end
    def constraint=(c)
      def reflection_symbol(klass)
        klass.to_s.split("::").last.underscore.to_symdef reflection_assignment_method(klass)
        Acolyte.reflect_on_association(reflection_symbol(klass.class)).name.to_s + "="
      end
    
      self.send reflection_assignment_method(c.class), c
    end
end
