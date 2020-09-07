require 'open-uri'

class FlatsController < ApplicationController
  URL = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'.freeze
  before_action :set_flats

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
