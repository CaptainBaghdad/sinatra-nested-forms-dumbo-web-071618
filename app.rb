require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    
    get '/'  do 
       erb :root
    end
    
    get '/new'  do 
      
      erb :'pirates/new'
    end 
    
    
    
    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate][:name],params[:pirate][:height],params[:pirate][:weight])
      @fisrt_ship = Ship.new(params[:pirate][:ships][:name], params[:pirate][:ships][:type],params[:pirate][:ships][:booty])
      
      @pirate
      @fisrt_ship
     # puts @pirate
      
      erb :'pirates/show'
      
      
    end 
    
    

  end
end
