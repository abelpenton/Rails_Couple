class MensController < ApplicationController
    def index
        @users = User.where("sex == 'Men'").paginate(page: params[:page], :per_page => 5)

    end
end
