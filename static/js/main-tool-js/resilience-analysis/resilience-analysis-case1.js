// script for resilience analysis datatable case-1
var resilience_analysis_casea = $('#resilience_analysis_casea').DataTable( {
    // "sDom":"tipr",
    "sDom": '<"top"><"bottom"><"clear">',
        paging:         false,
        order:          false,
        searching:       false,
        fixedColumns:   {
            heightMatch: 'none'
        },          
    "ajax": {
    "url": "http://127.0.0.1:5000/resilienceanalysiscasea",
    "type": "GET",
    "datatype": 'json',    
        },
    columns: [
        { 'data': 'property' },
        { 'data': '_value' },
    ], 
} );    
       
// **********************Resilience Analysis Case-1 Map***********************************                            
var divElement = document.getElementById('viz1627662464506');                    
var vizElement = divElement.getElementsByTagName('object')[0];                    
vizElement.style.width='100%';
vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    
var scriptElement = document.createElement('script');                    
scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    
vizElement.parentNode.insertBefore(scriptElement, vizElement);                
       