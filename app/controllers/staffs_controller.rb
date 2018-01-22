class StaffsController < ApplicationController
  def index
    @staffs = Staff.all
  end

  def show
    @staff = Staff.find(params[:id])
  end

  def new
    @staff = Staff.new
  end
  
  def create
    @staff = Staff.new(staff_params)
    if @staff.save
    flash[:success]= "Your information created!"
    redirect_to @staff
      else
    render 'new'
    end
  end

  def edit
    @staff = Staff.find(params[:id])
  end
  
  def update
    @staff = Staff.find(params[:id])
    if @staff.update(staff_params)
    flash[:success]= "Your information updated!"
    redirect_to @staff
      else
    render 'edit'
    end
  end
  
  def destroy
    @staff = Staff.find(params[:id])
    if @staff.destroy
    flash[:success]= "Your information deleted!"
    redirect_to @staff
      else
    end
  end
  
  
  private
  
  # Strong Parameter
  
  def staff_params
    params.require(:staff).
    permit(:name,:email,:birthday,:job,:region,:memo)
  end
end
