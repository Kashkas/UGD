/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(":range").rangeinput({
    progress: true,
    change: function (e, i) {
        updateRadius(circle, i.value);
    }
});

var app = angular.module('myApp', []);

app.config(function ($sceProvider) {
    $sceProvider.enabled(false);
});

app.service('Map', ['$http', '$q', function ($http, $q) {
        var map;
        var circulo;
        var posicionInicial;
        var markers = [];
        this.init = function (servidor) {
            var options = {
                center: new google.maps.LatLng(-33.443, -70.655),
                zoom: 15,
                disableDefaultUI: true
            };
            map = new google.maps.Map(document.getElementById("map"), options);

            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function (position) {

                    posicionInicial = new google.maps.Marker({
                        position: {lat: position.coords.latitude, lng: position.coords.longitude},
                        map: map,
                        title: 'Tu Posición'
                    });

                    var pos = {lat: position.coords.latitude, lng: position.coords.longitude};
                    map.setCenter(pos);
                    circulo = new google.maps.Circle({
                        strokeColor: '#AAAAFF',
                        strokeOpacity: 0.8,
                        strokeWeight: 2,
                        fillColor: '#AAAAFF',
                        fillOpacity: 0.35,
                        map: map,
                        center: pos,
                        radius: 1000
                    });
                    llamarServicioInterno(servidor, 1000);
                }, function () {

                });
            }
            else {
                posicionInicial = new google.maps.Marker({
                    position: {lat: -33.3909497399, lng: -70.6424109708},
                    map: map,
                    title: 'Posición Estándar'
                });
                var pos = {lat: posicionInicial.getPosition().lat, lng: posicionInicial.getPosition().lng};
                map.setCenter(pos);
                circulo = new google.maps.Circle({
                    strokeColor: '#AAAAFF',
                    strokeOpacity: 0.8,
                    strokeWeight: 2,
                    fillColor: '#AAAAFF',
                    fillOpacity: 0.35,
                    map: map,
                    center: pos,
                    radius: 1000
                });
            }
            
        };

        this.cambiarCirculo = function (valor) {
            circulo.setRadius(parseInt(valor));
        };

        this.llamarServicio = function (servidor, radio) {
            llamarServicioInterno(servidor, radio);
        };
        
        function llamarServicioInterno(servidor, radio){
            $http.get(servidor + "?long=" + posicionInicial.getPosition().lng() + "&lat=" + posicionInicial.getPosition().lat() + "&radio=" + radio / 1000)
                    .then(function (response) {
                        angular.forEach(markers, function (value, key) {
                            value.setMap(null);
                        });
                        angular.forEach(response.data, function (value, key) {
                            var marker = new google.maps.Marker({
                                position: {lat: value.loc[1], lng: value.loc[0]},
                                map: map,
                                title: value['NOMBRE FANTASIA']
                            });
                            markers.push(marker);
                        });

                    }, function (response) {

                    });
        }

    }]);

app.controller('nuevoLugar', function ($scope, Map, $timeout, $http) {
    var _timeout;
    $scope.rangeValue = 1000;
    $scope.servidor = document.getElementsByName("servidor")[0].value;
    Map.init($scope.servidor);

    $scope.cambiaCirculo = function () {
        Map.cambiarCirculo($scope.rangeValue);
        if (_timeout) { //if there is already a timeout in process cancel it
            $timeout.cancel(_timeout);
        }
        _timeout = $timeout(function () {
            Map.llamarServicio($scope.servidor, $scope.rangeValue);
            _timeout = null;
        }, 800);
    };
});

