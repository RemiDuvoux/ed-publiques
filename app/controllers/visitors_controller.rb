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

  def update

  end

  def show
    @visitor = Visitor.find(params['id'])
    @possible_needs = Need::NAMES
  end

  def update_needs
    @visitor = Visitor.find(params["visitor_id"])
    Need::NAMES.each do |name|
      VisitorNeed.create(
        visitor: @visitor,
        need: Need.find_by(name: name)
      )
    end
    redirect_to action: 'show', id: @visitor.id
  end
end
