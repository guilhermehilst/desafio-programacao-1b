class UploadController < ApplicationController

  def create
    unless params[:file]
      flash[:alert] = "Please select a file to upload"
      return redirect_to root_url
    end
    @parse = Parser.new(file: params[:file].read.force_encoding("UTF-8"))
    sales,total = @parse.parse_file
    session[:sales] = sales
    session[:total] = total
    flash[:success] = "File parsed with success"
    redirect_to upload_url
  end

  def show
    @sales = session[:sales]
    @total = session[:total]
    unless @sales && @total
      flash[:alert] = "Please select a file to upload"
      return redirect_to root_url
    end
  end

end
