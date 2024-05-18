class ChatController < ApplicationController
  include OpenAi

  def index
  end

  def create
    @response = Integration.new(params[:content])
  end
end
