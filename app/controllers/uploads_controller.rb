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

 def destroy
  @upload = Upload.find(params[:id])
  @upload.destroy
  flash[:notice] = "Sucessfully deleted your file"
  redirect_to uploads_path
 end


 def download
    @upload = Upload.find(params[:id])
    send_file(@upload)
    flash[:notice] = "Your file has been downloaded"
    redirect_to uploads_path 
 end


end
