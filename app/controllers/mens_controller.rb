class MensController < ApplicationController
    def index
        @users = User.where("sex == 'Men'")
    end
end
