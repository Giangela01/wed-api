class GuestDetailsController < ApplicationController
  before_action :set_guest_detail, only: [:show, :update, :destroy]

  # GET /guest_details
  def index
    @guest_details = GuestDetail.all

    render json: @guest_details
  end

  # GET /guest_details/1
  def show
    render json: @guest_detail
  end

  # POST /guest_details
  def create
    @guest_detail = GuestDetail.new(guest_detail_params)

    if @guest_detail.save
      render json: @guest_detail, status: :created, location: @guest_detail
    else
      render json: @guest_detail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /guest_details/1
  def update
    if @guest_detail.update(guest_detail_params)
      render json: @guest_detail
    else
      render json: @guest_detail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /guest_details/1
  def destroy
    @guest_detail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest_detail
      @guest_detail = GuestDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def guest_detail_params
      params.require(:guest_detail).permit(:firstName, :lastName, :email, :plusone)
    end
end
