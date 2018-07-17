class MemberLoungesController < ApplicationController
  before_action :set_member_lounge, only: [:show, :edit, :update, :destroy]

  # GET /member_lounges
  # GET /member_lounges.json
  def index
    @member_lounges = MemberLounge.all
  end

  # GET /member_lounges/1
  # GET /member_lounges/1.json
  def show
  end

  # GET /member_lounges/new
  def new
    @member_lounge = MemberLounge.new
  end

  # GET /member_lounges/1/edit
  def edit
  end

  # POST /member_lounges
  # POST /member_lounges.json
  def create
    @member_lounge = MemberLounge.new(member_lounge_params)

    respond_to do |format|
      if @member_lounge.save
        format.html { redirect_to @member_lounge, notice: 'Member lounge was successfully created.' }
        format.json { render :show, status: :created, location: @member_lounge }
      else
        format.html { render :new }
        format.json { render json: @member_lounge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_lounges/1
  # PATCH/PUT /member_lounges/1.json
  def update
    respond_to do |format|
      if @member_lounge.update(member_lounge_params)
        format.html { redirect_to @member_lounge, notice: 'Member lounge was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_lounge }
      else
        format.html { render :edit }
        format.json { render json: @member_lounge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_lounges/1
  # DELETE /member_lounges/1.json
  def destroy
    @member_lounge.destroy
    respond_to do |format|
      format.html { redirect_to member_lounges_url, notice: 'Member lounge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_lounge
      @member_lounge = MemberLounge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_lounge_params
      params.fetch(:member_lounge, {})
    end
end
