<?php die("Access Denied"); ?>#x#a:2:{s:6:"output";s:0:"";s:6:"result";a:2:{s:6:"report";a:0:{}s:2:"js";s:1471:"
  google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Ngày', 'Đơn hàng', 'Tổng các mục đã bán', 'Doanh thu ròng'], ['2017-01-01', 0,0,0], ['2017-01-02', 0,0,0], ['2017-01-03', 0,0,0], ['2017-01-04', 0,0,0], ['2017-01-05', 0,0,0], ['2017-01-06', 0,0,0], ['2017-01-07', 0,0,0], ['2017-01-08', 0,0,0], ['2017-01-09', 0,0,0], ['2017-01-10', 0,0,0], ['2017-01-11', 0,0,0], ['2017-01-12', 0,0,0], ['2017-01-13', 0,0,0], ['2017-01-14', 0,0,0], ['2017-01-15', 0,0,0], ['2017-01-16', 0,0,0], ['2017-01-17', 0,0,0], ['2017-01-18', 0,0,0], ['2017-01-19', 0,0,0], ['2017-01-20', 0,0,0], ['2017-01-21', 0,0,0], ['2017-01-22', 0,0,0], ['2017-01-23', 0,0,0], ['2017-01-24', 0,0,0], ['2017-01-25', 0,0,0], ['2017-01-26', 0,0,0], ['2017-01-27', 0,0,0], ['2017-01-28', 0,0,0], ['2017-01-29', 0,0,0]  ]);
        var options = {
          title: 'Báo cáo khoảng thời gian từ Chủ Nhật, 01 Tháng một 2017 đến Thứ hai, 30 Tháng một 2017',
            series: {0: {targetAxisIndex:0},
                   1:{targetAxisIndex:0},
                   2:{targetAxisIndex:1},
                  },
                  colors: ["#00A1DF", "#A4CA37","#E66A0A"],
        };

        var chart = new google.visualization.LineChart(document.getElementById('vm_stats_chart'));

        chart.draw(data, options);
      }
";}}