class KnittingDiagramsController < ApplicationController
  before_action :login_required, only: %i[create index]

  def index
    @knitting_diagrams = KnittingDiagram.all.where(user_id: current_user.id).includes(:user)
  end

  def new
    @knitting_diagrams = KnittingDiagram.new
  end

  def create
    @knitting_diagrams = current_user.knitting_diagrams.new(knitting_diagram_params)
    @knitting_diagrams.save
    redirect_to draws_path
  end

  private

  def knitting_diagram_params
    params.permit(:square_outer, :square_center, :square_inner,:user_id)
  end
end
