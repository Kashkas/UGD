
function fnc_cargacomunas() {

    $("#selectComuna").get(0).options.length = 0;
    $("#selectComuna").get(0).options[0] = new Option("Cargando Comunas...", "-1");

    $.ajax({
        type: "POST",
        url: "comunasjson?region=" + document.forms[0].region.value,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function(data) {
            $("#selectComuna").get(0).options.length = 0;
            $("#selectComuna").get(0).options[0] = new Option("-- Seleccione --", "-1");
            $.each(data.listaComunas, function(index, element) {
                $("#selectComuna").get(0).options[$("#selectComuna").get(0).options.length] = new Option(element.nombreComuna, element.codigoComuna);
            });
        },
        error: function() {
            $("#selectComuna").get(0).options.length = 0;
            alert("Error al obtener comunas");
        }
    });
}