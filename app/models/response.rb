class Response < ActiveRecord::Base
    belongs_to :user
    #belongs_to :target, class_name: "User", foreign_key: :target_id
    #belongs_to :question
    
    def self.by_question(question)
        where(question: question)
    end
end
