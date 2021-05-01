class SearchController < ApplicationController
  def index
    results = PgSearch.multisearch.map(&:searchable)
  end
end
