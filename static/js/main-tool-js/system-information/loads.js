//Updating loads Table
var loadTable = $('#loadstable').DataTable( {
    paging: true,
    "sDom":"tipr",
    pageLength : 3,
    "ajax": {
        "url": "http://127.0.0.1:5000/loaddetails",
        "type": "GET",
        "datatype": 'json',    
    },
    columns: [
        { 'data': 'l_id' },
        { 'data': 'l_kv' },
        { 'data': 'l_unit_id'},
        { 'data': 'l_status'},
        { 'data': 'l_type'},
        { 'data': 'l_mw_measured'},
        { 'data': 'l_mvar_measured'},
    ], 
} );

// **********************Loads Map***********************************

var loads_map = L.map('loads_map').setView([60.53972879, -145.7344047], 12);
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
	maxZoom: 19,
	attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(loads_map);

$("a[href='#loads']").on('shown.bs.tab', function (e) {
    loads_map.invalidateSize();
});


//Loads file upload
var file = document.getElementById('loadsdetails');
file.onchange = function(e) {
  var ext = this.value.match(/\.([^\.]+)$/)[1];
  if (ext != 'csv'){
    document.getElementById("loadsdetailsUpload").disabled = true;
    alert("Please select a csv file")
  }else{
    document.getElementById("loadsdetailsUpload").disabled = false;}};
