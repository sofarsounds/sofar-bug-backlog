class Task < ActiveRecord::Base
	validates_presence_of :title
	validate :future_completed_date

	DAYS_LATE = 10
	PRIORITIES = {
		highest: 3,
		high: 2,
		medium: 1,
		low: 0
	}

	def days_elapsed_since_creation
		(Time.now.to_date - self.created_at.to_date).to_i
	end

	def late?
		if self.days_elapsed_since_creation >= DAYS_LATE
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
