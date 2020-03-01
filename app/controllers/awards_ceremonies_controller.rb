class AwardsCeremoniesController < ApplicationController
  before_action :set_awards_ceremony, only: [:show, :edit, :update, :destroy]

  # GET /awards_ceremonies
  # GET /awards_ceremonies.json
  def index
    @awards_ceremonies = AwardsCeremony.all
  end

  # GET /awards_ceremonies/1
  # GET /awards_ceremonies/1.json
  def show
  end

  # GET /awards_ceremonies/new
  def new
    @awards_ceremony = AwardsCeremony.new
  end

  # GET /awards_ceremonies/1/edit
  def edit
  end

  # POST /awards_ceremonies
  # POST /awards_ceremonies.json
  def create
    @awards_ceremony = AwardsCeremony.new(awards_ceremony_params)

    respond_to do |format|
      if @awards_ceremony.save
        format.html { redirect_to @awards_ceremony, notice: 'Awards ceremony was successfully created.' }
        format.json { render :show, status: :created, location: @awards_ceremony }
      else
        format.html { render :new }
        format.json { render json: @awards_ceremony.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /awards_ceremonies/1
  # PATCH/PUT /awards_ceremonies/1.json
  def update
    respond_to do |format|
      if @awards_ceremony.update(awards_ceremony_params)
        format.html { redirect_to @awards_ceremony, notice: 'Awards ceremony was successfully updated.' }
        format.json { render :show, status: :ok, location: @awards_ceremony }
      else
        format.html { render :edit }
        format.json { render json: @awards_ceremony.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /awards_ceremonies/1
  # DELETE /awards_ceremonies/1.json
  def destroy
    @awards_ceremony.destroy
    respond_to do |format|
      format.html { redirect_to awards_ceremonies_url, notice: 'Awards ceremony was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_awards_ceremony
      @awards_ceremony = AwardsCeremony.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def awards_ceremony_params
      params.require(:awards_ceremony).permit(:name, :description, :image)
    end
end
