# Homepage (Root path)
get '/' do
  erb :index
end

#this adds a path on how to get to the messages page
get '/messages' do   #this will show up in http://localhost:3000/message
  #'Message List here'  #this is a hardcoded string, we want it to render the correct HTML
  @messages = Message.all  #sinatra will make this @messages variable
  erb :'messages/index'   #available in messages/index.erb
end

get '/new' do
  erb :'messages/new'
end

