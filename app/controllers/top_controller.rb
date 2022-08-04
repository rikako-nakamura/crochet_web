class TopController < ApplicationController
  before_action :login_required, only: %i[show]

  def index;end

  def service;end

  def privacy;end

end
