require_relative '../models/task'

class TaskManagerApp < Sinatra:: Base
  set :root, File.expand_path("..", __dir__)

  get '/' do
    erb :dashboard
  end

  get '/tasks' do
    @tasks = Task.all
    erb :index
  end

  get '/tasks/new' do
    erb :new
  end

  post '/tasks' do
    task = Task.new(params[:task])
    task.save
    redirect '/tasks'
  end

  get '/tasks/:id' do
    @task = Task.find(params[:id])
    erb :show
  end
end
=======
  end

  get '/tasks' do
    @tasks = ["Cleaning", "Homework", "Workout"]
    erb :tasks
  end

  post '/tasks' do
    #when we want to SEND information to the server
  end

end
