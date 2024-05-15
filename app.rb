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

  get '/payment/new' do
    erb(:new_payment_calc)
  end

  get '/payment/result' do
    @the_apr = params.fetch("apr").to_f/100/12
    @the_years = params.fetch("years").to_i * 12
    @the_principal = params.fetch("principal").to_f

    numerator = @the_apr *  @the_principal
    denominator = 1 - (1 + @the_apr) ** -@the_years
    @the_payment = (numerator / denominator).round(2)
    @interest_rate = (@the_apr *12 * 100).round(4)

    erb(:payment_result)
  end

  
  

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
