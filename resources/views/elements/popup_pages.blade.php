<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title> 
   <!-- include libraries(jQuery, bootstrap) -->
   <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
   <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
   
    <link rel="stylesheet" href="{{asset('public/assets/css/main.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/css/custom.css')}}">
</head>
<body class="otherPage">
  <div class="loader" id="loader"><div class="spinner"></div></div>  
        <div id="content" class="content">
@yield('content')
        </div>
        
        <script src="{{asset('public/assets/frontend/js/jquery.min.js')}}"></script>
        <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
        <script>
            $(document).ready(function() {
                $('#summernote').summernote({
        tabsize: 2,
        height: 120,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        ]
      });
});
            function categoryChange(item){
               if(item.value == 2){
                $('#thumbnail').show();
               }
               else{
                $('#thumbnail').hide();
               }
            }
            function refresh(){
                location.reload();
            }
            function loading(){
                $('#loader').addClass('active');
            }
            </script>  
             <script>                 
            
                    function img(data){
                        console.log(data.value);
                    }


                    $(document).ready(function() { 
        $(".btn-success.add").click(function(){ 
            var html = $(".clone").html();
            $(".increment").after(html);
        });
        
        $("body").on("click",".btn-danger.remove",function(){ 
            $(this).parents(".control-group").remove();
        });
        });
                </script> 
</body>
</html>