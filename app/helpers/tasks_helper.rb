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

  def readable_bug_type(task)
    case task.bug_type
    when 2
      "Frontend"
    when 1
      "Backend"
    end
  end
end
