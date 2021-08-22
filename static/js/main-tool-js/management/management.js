// script for manage assets and crew inventory estimation table

var inventory_estimation = $('#inventory_estimation').DataTable( {
    paging:         true,
    pageLength : 3,          
    "ajax": {
    "url": "http://127.0.0.1:5000/inventoryestimation",
    "type": "GET",
    "datatype": 'json',    
        },
    columns: [
        { 'data': 'inv_type' },
        { 'data': 'inv_specifications' },
        { 'data': 'inv_requirement' },
        { 'data': 'inv_availability_status' },
    ], 
} );            

// script for manage assets and crew, crew availability table 
var crew_requirement = $('#crew_requirement').DataTable( {
    paging: true,
    "sDom":"tipr",
    pageLength : 3,          
    "ajax": {
    "url": "http://127.0.0.1:5000/crewrequirement",
    "type": "GET",
    "datatype": 'json',    
        },
    columns: [
        { 'data': 'crew_type' },
        { 'data': 'manpower' },
        { 'data': 'crew_location' },
    ], 
} );          
