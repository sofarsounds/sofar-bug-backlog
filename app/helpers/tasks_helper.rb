module TasksHelper

  def readable_priority(task)
    case task.priority
    when 3
      "Highest"
    when 2
      "High"
    when 1
      "Medium"
    when 0
      "Low"
    end
  end

end
