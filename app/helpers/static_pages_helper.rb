module StaticPagesHelper

  def location_response
     api_response = HTTParty.post("https://www.googleapis.com/geolocation/v1/geolocate", :query => {:key => "AIzaSyB6DIjuLXLgGRcdb7YL0O7Uw8kd1ubrChA"})
     @json_hash = api_response
  end

  def distance
    response = location_response
    lat = response.parsed_response["location"]["lat"]
    lng = response.parsed_response["location"]["lng"]
    wyncode_lat = 25.8029617
    wyncode_lng = -80.2049477
  end


end
