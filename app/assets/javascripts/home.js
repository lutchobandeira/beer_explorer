$(document).ready(function() {
  var colorSlider = document.getElementById('color-input');
  noUiSlider.create(colorSlider, {
    start: [1, 20],
    connect: true,
    step: 1,
    range: {
      'min': 1,
      'max': 40
    },
    format: wNumb({
      decimals: 0
    })
  });

  var filterStyles = function() {
    $.ajax({
      url: '/styles/filter',
      data: { srm_range: colorSlider.noUiSlider.get(),ibu_range: ibuSlider.noUiSlider.get(), abv_range: abvSlider.noUiSlider.get()},
      success: function(event) {
        console.log(event);
      }
    });
  }

  var ibuSlider = document.getElementById('ibu-input');
  noUiSlider.create(ibuSlider, {
    start: [1, 70],
    connect: true,
    step: 1,
    range: {
      'min': 1,
      'max': 100
    },
    format: wNumb({
      decimals: 0
    })
  });

  var abvSlider = document.getElementById('abv-input');
  noUiSlider.create(abvSlider, {
    start: [3, 7],
    connect: true,
    step: 1,
    range: {
      'min': 1,
      'max': 10
    },
    format: wNumb({
      decimals: 0
    })
  });

  colorSlider.noUiSlider.on('change', function(){
    filterStyles();
  });

  ibuSlider.noUiSlider.on('change', function(){
    filterStyles();
  });

  abvSlider.noUiSlider.on('change', function(){
    filterStyles();
  });
});
