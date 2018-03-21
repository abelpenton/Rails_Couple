class MensController < ApplicationController
    def index
        @users = User.where("sex == 'Men'").paginate(page: params[:page], :per_page => 5)
        if params[:preference]
            @users = @users.where("preference == ? ", params[:preference]).paginate(page: params[:page], :per_page => 5)
        end

        if params[:min_age] && params[:max_age]
            @users = @users.where("age >= ? AND age <= ?", params[:min_age], params[:max_age]).paginate(page: params[:page], :per_page => 5)
        end
        
    end
end
