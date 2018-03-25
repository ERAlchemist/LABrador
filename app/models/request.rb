class Request < ApplicationRecord
    has_many :samples

    def completed?
        !time_completed.blank?
    end
    
end
