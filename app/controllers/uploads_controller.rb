class UploadsController < ApplicationController


  def index
  
   @uploads = Upload.all 

  end

  def new
   @upload = Upload.new
  end

 def create
  @upload = Upload.new(params[:upload])
 	if @upload.save
		flash[:notice] = "your file has been uploaded"
		redirect_to uploads_path

	else
		render :action => 'new'
	end
 end
  

end
