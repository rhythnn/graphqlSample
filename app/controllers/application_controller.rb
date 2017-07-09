class ApplicationController < ActionController::API
  before_action :authenticate_by_api_token!
end
