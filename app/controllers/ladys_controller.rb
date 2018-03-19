class LadysController < ApplicationController
    def index
        @users = User.where("sex == 'Lady'").paginate(page: params[:page], :per_page => 5)
    end
end
