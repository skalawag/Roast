class ChunksController < ApplicationController
  before_action :set_chunk, only: [:show, :edit, :update, :destroy]

  # GET /chunks
  # GET /chunks.json
  def index
    @chunks = Chunk.all
  end

  # GET /chunks/1
  # GET /chunks/1.json
  def show
  end

  # GET /chunks/new
  def new
    @chunk = Chunk.new
  end

  # GET /chunks/1/edit
  def edit
  end

  # POST /chunks
  # POST /chunks.json
  def create
    @chunk = Chunk.new(chunk_params)

    respond_to do |format|
      if @chunk.save
        format.html { redirect_to @chunk, notice: 'Chunk was successfully created.' }
        format.json { render :show, status: :created, location: @chunk }
      else
        format.html { render :new }
        format.json { render json: @chunk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chunks/1
  # PATCH/PUT /chunks/1.json
  def update
    respond_to do |format|
      if @chunk.update(chunk_params)
        format.html { redirect_to @chunk, notice: 'Chunk was successfully updated.' }
        format.json { render :show, status: :ok, location: @chunk }
      else
        format.html { render :edit }
        format.json { render json: @chunk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chunks/1
  # DELETE /chunks/1.json
  def destroy
    @chunk.destroy
    respond_to do |format|
      format.html { redirect_to chunks_url, notice: 'Chunk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chunk
      @chunk = Chunk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chunk_params
      params.require(:chunk).permit(:order_id, :bean_id, :quantity)
    end
end
