class TrainingsController < ApplicationController

  before_filter :get_training, only: [:show, :edit, :update]

  def index
    @trainings = Training.all
  end

  def show
  end

  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    if @training.save
      flash[:success] = "Training class created successfully!"
      redirect_to trainings_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @training.update_attributes(training_params)
      flash[:success] = "#{@training.title} updated successfully!"
      redirect_to training_path(@training)
    else
      render :edit
    end
  end

  private

  def get_training
    @training = Training.find(params[:id])
  end

  def training_params
    params.require(:training).permit(:title, :description)
  end



end