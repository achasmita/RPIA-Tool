// script for RIA datatable    
var resilience_investment_analysis = $('#resilience_investment_analysis').DataTable( {
    paging: false,
    order:false,
    "sDom": '<"top"><"bottom"><"clear">',         
    "ajax": {
    "url": "http://127.0.0.1:5000/resilienceinvestmentanalysis",
    "type": "GET",
    "datatype": 'json',    
        },
    columns: [
        { 'data': 'property' },
        { 'data': '_value' },
    ], 
} );   

// script for RIA bar chart
        
const categories = [{
    category: [
    { label: "Technology 1" },
    { label: "Technology 2" }
    ]
}];

const dataset = [
{
    seriesname: "Cost",
    data: [
    { value: "0.56" },
    { value: "0.65" }
    ]
},
{
    seriesname: "Percentage change in resiliency",
    data: [
    { value: "0.64" },
    { value: "0.72" }
    
    ]
}];

var chartConfigurations = {
type: "mscolumn2d",
renderAt: "RIA-chart-container",
width: "100%",
height: "255",
dataFormat: "json",
dataSource: {
    chart: {
    theme: "fusion",
    caption: "Cost, Percentage change in resilency",
    xAxisname: "Cost in (M$)",
    yAxisName: "Percentage change in resiliency"
    },
    categories: categories,
    dataset: dataset
}
};
FusionCharts.ready(function() {
var fusioncharts = new FusionCharts(chartConfigurations);
fusioncharts.render();
});
        
        
// **********************Resilience Investment Analysis Map***********************************                
var divElement = document.getElementById('viz1627335502229');                    
var vizElement = divElement.getElementsByTagName('object')[0];                    
vizElement.style.width='100%';
vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    
var scriptElement = document.createElement('script');                    
scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    
vizElement.parentNode.insertBefore(scriptElement, vizElement);       