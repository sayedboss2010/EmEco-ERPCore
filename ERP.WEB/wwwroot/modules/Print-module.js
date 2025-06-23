let lang = "ar";


function printDiv(divId) {


    var content = document.getElementById(divId).innerHTML;

    // نسخ ملفات CSS من الصفحة نفسها
    let styles = [...document.querySelectorAll('link[rel="stylesheet"], style')]
        .map(style => style.outerHTML)
        .join('\n');

    var myWindow = window.open('', '', 'height=800,width=1000');
    myWindow.document.write('<html><head><title>طباعة</title>');
    myWindow.document.write(styles); // نسخ الـ CSS
    myWindow.document.write('<style>body{font - family: Arial, sans-serif; direction: ltr;}</style>'); // تقدر تضيف CSS إضافي هنا
    myWindow.document.write('</head><body>');
    myWindow.document.write(content);
    myWindow.document.write('</body></html>');

    myWindow.document.close();
    myWindow.focus();

    setTimeout(function () {
        myWindow.print();
        myWindow.close();
    }, 500);

    //const params = new URLSearchParams(window.location.search);
    //const values = params.getAll("ids"); // هيرجع ["1", "2", "3"]

    //let query = values.map(id => "ids=" + id).join("&");


    //fetch('/WorkOrder/YourAction', {
    //    method: 'POST',
    //    headers: {
    //        'Content-Type': 'application/json'
    //    },
    //    body: JSON.stringify(values) // إرسال كمصفوفة JSON
    //})
        //.then(response => {
        //    if (response.ok) {
        //        // بعد نجاح الاتصال - نبدأ الطباعة

        //        var content = document.getElementById(divId).innerHTML;

        //        // نسخ ملفات CSS من الصفحة نفسها
        //        let styles = [...document.querySelectorAll('link[rel="stylesheet"], style')]
        //            .map(style => style.outerHTML)
        //            .join('\n');

        //        var myWindow = window.open('', '', 'height=800,width=1000');
        //        myWindow.document.write('<html><head><title>طباعة</title>');
        //        myWindow.document.write(styles); // نسخ الـ CSS
        //        myWindow.document.write('<style>body{font - family: Arial, sans-serif; direction: ltr;}</style>'); // تقدر تضيف CSS إضافي هنا
        //        myWindow.document.write('</head><body>');
        //        myWindow.document.write(content);
        //        myWindow.document.write('</body></html>');

        //        myWindow.document.close();
        //        myWindow.focus();

        //        setTimeout(function () {
        //            myWindow.print();
        //            myWindow.close();
        //        }, 500);


        //    } else {
        //        alert("حصل خطأ ");
        //    }
        //})
        //.catch(error => {
        //    console.error("خطأ:", error);
        //});




      
    }
