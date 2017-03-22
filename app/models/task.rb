class Task < ActiveRecord::Base
	validates_presence_of :title
	validate :future_completed_date

	PRIORITIES = {
		highest: 	3,
		high: 		2,
		medium: 	1,
		low: 			0
	}
	DAYS_LATE = {
		highest: 	3,
		high: 		10,
		medium: 	20,
		low: 			30
	}

	def days_elapsed_since_creation
		(Time.now.to_date - self.created_at.to_date).to_i
	end

	def late?
		if self.days_elapsed_since_creation >= DAYS_LATE[PRIORITIES.invert[self.priority]]
			true
		else
			false
		end
	end

	private

	def future_completed_date
    if !completed.blank? && completed > Date.today
      self.errors.add(:completed, "can't be in the future")
    end
  end

end
