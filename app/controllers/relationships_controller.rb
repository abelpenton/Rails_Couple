class RelationshipsController < ApplicationController
    before_action :authenticate_user!

    def index
        @users = User.all
        @relationships = Relationship.all
    end

    def create
        if Relationship.between(params[:sender_id],params[:recive_id]).present?
            @relationships = Relationship.between(params[:sender_id], params[:recive_id]).first
        else
            @relationships = Relationship.create!(relationship_param)
        end

        redirect_to relationships_path(@conversation)
    end

    private

    def relationship_param
        params.permit(:sender_id, :recive_id)
    end
end
