require './config/environment'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

    get '/api/v1/orders' do
      content_type 'application/json'
      Order.all.to_json
    end

    # get '/orders' do
    #   "Hello World"
    # end
end
