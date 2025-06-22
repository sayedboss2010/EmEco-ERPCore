let lang = "ar";

$(document).on('click', '.edit-btn', function (e) {

    const checkboxes = document.querySelectorAll('.my-check:checked');
    let values = [];

    checkboxes.forEach((checkbox) => {
        values.push(checkbox.value);
    });

    let count = values.length;
    let query = values.map(id => "ids=" + id).join("&");

    if (count>0) {
       
        window.open("/WorkOrder/print?" + query, "_blank");

    }
    else {
        alert("يجب اختيار امر شغل واحد علي الاقل");
    }

});

