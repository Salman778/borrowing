class HomeController < ApplicationController
    def index
        @users = User.where('zip_code' => current_user.zip_code)
        @items = []
        @users.each do |user|
            @items.push(User.find(user.id).items)
        end
    end
end