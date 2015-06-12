class IncidentsController < ApplicationController
  before_action :set_incident, only: [:show, :edit, :update, :destroy]

  # GET /incidents
  # GET /incidents.json
  def index
    @incidents = Incident.all
  end

  # GET /incidents/1
  # GET /incidents/1.json
  def show
  end

  # GET /incidents/new
  def new
    @incident_form = IncidentForm.new
  end

  # GET /incidents/1/edit
  def edit
  end

  # POST /incidents
  # POST /incidents.json
  def create
    @incident_form = IncidentForm.new incident_form_params

    respond_to do |format|
      if @incident_form.save
        format.html { redirect_to incidents_path, notice: 'Incident was successfully created.' }
      else
        render :new
      end
    end
  end

  # PATCH/PUT /incidents/1
  # PATCH/PUT /incidents/1.json
  def update
    respond_to do |format|
      if @incident.update(incident_params)
        format.html { redirect_to @incident, notice: 'Incident was successfully updated.' }
        format.json { render :show, status: :ok, location: @incident }
      else
        format.html { render :edit }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incidents/1
  # DELETE /incidents/1.json
  def destroy
    @incident.destroy
    respond_to do |format|
      format.html { redirect_to incidents_url, notice: 'Incident was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incident
      @incident = Incident.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incident_form_params
      params.require(:incident_form).permit(:summary, :year, :month, :city, :state,
      :context, :abuse_force, :abuse_search, :abuse_misconduct,
      :abuse_intimidation, :abuse_sexual, :abuse_escalation, :abuse_animal,
      {force_variety: []}, {search_variety: []}, {misconduct_variety: []},
      {intimidation_variety: []}, {sexual_variety: []}, {escalation_variety: []},
      :victim_count, :victim_notes, {victim_race: []}, {victim_age: []}, {victim_gender: []},
      :officer_count, {officer_race: []}, {officer_tenure: []}, {officer_gender: []},
      {outcome_physical_variety: []}, {outcome_legal_variety: []},
      {outcome_hr_variety: []},
      {outcome_internal_variety: []}, {outcome_dept_statement_variety: []},
      {outcome_union_statement_variety: []}, :outcome_dollars, :department_name,
      :department_city, :department_state, :department_county, :department_level)
    end
end
