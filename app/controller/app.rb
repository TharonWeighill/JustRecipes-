class ApplicationController < Sinatra::Base
    # set :views, Proc.new { File.join(root
    # , "../views") }

    get '/' do
      erb :home 
    end

    get '/newuser' do
      erb :newuser
    end

    get '/user/:id' do
      erb :user
    end

    get '/createrecipe' do
      erb :createrecipe
    end

    get '/recipe/:id' do
      erb :recipe
    end
  
  
  end 
end 