class ApplicationController < ActionController::API
  # required for jbuilder and rspec-rails gems
  include ActionController::ImplicitRender
  include ActionController::Helpers
  include ActionController::Caching
end
