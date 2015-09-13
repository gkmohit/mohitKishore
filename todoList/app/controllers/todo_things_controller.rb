class TodoThingsController < ApplicationController
  before_action :set_todo_thing, only: [:show, :edit, :update, :destroy]

  # GET /todo_things
  # GET /todo_things.json
  def index
    @todo_things = TodoThing.all
  end

  # GET /todo_things/1
  # GET /todo_things/1.json
  def show
  end

  # GET /todo_things/new
  def new
    @todo_thing = TodoThing.new
  end

  # GET /todo_things/1/edit
  def edit
  end

  # POST /todo_things
  # POST /todo_things.json
  def create
    @todo_thing = TodoThing.new(todo_thing_params)

    respond_to do |format|
      if @todo_thing.save
        format.html { redirect_to @todo_thing, notice: 'Todo thing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @todo_thing }
      else
        format.html { render action: 'new' }
        format.json { render json: @todo_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_things/1
  # PATCH/PUT /todo_things/1.json
  def update
    respond_to do |format|
      if @todo_thing.update(todo_thing_params)
        format.html { redirect_to @todo_thing, notice: 'Todo thing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @todo_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_things/1
  # DELETE /todo_things/1.json
  def destroy
    @todo_thing.destroy
    respond_to do |format|
      format.html { redirect_to todo_things_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_thing
      @todo_thing = TodoThing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_thing_params
      params.require(:todo_thing).permit(:title, :description)
    end
end
