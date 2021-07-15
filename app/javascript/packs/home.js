import { Chart, registerables } from 'chart.js';
Chart.register(...registerables);

jQuery(() => {
    $('.bnk').on('click',function(){
        alert('hi');
    });
    // users.js
 });


$(document).on('turbolinks:load', function() {
  $('#articles-datatable').dataTable({
    "serverSide": true,
    "ajax": {
      "url": $('#articles-datatable').data('source')
    },
    "columns": [
      {"data": "title"},
      {"data": "description"},
      {"data": "category"}
    ]
  });
});

$(document).on('turbolinks:load', function() {
  $('#authors-datatable').dataTable();
});

$(document).on('turbolinks:load', function(){
  $('.destroy').on('click', function(){
    console.log(this.parentNode.id);
    $.ajax({
        url: '/authors/' + this.parentNode.id,
        type: 'DELETE',
        success: function(r){
        }
      });
  });
});

const barChart =(chartId,res)=>{
  var tData=[];
  var Value=[];
  
  $.each(res,(key,val)=>{
    console.log(key,'key');
    tData.push(key);
    Value.push(val);
  })
  
  var ctx = document.getElementById(chartId).getContext('2d');
  var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: tData,
      datasets: [{
        label: '# of Votes',
        data: Value,
        backgroundColor: [
          'rgba(255, 99, 132, 0.2)',
          'rgba(54, 162, 235, 0.2)',
          'rgba(255, 206, 86, 0.2)',
          'rgba(75, 192, 192, 0.2)',
          'rgba(153, 102, 255, 0.2)',
          'rgba(255, 159, 64, 0.2)'
        ],
        borderColor: [
          'rgba(255, 99, 132, 1)',
          'rgba(54, 162, 235, 1)',
          'rgba(255, 206, 86, 1)',
          'rgba(75, 192, 192, 1)',
          'rgba(153, 102, 255, 1)',
          'rgba(255, 159, 64, 1)'
        ],
         borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });
}

$(document).on('turbolinks:load',function(){
  $.ajax({
    url: '/chart',
    type: 'GET',
    data: 'json',
    success: function(data){
      console.log('succes', data)
      barChart('myChart',data);
    }
  })
});