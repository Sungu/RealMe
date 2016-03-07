class Question < ActiveRecord::Base
    belongs_to :story
    #has_many :reponses
    serialize :choices, Hash
end
