require 'open-uri'

class FlatsController < ApplicationController
  before_action :set_flats
  URL = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'.freeze

  def index; end

  def show
    id = params[:id]
    @flat = @flats.find do |flat|
      flat['id'].to_i == id.to_i
    end
  end

  private

  def set_flats
    response = open(URL).read
    @flats = JSON.parse(response)
  end

end
