$(document).ready(function() {
   // NOTE: Extra Nice *100
 //   bindListeners();
 // });
 
 // NOTE: Nice
 // function bindListeners() {
 //   newHorseFormListener();
 //   createHorseListener();
 //   showHorseDetailListener();
 // }
 
 
 function newHorseFormListener() {
   $('#register').on('click', function(event) {
       event.preventDefault();
 
       var address = $(this).attr('href');
       that = this
 
       var request = $.ajax({
         url: address,
         method: 'GET'
       });
 
       request.done(function(response) {
        
         $(that).after(response)
       });
 
       request.fail(function(response) {
         console.log("Request for form failed.")
       })
   });
 }
 
 
 // function createHorseListener() {
 //   $(".container").on("submit", "#horse-form", function(event) {
 //     event.preventDefault();
 
 //     var address = $(this).attr('action');
 //     var method = $(this).attr('method');
 //     var data = $(this).serialize();
 //     that = this
 
 //     var request = $.ajax({
 //       url: address,
 //       method: method,
 //       data: data
 //     });
 
 //     request.done(function(response) {
 //       $('#new-horse-form-container').remove();
 //       $('#horse-list').append(response);
 //     });
 
 //     request.fail(function(response) {
 //       console.log("Failed to create new horse.");
 //     })
 
 
 //   });
 // }
 
 
 // function showHorseDetailListener() {
 //   $("#horse-list a").on("click", function(event) {
 //     event.preventDefault();
 
 //     var address = $(this).attr('href');
 //     that = this
 
 //     var request = $.ajax({
 //       url: address,
 //       method: "GET",
 //     });
 
 //     request.done(function(response) {
 //       $('#horse-info').remove(); //chosing to only show 1 piece of horse info at a time
 //       $(that).parents('h3').after(response);
 //     });
 
 //     request.fail(function(response) {
 //       console.log("Failed to get horse data.");
 //     })
 
 
 //   });
 }
