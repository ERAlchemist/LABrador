class Sample < ApplicationRecord
    belongs_to :request, optional: true

    def completed?
        !time_completed.blank?
    end

    def self.import(file, request)
        return if file.blank?
         spreadsheet = Roo::Spreadsheet.open(file.path)
        # spreadsheet.set_value(1,3, 'request_id', nil)
        # header = spreadsheet.row(1)
        # header.push('request_id')
        header = ['tank','lot_id','request_id']
         (2..spreadsheet.last_row).each do |i|
           spreadsheet.set_value(i, 3, request.id, nil)
           row = Hash[[header, spreadsheet.row(i)].transpose]
           puts row
           sample = Sample.new
           sample.attributes = row
           sample.save!
         end
       end 
=begin
    def self.open_spreadsheet(file)
        case File.extname(file.original_filename)
        when ".csv" then CSV.new(file.path, nil, :ignore)
        when ".xls" then Excel.new(file.path, nil, :ignore)
        when ".xlsx" then Excelx.new(file.path, nil, :ignore)
        else raise "Unknown file type: #{file.original_filename}"
        end
    end
=end
end

