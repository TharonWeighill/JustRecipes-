class Users_Controller < ApplicationController
    set :views, Proc.new { File.join(root, "../views/users") }

    get '/newuser' do
        erb :new
    end

    get '/users' do
      erb :index
    end
end 