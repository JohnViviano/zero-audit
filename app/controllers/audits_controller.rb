class AuditsController < ApplicationController
  before_action :set_audit, only: %i[ show edit update destroy ]

  # GET /audits or /audits.json
  def index
    @audits = Audit.all
  end

  # GET /audits/1 or /audits/1.json
  def show
  end

  # GET /audits/new
  def new
    @audit = Audit.new
  end

  # GET /audits/1/edit
  def edit
  end

  # POST /audits or /audits.json
  def create
    @audit = Audit.new(audit_params)

    respond_to do |format|
      if @audit.save
        format.html { redirect_to @audit, notice: "Audit was successfully created." }
        format.json { render :show, status: :created, location: @audit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @audit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audits/1 or /audits/1.json
  def update
    respond_to do |format|
      if @audit.update(audit_params)
        format.html { redirect_to @audit, notice: "Audit was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @audit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @audit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audits/1 or /audits/1.json
  def destroy
    @audit.destroy!

    respond_to do |format|
      format.html { redirect_to audits_path, notice: "Audit was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audit
      @audit = Audit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def audit_params
      params.require(:audit).permit(:title, :owner, :status, :due_on, :details)
    end
end
