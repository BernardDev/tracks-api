class OrderController < ApplicationController

    get '/orders/new' do
        erb :'orders/new'
    end

    post '/orders' do
        @order = Order.create(
            address: params[:address], 
            item: params[:item], 
            price: params[:price], 
            total: params[:total]
            )
            redirect "/orders/#{@order.id}"
    end

    # patch '/' do
    # end

    # delete '/' do
    # end


end