class SamplesController < ApplicationController
    before_action :set_request
    before_action :set_sample, except: [:create, :import]
  
    def create
      @sample = @request.samples.create(sample_params)
      redirect_to "#{url_for(@request)}##{@sample.id}"
    end
  
    def destroy
      if @sample.destroy
        flash[:success] = "Sample was deleted"
      else
        flash[:error] = "Sample could not be deleted."
      end
      redirect_to "#{url_for(@request)}##{@sample.id-1}"
    end
  
    def complete
      @sample.update_attribute(:time_completed, Time.now)
      redirect_to "#{url_for(@request)}##{@sample.id}", notice: "Sample Completed!"
    end

    def import
      if params[:file].blank?
        flash[:error] = 'No file selected.'
      end
      Sample.import(params[:file], @request)
      redirect_to @request, notice: "Samples imported"
    end

    def set_as_empty
      @sample.update_attribute(:is_empty, true)
      redirect_to "#{url_for(@request)}##{@sample.id}", notice: "Tank Empty"
    end
  
    private
  
    def set_request
      @request = Request.find(params[:request_id])
    end
  
    def set_sample
      @sample = @request.samples.find(params[:id])
    end
  
    def sample_params
      params[:sample].permit(:tank, :lot_id)
    end
end
