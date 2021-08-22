// script for prediced asset damage table(assets to be affected)
var asset_damage = $('#asset_damage').DataTable( {
    paging: true,
    "sDom":"tipr",
    pageLength : 3,          
    "ajax": {
    "url": "http://127.0.0.1:5000/assetdamage",
    "type": "GET",
    "datatype": 'json',    
        },
    columns: [
        { 'data': 'a_type' },
        { 'data': 'a_id' },
        { 'data': 'a_location' },
        { 'data': 'a_specifications' },
        { 'data': 'a_criticality_index' },
        { 'data': 'a_operational_limits' },
    ], 
} );



// script for predicted asset damage inventory table
var inventory_available = $('#inventory_available').DataTable( {
    paging: true,
    "sDom":"tipr",
    pageLength : 3,          
    "ajax": {
    "url": "http://127.0.0.1:5000/inventoryavailable",
    "type": "GET",
    "datatype": 'json',    
        },
    columns: [
        { 'data': 'inv_type' },
        { 'data': 'specifications' },
        { 'data': 'quantity' },
    ], 
} );     



// **********************Predicted asset damage Map***********************************  
var divElement = document.getElementById('viz1627335502230');                 
var vizElement = divElement.getElementsByTagName('object')[0];                    
vizElement.style.width='100%';
vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    
var scriptElement = document.createElement('script');                    
scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    
vizElement.parentNode.insertBefore(scriptElement, vizElement);            

