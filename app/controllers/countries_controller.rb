class CountriesController < ApplicationController
  def index
    countries = Country.order(:name)
    render json: CountrySerializer.new(countries).serializable_hash.to_json
  end

  def show
    country = Country.find(params[:id])
    bottles = generate_bottles(country)
    render json: bottles
  end
end
