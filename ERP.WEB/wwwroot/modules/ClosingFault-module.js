let lang = "ar";


//$(function () {

//    var Message = '@TempData["NoQuantityavaiable"]';
//    if (Message != "") {
//        alert("عدد القطع غير متوفر  بالمخزن المختار");

//    }
//});
$('#Editt_form').submit(function (e) {

    
    var check = 1;

    //var StoreID = $('#StoreID').val();
    var imagebefore = $("#before").val();
    var imageAfter = $("#After").val();

    var maasgee = "";

    //if (StoreID == 0) {
    //    maasgee += "يجب ادخال المخزن";
    //    maasgee += "\n";
    //    check = 0;

    //}

    if (imagebefore == "") {

        maasgee += "يجب ادخال الصورة قبل العطل";
        maasgee += "\n";
        check = 0;
    }
   
    if (imageAfter == "") {

        maasgee += "يجب ادخال الصورة بعد الاصلاح";
        check = 0;
    }
  

    if (check == 0) {
        alert(maasgee);
        e.preventDefault();
        return false;
    }

});