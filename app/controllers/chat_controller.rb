class ChatController < ApplicationController # :nodoc:
  before_action :authenticate

  def index
    @messages = Message.order(created_at: :asc).last(20)
  end

  private

  def authenticate
    redirect_to login_path unless session[:username]
  end
end
