class GigsController < ApplicationController
  before_action :set_gig, only: [ :show, :edit, :update, :destroy]

  # GET /gigs
  # GET /gigs.json
  def index
    @gigs = Gig.all
    render json: @gigs 
  end

  # GET /gigs/1
  # GET /gigs/1.json
  def show
    render json: @gig
  end

  # POST /gigs
  # POST /gigs.json
  def create
    @gig = Gig.new(gig_params)
    @gig.user_id = params[:user_id]

    respond_to do |format|
      if @gig.save
        format.html { redirect_to @gig, notice: 'Gig was successfully created.' }
        format.json { render :show, status: :created, location: @gig }
      else
        format.html { render :new }
        format.json { render json: @gig.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gigs/1
  # PATCH/PUT /gigs/1.json
  def update
      if @gig.update(gig_params)
        render json: @gig
      else
       render json: @gig.errors, status: :unprocessable_entity
      end
  end

  # DELETE /gigs/1
  # DELETE /gigs/1.json
  def destroy
    puts "deleting a route"
    @gig.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gig
      @gig = Gig.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gig_params
      params.require(:gig).permit(:title, :client, :client_contact, :location, :date, :price, :user_id, :id, :created_at, :updated_at, :time, :user_id)
    end
end
