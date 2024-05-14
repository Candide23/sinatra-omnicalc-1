require "sinatra"
require "sinatra/reloader"

get("/howdy") do
  
erb(:hello)  
  
end

get("/goodbye") do
  
  erb(:bye)  
    
  end

  get("/square/new") do
    erb(:new_square_calc)
  end


  get '/square/result' do
    @the_num = params.fetch("number").to_f
    @the_result =@the_num **2

    erb(:square_results)
  end

  get '/square_root/new' do
    erb(:new_square_root_calc)
  end

  get '/square_root/result' do
    @the_num = params.fetch("number").to_f
  
    # Calculate the square root
    @the_result = Math.sqrt(@the_num)

    erb(:square_root_results)
  end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
