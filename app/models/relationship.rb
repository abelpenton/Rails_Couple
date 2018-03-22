class Relationship < ApplicationRecord
    belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
    belongs_to :recive, :foreign_key => :recive_id, class_name: 'User'

    scope :between, -> (sender_id,recive_id) do
        where("(relationships.sender_id = ? AND relationships.recive_id =?)", sender_id,recive_id)
    end

    scope :between1, -> (sender_id,recive_id) do
        where("(relationships.sender_id = ? AND relationships.recive_id =?)", recive_id, sender_id)
    end
end
