class Api::ApiController < ApplicationController
  include CorsAccessible
  prepend_before_action :cors_set_access_control_headers

  def cors_preflight_check
    render text: ''
  end

  def error_json_render(obj)
    @message = obj.errors.messages
    render "api/application/error", status: 422
  end

  def handle_404(exception = nil)
    @message = exception.message
    render "api/application/error", status: 404
  end
end
