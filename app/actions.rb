# Homepage (Root path)
get '/' do
  erb :index
end

#this adds a path on how to get to the messages page
get '/messages' do 
  'Message List here'
end