class TalkSpeakersController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  before_action :set_talk_speaker, only: %i[ show edit update destroy ]

  # GET /talk_speakers or /talk_speakers.json
  def index
    @talk_speakers = TalkSpeaker.all
    # @talk_speakers = @talk_speakers.where(['speakers.first_name LIKE :filter OR speakers.last_name LIKE :filter', :filter => ('%' + params[:filter] + '%')]) unless params[:filter].blank?
    @talk_speakers = TalkSpeaker.joins(:speaker).where(['speakers.first_name LIKE :filter OR speakers.last_name LIKE :filter', :filter => ('%' + params[:filter] + '%')]) unless params[:filter].blank?
  end

  # GET /talk_speakers/1 or /talk_speakers/1.json
  def show
  end

  # GET /talk_speakers/new
  def new
    @talk_speaker = TalkSpeaker.new
  end

  # GET /talk_speakers/1/edit
  def edit
  end

  # POST /talk_speakers or /talk_speakers.json
  def create
    @talk_speaker = TalkSpeaker.new(talk_speaker_params)

    respond_to do |format|
      if @talk_speaker.save
        format.html { redirect_to @talk_speaker, notice: "Talk speaker was successfully created." }
        format.json { render :show, status: :created, location: @talk_speaker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @talk_speaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /talk_speakers/1 or /talk_speakers/1.json
  def update
    respond_to do |format|
      if @talk_speaker.update(talk_speaker_params)
        format.html { redirect_to @talk_speaker, notice: "Talk speaker was successfully updated." }
        format.json { render :show, status: :ok, location: @talk_speaker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @talk_speaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /talk_speakers/1 or /talk_speakers/1.json
  def destroy
    @talk_speaker.destroy
    respond_to do |format|
      format.html { redirect_to talk_speakers_url, notice: "Talk speaker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_talk_speaker
      @talk_speaker = TalkSpeaker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def talk_speaker_params
      params.require(:talk_speaker).permit(:talk_id, :speaker_id)
    end
end
