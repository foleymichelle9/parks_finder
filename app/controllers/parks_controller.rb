class ParksController < ApplicationController
  def index
    @view_state = params['state']
    parks_objects = ParkService.new.get_parks_object(params['state'])
    @parks = parks_objects[1..-1]
    @total_parks = parks_objects[0]
  end
end
