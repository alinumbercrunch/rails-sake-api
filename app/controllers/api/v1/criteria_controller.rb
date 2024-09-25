class Api::V1::CriteriaController < ApplicationController
  def index
  @criteria = Restaurant.pluck(:criteria).flatten.uniq
  render json: @criteria
end
end
