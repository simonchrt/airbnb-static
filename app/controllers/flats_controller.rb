require 'open-uri'

class FlatsController < ApplicationController
  before_action :set_flats

  def index
    # response = open("https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json")
    # @flats = JSON.parse(response.read)
  end

  def show
    # response = open("https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json")
    # @flats = JSON.parse(response.read)
    @flat = @flats.find { |flat| flat["id"] == params[:id].to_i }
  end

  private

  def set_flats
    response = open("https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json")
    @flats = JSON.parse(response.read)
  end
end
