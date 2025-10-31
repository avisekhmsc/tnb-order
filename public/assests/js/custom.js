$(document).ready(function(){
    $('.edit-btn').click(function(e){
    e.preventDefault();
    console.log("hellloe");
    $(".get_page").addClass("active");
    $(".get_page iframe").attr("src",e.target.href);
    console.log(e.target.href);
    });
     
    $(document).mouseup(function (e){
    $(".get_page").removeClass("active");
    });
    });
    
    function getDeleteRoute($route)
    {
        $(document).find('#confirm_del').attr('href',$route);
    }
    $('.get_page').on("click",()=>{
      hideModal();
    })
    
    function hideModal(){
        $(".get_page").removeClass("active");
        let check = $(".get_page").hasClass('active');
        if(!check){
            location.reload();
        }
    }

        
    $(document).ready(function () {
        $('.js-example-basic-multiple').select2();
  console.log("Hello");
    //  $.get("http://localhost/new-laravel/menu", function (data) {
    //      console.log(data);
            //    $('#userShowModal').modal('show');
            //    $('#user-id').text(data.id);
            //    $('#user-name').text(data.name);
            //    $('#user-email').text(data.email);
        //    })
        /* When click show user */
        //  $('body').on('click', '#show-user', function () {
        //    var userURL = $(this).data('url');
        //    $.get(userURL, function (data) {
        //        $('#userShowModal').modal('show');
        //        $('#user-id').text(data.id);
        //        $('#user-name').text(data.name);
        //        $('#user-email').text(data.email);
        //    })
        // });
        
     });
     let menuData = [];
     let dataList = [];
     let base_url = "http://147.79.67.233:9119/";
     function fetchMenu(target){
      $.ajax({
        type: "GET",
        dataType: 'json',
        CORS: true,
        contentType:'application/json',
        headers: {
        'Access-Control-Allow-Origin': '*',
        },       
        url: base_url+"menu/"+target.value,
        success: function(data){
          console.log(data);
  
          let count = false;     
              for(let i = 0; i<data.length; i++){
                  data[i].qty = 0;
                  data[i].amount = 0;
              }
              menuData.map((item)=>{
                item.data.map((data)=>{
                  console.log(data);
                  if(data.cat_id == target.value){
                    count = true;
                  }
                })
              });
              if(!count){
                menuData.push({category:data[0].category_name,data:data});
              }
              else{
                $('.data-list').animate({
                  scrollTop: $(".category"+target.value).offset().top
              }, 2000);
              }
              dataListLoop();
              $(".data-list").removeClass("d-none");
              $("#saveBtn").removeClass("d-none");
              $("#saveBtn").addClass("d-block");
      }
    });
      
        $.get(base_url+"menu/"+target.value, function (data) {
            let count = false;     
            for(let i = 0; i<data.length; i++){
                data[i].qty = 0;
                data[i].amount = 0;
            }
            menuData.map((item)=>{
              item.data.map((data)=>{
            //    console.log(data);
                if(data.cat_id == target.value){
                  count = true;
                }
              })
            });
            if(!count){
              menuData.push({category:data[0].category_name,data:data});
            }
            else{
              $('.data-list').animate({
                scrollTop: $(".category"+target.value).offset().top
            }, 2000);
            }
            dataListLoop();
            $(".data-list").removeClass("d-none");
            $("#saveBtn").removeClass("d-none");
            $("#saveBtn").addClass("d-block");
        });        
      }
   
     
      function selectMenu(target){
          let index = target.value;
          $("#menu-name").val(menuData[index].item_name);
          $("#price").val(menuData[index].item_mrp);
          $("#order-qty").val(1);
          $("#menu-id").val(menuData[index].id);
          console.log(menuData[index].item_name);
      }
      function addItem(){
          $("#menu-name").val();
          $("#price").val();
          $("#order-qty").val();
          console.log($("#menu-id").val());
        let newList =  menuData.find(item => item.id == $("#menu-id").val());
        newList.order_qty = $("#order-qty").val();
        console.log(typeof($("#price").val()));
        newList.order_amount = parseInt($("#order-qty").val()) * parseInt($("#price").val());
        dataList.push(newList);
        console.log(dataList);
        dataListLoop();
      }

      function dataListLoop(){
        let markup = "";
        let TotalAmount = 0;
        let html = '';
        console.log(menuData);
        for(let i = menuData.length - 1; i>=0; i--){
            //html = html + '<tr><th colspan="4">'+menuData[i].category+'</th></tr>';
			html = html + '<div class ="row"><div class="col-12"><h5>'+menuData[i].category+'</h5></div></div>';
            let innerData = menuData[i].data;
            for(let j=0;j<innerData.length;j++){
                innerData[j].amount = innerData[j].item_mrp * innerData[j].qty;
              //   <div class="row align-items-center m-0">
              //      <div class="col-4 col-md-2">
              //          <img class="w-100" src="https://hisabsoftwares.com/tnb/public/item_primary_images/1671019213-blueberry-muffins-1-1.jpg">
              //      </div>
              //      <div class="col-8 col-md-10">
              //          <div class="row">
              //              <div class="col-md-3 text-right text-md-left">
              //                  name
              //              </div>
              //              <div class="col-md-3 text-right text-md-left">
              //                  quan
              //              </div>
              //              <div class="col-md-3 text-right text-md-left">
              //                  text box
              //              </div>
              //              <div class="col-md-3 text-right text-md-left">
              //                  total
              //              </div>
              //          </div>
              //      </div>
              //  </div>
            // html = html + '<div class="row align-items-center mb-3 mx-0 "><div class="col-12 d-block d-md-none text-right"><span style="font-size:16px;">Item: <span style="text-transform:uppercase;">'+innerData[j].item_name+'</span></div><div class="col-6 col-md-2"><img class="w-100" src="https://hisabsoftwares.com/tnb/'+innerData[j].primary_image+'"></div> <div class="col-6 col-md-10"><div class="row"><div class="col-md-3 text-right text-md-left d-none d-md-block"><span style="font-size:18px">Item: <span style="text-transform:uppercase;">'+innerData[j].item_name+'</span></div><div class="col-md-3 text-right text-md-left">Price: Rs.'+innerData[j].item_mrp+'</div><div class="col-md-3 d-flex text-right align-items-center text-md-left"><label class="mr-2">Qty: </label><input type="number" class="form-control" id="order-qty" value="'+innerData[j].qty+'" min="0" onchange="updateQuantity(this,'+i+','+j+')"></div><div class="col-md-3 text-right text-md-left">Total amount: '+innerData[j].amount+'</div></div></div></div>';
            html = html + '<div class="row align-items-center mb-3 mx-0 '+"category"+innerData[j].cat_id+'"><div class="col-12 d-block d-md-none text-right"><span style="font-size:16px;"><span style="text-transform:uppercase;">'+innerData[j].item_name+'</span></div><div class="col-6 col-md-2"><img style="border:5px solid#fff;height:100px" class="w-100" src="https://hisabsoftwares.com/tnb/'+innerData[j].primary_image+'"></div> <div class="col-6 col-md-10"><div class="row"><div class="col-md-4 text-right text-md-left d-none d-md-block"><span style="font-size:14px;"><span style="text-transform:uppercase;font-weight:800;">'+innerData[j].item_name+'</span></div><div class="col-md-2 text-right text-md-left" style="font-weight:800;margin-bottom:10px">Price: Rs.'+innerData[j].item_mrp+'</div><div class="col-md-2 d-flex text-right align-items-center text-md-right"><label class="mr-2" style="font-weight:800">Qty: </label><input type="number" style="margin-top:-10px;" class="form-control" id="order-qty" value="'+innerData[j].qty+'" min="0" onchange="updateQuantity(this,'+i+','+j+')"></div><div class="col-md-3 text-right text-md-right" style="font-weight:800">Total amount: '+innerData[j].amount+'</div></div></div></div>';
                   {/* <tr><td><img src="https://hisabsoftwares.com/tnb/'+innerData[j].primary_image+'" style="height:5rem"></td><td><input type="text" class="form-control" value="'+innerData[j].item_name+'" readonly></td><td><input type="text" class="form-control" value="'+innerData[j].item_mrp+'" readonly></td><td><input type="number" class="form-control" id="order-qty" value="'+innerData[j].qty+'" min="0" onchange="updateQuantity(this,'+i+','+j+')"></td><td><input type="text" class="form-control" value="'+innerData[j].amount+'" readonly></td></tr>'; */}
                   {/* <tr><td><img src="https://hisabsoftwares.com/tnb/'+innerData[j].primary_image+'" style="height:5rem"></td><td><input type="text" class="form-control" value="'+innerData[j].item_name+'" readonly></td><td><input type="text" class="form-control" value="'+innerData[j].item_mrp+'" readonly></td><td><input type="number" class="form-control" id="order-qty" value="'+innerData[j].qty+'" min="0" onchange="updateQuantity(this,'+i+','+j+')"></td><td><input type="text" class="form-control" value="'+innerData[j].amount+'" readonly></td></tr>'; */}
            TotalAmount = TotalAmount + innerData[j].amount;
            }
        }
        $("#showList").html(html);
        $("#total-amount").html(TotalAmount);
        // $("#total-amount").html(TotalAmount);
        // $("#list-table").removeClass("d-none");
      }
      function updateQuantity(target,category,id){
        if(parseInt(target.value) < 0){
          target.value=0;
          menuData[category].data[id].qty = 0;
          dataListLoop();
        }
        else{
          menuData[category].data[id].qty = parseInt(target.value);
          dataListLoop();
        }        
      }

      function deleteItem(id){
        dataList.splice(id,1);
        dataListLoop();
      }
      function saveOrder(){
      let slotId = $("input[type='radio'][name='slot_id']:checked").val();
      $(".overlay").addClass("active");
          $.ajax({
            type:'POST',
            url:base_url+'save-order',
            data:JSON.stringify({slot_id:slotId,orders:menuData}),
            dataType:'json',
                    contentType: 'application/json',
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            success:function(data){
                window.location.replace(base_url+'order-list');
                $(".overlay").removeClass("active");               
            }
         });
      }

      $( document ).ready(function() {
        $('#exampleModal').modal('show');
    $('#exampleModal').on('hidden.bs.modal', function (e) {
        $.getJSON(base_url+"clear/session/name",
    function(data) {
        //doSomethingWith(data); 
    }); 
})
});

      function activeCategory(){
        $(".js-example-basic-multiple").prop("disabled",false);
      }

      function showMenu(){
        $(".sidebar-wrapper.sidebar-theme").addClass("active");
      }    
      function hideMenu(){
        $(".sidebar-wrapper.sidebar-theme").removeClass("active");
      }    