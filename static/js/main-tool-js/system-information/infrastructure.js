//Weather information
!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src='https://weatherwidget.io/js/widget.min.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','weatherwidget-io-js');

//Getting infrastructure details from the API.  
function getSystemInfo() {
        $.ajax({
        url: "http://127.0.0.1:5000/systeminfo",     
        type: 'GET',
        success: function(data){
            // console.log(data)

            //*************DO NOT DELETE THESE COMMENTED LINES************
            // document.getElementById('pmu').innerHTML = data.data[0].key_val;
            // document.getElementById('iso').innerHTML = data.data[1].key_val;
            // document.getElementById('sub').innerHTML = data.data[2].key_val;
            // document.getElementById('smart').innerHTML = data.data[3].key_val;
            // document.getElementById('feeder').innerHTML = data.data[4].key_val;
            // document.getElementById('oil').innerHTML = data.data[5].key_val;

            document.getElementById('pmu').innerHTML = 0;
            document.getElementById('iso').innerHTML = 50;
            document.getElementById('sub').innerHTML = 2;
            document.getElementById('smart').innerHTML = 2000;
            document.getElementById('feeder').innerHTML = 6;
            document.getElementById('oil').innerHTML = 39;
        }    
    });
}
getSystemInfo()

//File upload functioning
var file = document.getElementById('systeminfo');
file.onchange = function(e) {
  var ext = this.value.match(/\.([^\.]+)$/)[1];
  if (ext != 'csv'){
    document.getElementById("systeminfoUpload").disabled = true;
    alert("Please select a csv file")
  }else{
    document.getElementById("systeminfoUpload").disabled = false;}};

