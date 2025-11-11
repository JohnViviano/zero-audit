class FindingsController < ApplicationController
  before_action :set_audit
  before_action :set_finding, only: %i[show edit update destroy]

  def index
    @findings = @audit.findings
  end

  def show
  end

  def new
    @finding = @audit.findings.build
  end

  def edit
  end

  def create
    @finding = @audit.findings.build(finding_params)
    if @finding.save
      redirect_to [@audit, @finding], notice: "Finding created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @finding.update(finding_params)
      redirect_to [@audit, @finding], notice: "Finding updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @finding.destroy
    redirect_to audit_path(@audit), notice: "Finding deleted."
  end

  private

  def set_audit
    @audit = Audit.find(params[:audit_id])
  end

  def set_finding
    @finding = @audit.findings.find(params[:id])
  end

  def finding_params
    params.require(:finding).permit(:title, :severity, :description, :remediation, :due_on, :status)
  end
end
