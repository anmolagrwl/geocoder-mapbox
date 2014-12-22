# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  L.mapbox.accessToken = 'pk.eyJ1IjoiYW5tb2wxNzcxIiwiYSI6ImNYZXN1N28ifQ.s-1Hjdb2UR9_6eeTPJGn3A'

  # initialize the map on the 'map' div
  map = L.mapbox.map('map', 'anmol1771.jd89a8ep')
  featureLayer = L.mapbox.featureLayer()
  featureLayer.addTo(map)

  $.ajax(url: '/locations.json').done (data) ->
      geojson = $.parseJSON(data)
      featureLayer.setGeoJSON(geojson)


# add custom popups to each marker
#   L.map.featureLayer.on 'layeradd', (e) ->
#     marker = e.layer
#     properties = marker.feature.properties
#
#     # create custom popup
#     popupContent =  '<div class="popup">' +
#                       '<p>' + properties.name + '</p>' +
#                     '</div>'
#
#     # http://leafletjs.com/reference.html#popup
#     marker.bindPopup popupContent,
#       closeButton: false
#       minWidth: 320
#
# get JSON object
# on success, parse it and
# hand it over to MapBox for mapping
