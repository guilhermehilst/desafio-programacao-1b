class UploadController < ApplicationController

  def create
    unless params[:file]
      return redirect_to root_url
    end
    @parse = Parser.new(file: params[:file].read.force_encoding("UTF-8"))
    sales,total = @parse.parse_file
    session[:sales] = sales
    session[:total] = total
    redirect_to upload_url
  end

  def show
    @sales = session[:sales]
    @total = session[:total]
    unless @sales && @total
      return redirect_to root_url
    end
  end

end
