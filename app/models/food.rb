class Food < ActiveRecord::Base

  require "nutritionix/api_1_1"

  def provider
    app_id = '4c11b0bb'
    app_key = '538db9962bdf46e2516d0e645aa5e44f'
    Nutritionix::Api_1_1.new(app_id, app_key)
  end

  def search_api_for(query)
    search_params = {
      limit: 10,
      fields: ['date','item_name', 'nf_calories'],
      query: query
    }

    results_json = provider.nxql_search(search_params)
    results = JSON.parse(results_json)
    results.fetch("hits") if results.key?("hits")
  end


end
