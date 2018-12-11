class Sample < ApplicationRecord
    belongs_to :request, optional: true

    amoeba do
        enable
        nullify [:is_empty, :time_completed, :complete]
      end

    def completed?
        !time_completed.blank?
    end

    def empty?
        !is_empty.blank?
    end

    def self.import(file, request, size="250mL")
        return if file.blank?
         spreadsheet = Roo::Spreadsheet.open(file.path)
         sizer = spreadsheet.cell(2,3)
         size = sizer if !sizer.blank?
         header = ['tank','lot_id','request_id']
         (2..spreadsheet.last_row).each do |i|
           spreadsheet.set_value(i, 3, request.id, nil)
           row = Hash[[header, spreadsheet.row(i)].transpose]
           sample = Sample.new
           sample.attributes = row
           sample.sample_size = size if  sample.sample_size.blank?
           sample.save!
         end
       end 

end

