import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
    }

  connect() {
    // console.log(this.markersValue)
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })
    const map = this.map
    this.#addMarkersToMap()
    this.#fitMapToMarkers()

    const tabEl = document.querySelector('#profile-tab')
    tabEl.addEventListener('click', function (event) {
      map.resize()
    })

  //   this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
  //     mapboxgl: mapboxgl }))
  }


  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach((marker) => {
      bounds.extend([ marker.lng, marker.lat ])
      this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
    })

  }

  #addMarkersToMap() {
    // console.log(this.markersValue)
    this.markersValue.forEach((marker) => {
      // console.log(marker)
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)
      const customMarker = document.createElement("div")
      customMarker.innerHTML = marker.marker_html
      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    })
  }
}
