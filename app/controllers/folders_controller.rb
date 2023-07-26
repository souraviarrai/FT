class FoldersController < ApplicationController
  def index
    @folders = current_user.folders
  end

  def show
    @folder = Folder.find(params[:id])
  end

  def new
    @folder = Folder.new
  end

  def create
    binding.pry
    @folder = current_user.folders.build(folder_params)
    if @folder.save
      redirect_to folders_path, notice: "Successfully Uploaded"
    else
      render 'new'
    end
  end

  def destroy
    @folder = Folder.find(params[:id])
    @folder.destroy
    redirect_to folders_path, notice: 'Successfully deleted'
  end

  private

  def folder_params
    params.require(:folder).permit(:name, :attachment)
  end
end
