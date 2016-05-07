class Api::Pepper::ResultsController < Api::Pepper::PepperController
  after_action :complete_result, only: [:index]

  def index
  end

  def clear
    Result.all.update_all(complete_f: true)
  end

  private

  def result
    @result ||= Result.where(complete_f: false).desc(:created_at).first
  end
  helper_method :result

  def complete_result
    if result
      result.complete_f = true
      result.save!
    end
  end
end
