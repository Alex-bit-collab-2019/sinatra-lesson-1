require 'sinatra'

get '/' do  
  erb :index
end

get '/contacts' do
  @title = 'Contacts'
  @message = 'Phone: 920-251-0000'
  erb :message
end

get '/faq' do
  @title = 'FAQ'
  @message = 'FAQ Under costruction'
  erb :message
end

get '/something' do
  @title = 'Something'
  @message = 'IPSUM MOBILE'
  erb :message
end



post '/' do  
  @login = params[:aaa]
  @password = params[:bbb]
  
  if @login == 'admin' && @password == 'secret'
    erb :welcome
  
  elsif @login == 'admin' && @password == 'admin'
    @message = 'Haha, nice try! Access denied!'
    erb :index  
  else
    @message = 'Access denied!'
    erb :index
  end

end



