class OrganisationsController < ApplicationController
  before_action :set_organisation, only: [:edit, :update, :show]

  def index
  end

  def new
    @organisation = Organisation.new
  end

  def show
  end

  def create
    @organisation = Organisation.new(organisation_params)
    @organisation.user = current_user
    if @organisation.save
      flash[:success] = "La tua organizzazione è stata inserita!"
      redirect_to new_race_path
    else
      flash[:alert] = "Ops, c'è un errore nel form. Per favore controlla :)"
      render :new
    end
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def set_organisation
    @organisation = Organisation.find(params[:id])
  end

  def organisation_params
    params.require(:organisation).permit(:name, :email, :phone, :logo, :location, :description)
  end
end
