class Task < ActiveRecord::Base
	validates_presence_of :title
	validate :future_completed_date

	def days_elapsed_since_creation
		(Time.now.to_date - self.created_at.to_date).to_i
	end

	private

	def future_completed_date
    if !completed.blank? && completed > Date.today
      self.errors.add(:completed, "can't be in the future")
    end
  end

end
