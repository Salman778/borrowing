class HomeController < ApplicationController
    def index
        @users = User.where('zip_code' => current_user.zip_code)
        @items = []
        @users_details = []
        @users.each do |user|
            if user.id != current_user.id
                @items.push(User.find(user.id).items)
                @users_details.push(User.find(user.id)) 
            end
        end
    end
end