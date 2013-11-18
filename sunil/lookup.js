function getQueryVariable(variable) {
  var query = window.location.search.substring(1);
  var vars = query.split("&");
  for (var i=0;i<vars.length;i++) {
    var pair = vars[i].split("=");
    if (pair[0] == variable) {
      return pair[1];
    }
  } 
}

var ulid = getQueryVariable("ulid");

if (typeof ulid == "string") {
$.getJSON("data.json",
        function(data){
            var match
            for (var i = 0; i < data.length; i++) {
                if (data[i]["ulid"] == ulid) {
                    match = 1;
                    $("#report").text(ulid + "'s advisor is " + data[i]["advisor"]);
                }

            }
            if (match != 1) {
                    $("#report").text(ulid + " cannot be found.");
                }
        });
}
