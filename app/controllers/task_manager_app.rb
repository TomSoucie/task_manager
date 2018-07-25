class TaskManagerApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/' do
    erb :dashboard
  end

  get '/tasks' do
    @tasks = ["Cleaning", "Homework", "Workout"]
    erb :tasks
  end 

  post '/tasks' do
    #when we want to SEND information to the server
  end

end