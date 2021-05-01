class SearchController < ApplicationController
  def index
    results = flat_results(PgSearch.multisearch(params[:query]).map(&:searchable))
    render json: BottleSerializer.new(results).serializable_hash.to_json
  end

  protected

  def flat_results(results)
    # return bottle records when search returns other resource
    # somewhat inefficient but works fine at this scale for now
    all_bottles = results.map do |record|
      if record.class.to_s == 'Bottle'
        record
      else
        record.bottles
      end
    end

    all_bottles.flatten.uniq
  end
end
