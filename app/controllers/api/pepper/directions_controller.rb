class Api::Pepper::DirectionsController < Api::Pepper::PepperController
  #include DirectionGettable
  after_action :complete_direction, only: [:index]

  def index
  end

  private

  def direction
    @direction ||= Direction.where(complete_f: false).asc(:created_at).first
  end
  helper_method :direction

  def complete_direction
    if direction
      direction.complete_f = true
      direction.save!
    end
  end
end
