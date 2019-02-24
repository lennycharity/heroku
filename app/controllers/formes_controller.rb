class FormesController < ApplicationController   
  def index   
     @formes = Forme.all   
  end   
     
  def new   
     @forme = Forme.new   
  end   
     
  def create   
     @forme = Forme.new(forme_params)   
        
     if @forme.save   
        redirect_to formes_path, notice: "Successfully uploaded."   
     else   
        render "new"   
     end   
        
  end   
     
  def destroy   
     @forme = Forme.find(params[:id])   
     @forme.destroy   
     redirect_to formes_path, notice:  "Successfully deleted."   
  end   
     
  private   
     def forme_params   
     params.require(:forme).permit(:title, :category, :price, :year, :attachment)   
  end   
     
end  