class LadysController < ApplicationController
    def index
        @users = User.where("sex == 'Lady'")
    end
end
