//Updating GU Table
var guTable = $('#gutable').DataTable( {
    paging: true,
    "sDom":"tipr",
    pageLength : 3,
    "ajax": {
        "url": "http://127.0.0.1:5000/gudetails",
        "type": "GET",
        "datatype": 'json',    
    },
    columns: [
        { 'data': 'g_id' },
        { 'data': 'g_kv' },
        { 'data': 'g_unit_id'},
        { 'data': 'g_status'},
        { 'data': 'g_ctrl'},
        { 'data': 'g_mw_measured'},
        { 'data': 'g_rating'},
    ], 
} );


// *************************Generating Units Map********************************

var generating_units_map = L.map('generating_units_map').setView([60.53972879, -145.7344047], 11);
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
	maxZoom: 19,
	attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(generating_units_map);


$("a[href='#generatingunits']").on('shown.bs.tab', function (e) {
    generating_units_map.invalidateSize();
});

//Generating Units file upload
var file = document.getElementById('gudetails');
file.onchange = function(e) {
  var ext = this.value.match(/\.([^\.]+)$/)[1];
  if (ext != 'csv'){
    document.getElementById("gudetailsUpload").disabled = true;
    alert("Please select a csv file")
  }else{
    document.getElementById("gudetailsUpload").disabled = false;}};
