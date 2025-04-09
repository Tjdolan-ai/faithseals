# frozen_string_literal: true

class HeaderTestController < ApplicationController
  # Skip all authentication and authorization checks
  skip_before_action :authenticate_user!, raise: false
  skip_before_action :check_2fa, raise: false
  skip_before_action :maybe_redirect_to_setup, raise: false
  skip_before_action :verify_authenticity_token, raise: false
  
  def index
    # Render the test page without any layout
    render template: 'shared/test_header', layout: false
  end
end