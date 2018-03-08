class Sample < ApplicationRecord
    belongs_to :request

    def completed?
        !time_completed.blank?
    end
end
