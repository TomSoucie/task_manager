class Task
  def intialize(task_params)
    @description = task_params["description"]
    @title       = task_params["title"]
  end
end 