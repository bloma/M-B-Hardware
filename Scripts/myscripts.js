$('tr[data-href]').on("click", function () {
    document.location = $(this).data('href');
});



   $(document).ready(function () {

       $(".selectpicker").selectpicker();

   });



//function toggleDiv(divId) {
//    $("#"+divId).toggle();
//}

