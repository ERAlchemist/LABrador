class SamplesController < ApplicationController
    before_action :set_request
    before_action :set_sample, except: [:create, :import]
  
    def create
      @sample = @request.samples.create(sample_params)
      redirect_to @request
    end
  
    def destroy
      if @sample.destroy
        flash[:success] = "Sample was deleted"
      else
        flash[:error] = "Sample could not be deleted."
      end
      redirect_to @request
    end
  
    def complete
      @sample.update_attribute(:time_completed, Time.now)
      redirect_to @request, notice: "Sample completed"
    end

    def import
      if params[:file].blank?
        flash[:error] = 'No file selected.'
      end
      Sample.import(params[:file], @request)
      redirect_to @request, notice: "Samples imported"
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
