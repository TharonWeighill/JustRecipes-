class UserController < ApplicationController
    post '/users' do
        @user = params["user"]
        erb :users
    end
end 