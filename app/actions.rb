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

get '/messages/new' do
  @message = Message.new
  erb :'messages/new'
end

post '/messages' do
  @message = Message.new(
    title: params[:title],
    content: params[:content],
    author: params[:author]
  )

  if @message.save
    redirect '/messages'
  else
    erb :'messages/new'
  end
end

get '/messages/:id' do
  @message = Message.find params[:id]
  erb :'messages/show'
end



































