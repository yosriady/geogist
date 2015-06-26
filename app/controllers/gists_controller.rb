class GistsController < ApplicationController
  before_action :set_gist, only: [:show, :edit, :update, :destroy]

  # GET /gists
  def index
    @gists = Gist.all
  end

  # GET /gists/1
  def show
  end

  # GET /gists/new
  def new
    @gist = Gist.new
  end

  # GET /gists/1/edit
  def edit
  end

  # POST /gists
  def create
    @gist = Gist.new(gist_params)

    if @gist.save
      redirect_to @gist, notice: 'Gist was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /gists/1
  def update
    if @gist.update(gist_params)
      redirect_to @gist, notice: 'Gist was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /gists/1
  def destroy
    @gist.destroy
    redirect_to gists_url, notice: 'Gist was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gist
      @gist = Gist.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gist_params
      params[:gist]
    end
end
