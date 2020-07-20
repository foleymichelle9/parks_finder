class ParkService
    def parks(search_state)

        response = Faraday.get('https://developer.nps.gov/api/v1/parks') do |f|
          f.params[:q] = search_state
          f.params[:api_key] = 'UNjfok1ttK9UIZRKLevHGAllbxDExXWQm35WW9h8'
        end
        JSON.parse(response.body, symbolize_names: true)
    end

    def get_parks_object(search_state)
      parks_info = parks(search_state)
      objects = []
      objects << parks_info[:total]
      parks_info[:data].each do |park_attributes|
        objects << Park.new(park_attributes)
      end
      objects
    end
end
