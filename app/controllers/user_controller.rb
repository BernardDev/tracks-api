class UserController < ApplicationController

get '/users/signup' do
    erb :'/users/signup'
end

post '/users/signup' do
    @user = User.create(username: params[:username], password: params[:password])
    # binding.pry
    redirect "/users/#{@user.id}"
end

get '/users/:id' do
    # "your personal page"
    @user = User.find(params[:id])
    erb :'/users/show'
end

end