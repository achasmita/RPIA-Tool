
// script for threat type datatable        
var threat_type = $('#threat_type').DataTable( {
    "paging": false,    
    "info" : false,
    "sDom":"tipr",   
    "ajax": {
        "url": "http://127.0.0.1:5000/threattype",
        "type": "GET",
        "datatype": 'json',    
        },
    columns: [
        { 'data': 't_property' },
        { 'data': 't_value' },
    ], 
});

// **********************Threat Modeling Map*********************************** 

var divElement = document.getElementById('viz1627662464505');                    
var vizElement = divElement.getElementsByTagName('object')[0];                    
vizElement.style.width='100%';
vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    
var scriptElement = document.createElement('script');                    
scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    
vizElement.parentNode.insertBefore(scriptElement, vizElement);             