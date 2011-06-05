window.Map = {
  init: function() {
    this.markers = [];
    this.render();
    return this.Resources.add();
  },
  options: {
    zoom: 4,
    center: new google.maps.LatLng(-13.8959, -54.8438),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  },
  render: function() {
    var element;
    element = document.getElementById("map");
    return this.map = new google.maps.Map(element, this.options);
  },
  Marker: {
    add: function(resource) {
      return Map.markers.push(new google.maps.Marker(this.options(resource)));
    },
    options: function(resource) {
      return {
        title: resource.name,
        position: new google.maps.LatLng(resource.latitude, resource.longitude),
        map: Map.map
      };
    },
    clusterer: function() {
      return new MarkerClusterer(Map.map, Map.markers, {});
    }
  },
  Resources: {
    add: function() {
      return $.getJSON(window.resource_url, function(resources) {
        var resource, _i, _len, _results;
        _results = [];
        for (_i = 0, _len = resources.length; _i < _len; _i++) {
          resource = resources[_i];
          _results.push(Map.Marker.add(resource));
        }
        return _results;
      });
    }
  }
};
$().ready(function() {
  return Map.init();
});

