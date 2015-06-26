$( document ).ready(function() {
    L.mapbox.accessToken = 'pk.eyJ1IjoibGV2ZW50aGFuIiwiYSI6IjNYYi1uMnMifQ.uQvHEvixml-zaHJZhb_WNQ';
    var mapOptions = {
        attributionControl: {compact: true}
    }
    var map = L.mapbox.map('map', 'mapbox.streets', mapOptions)
        .setView([40, -74.50], 2);

    $("#gist_content").on('focusout',function(event){
        try {
            var geojson = $.parseJSON(event.target.value);
        } catch (error) {
            errorMessage(error);
        }

        // Load and fit valid geoJSON
        var featureLayer =  L.mapbox.featureLayer()
            .setGeoJSON(geojson)
            .addTo(map);
        map.fitBounds(featureLayer.getBounds());
        successMessage();
    });

    // Helpers
    function successMessage(){
        $(document).trigger("clear-alerts");
        $(document).trigger("add-alerts", {
          message: "GeoJSON loaded succesfully!",
          priority: "success"
        });
    }

    function errorMessage(err){
        $(document).trigger("add-alerts", {
          message: "Invalid GeoJSON! " + err,
          priority: "error"
        });
    }
});