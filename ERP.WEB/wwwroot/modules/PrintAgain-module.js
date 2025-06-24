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


}
