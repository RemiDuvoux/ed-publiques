class VisitorsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :create, :show, :update_needs ]

  def create
    @visitor = Visitor.create(
      age: params["visitor"][:age],
      scholarship: params["visitor"][:scholarship],
      has_handicap: params["visitor"][:has_handicap],
      zip_code: params["visitor"][:zip_code]
    )
    redirect_to action: 'show', id: @visitor.id
  end

  def show
    @visitor = Visitor.find(params['id'])
    @possible_needs = Need::NAMES
    @compatible_schemes = @visitor.compatible_schemes
  end

  def update_needs
    @visitor = Visitor.find(params["visitor_id"])
    Need::NAMES.each do |n|
      if params[n].present?
        VisitorNeed.create(visitor: @visitor, need: Need.find_by(name: params[n]))
      end
    end
    redirect_to action: 'show', id: @visitor.id
  end
end
