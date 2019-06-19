class HomeController < ApplicationController
    def index
        @users = User.where('zip_code' => current_user.zip_code)
        @items = []
        @users.each do |user|
            if user.zip_code != current_user.zip_code
                @items.push(User.find(user.id).items)
            end
        end
    end
end