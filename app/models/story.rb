class Story < ActiveRecord::Base
    has_one :question
end
