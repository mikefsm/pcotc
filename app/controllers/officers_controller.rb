class OfficersController < ApplicationController

  before_filter :get_officer, only: [:show, :edit, :update]
  def index
    @officers = Officer.all
  end

  def show
  end

  def new
    @officer = Officer.new
  end

  def create
    @officer = Officer.new(officer_params)
    if @officer.save
      flash[:success] = "Officer created successfully!"
      redirect_to officers_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @officer.update_attributes(officer_params)
      flash[:success] = "#{@officer.full_name} updated successfully!"
      redirect_to officer_path(@officer)
    else
      render :edit
    end
  end

  private

  def get_officer
    @officer = Officer.find(params[:id])
  end

  def officer_params
    params.require(:officer).permit(:first_name, :last_name, :email, :phone, :office_name)
  end

end