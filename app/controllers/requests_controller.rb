class RequestsController < ApplicationController
    def index
        @requests = Request.all
    end

    def show
        @request = Request.find(params[:id])
    end

    def new
        @request = Request.new
    end

    def create
        @request = Request.create request_params
        redirect_to request_path(@request)
    end

    def edit
        @request = Request.find(params[:id])
    end

    def update
        @request = Request.find(params[:id])
        @request.update request_params
        redirect_to request_path(@request)
    end

    def destroy
        Request.find(params[:id]).destroy
        redirect_to root_path
    end

    private
        def request_params
            params.require(:request).permit(:title, :description, :due_date)
        end

end
