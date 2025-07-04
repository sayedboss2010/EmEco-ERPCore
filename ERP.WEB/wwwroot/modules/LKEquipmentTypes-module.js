﻿let lang = "ar";

$(document).on('click', '.btnRefresh', function (e) {
    e.preventDefault();

    $('#SearchString').val('');
    $('.searchDiv').removeClass('is-filled');

    LoadIndex();
});

$(document).on('click', '.btnModalClose', function () {
    $("#addUnivercityModal").modal("hide");
});

$(document).on('click', '.btnAdd', function (e) {
    e.preventDefault();

    lang = $(this).data('lang');

    $('#txtArName').val('');
    $('.divArName').removeClass('is-filled');

    $('#txtDes').val('');
    $('.divDes').removeClass('is-filled');

    $('#modalTitle').html(lang == "ar" ? "إضافة" : "Add");
    $('#univercityId').val(0);
    $("#addUnivercityModal").appendTo('body').modal("show");
});

$(document).on('click', '.edit-btn', function (e) {
   
    e.preventDefault();

    let id = $(this).data('id');
    lang = $(this).data('lang');

    $.ajax({
        url: '/LKEquipmentTypes/GetById?id=' + id,
        async: true,
        success: function (result) {
       
            if (result != null && result.arName != "") {
                //alert(result.ArName);
                $('#txtArName').val(result.typeName);
                $('.divArName').addClass('is-filled');

                $('#txtDes').val(result.description);
                $('.divDes').addClass('is-filled');

                $('#modalTitle').html(lang == "ar" ? "تعديل" : "Edit");
                $('#univercityId').val(id);
                $("#addUnivercityModal").appendTo('body').modal("show");
            }
        },
        error: function (xhr) {
            jQuery.gritter.add({
                position: lang == "ar" ? 'bottom-left' : 'bottom-right',
                text: lang == "ar" ? "حدث خطأ من فضلك حاول مرة أخرى" : "Error happend please try again later",
                class_name: 'growl-warning',
                sticky: false,
                time: '1500',
            });
        }
    });
});

$(document).on('click', '#btnAddEditUniv', function (e) {
    e.preventDefault();
    let id = $('#univercityId').val();

    let arName = $('#txtArName').val();
    let description = $('#txtDes').val();

    if (arName == "" ) {
        $('.alertEmpty').css("display", "block");
        return;
    }

    $('.alertEmpty').css("display", "none");

    let uri = id == 0 ? '/LKEquipmentTypes/Add?arName=' + arName + '&description=' + description
        : '/LKEquipmentTypes/Edit?id=' + id + '&arName=' + arName + '&description=' + description;

    $.ajax({
        url: uri,
        async: true,
        success: function (result) {
            if (result > 0) {
                jQuery.gritter.add({
                    position: lang == "ar" ? 'top-left' : 'top-right',
                    text: lang == "ar" ? "تم الحفظ بنجاح" : "Saved Successfully",
                    class_name: 'growl-success',
                    sticky: false,
                    time: '1500'
                });

                LoadIndex();
            } else if (result == -1) {
                jQuery.gritter.add({
                    position: lang == "ar" ? 'top-left' : 'top-right',
                    text: lang == "ar" ? "الاسم موجود مسبقا" : "Name Exist",
                    class_name: 'growl-warning',
                    sticky: false,
                    time: '1500',
                });
            } else {
                jQuery.gritter.add({
                    position: lang == "ar" ? 'top-left' : 'top-right',
                    text: lang == "ar" ? "حدث خطأ من فضلك حاول مرة أخرى" : "Error happend please try again later",
                    class_name: 'growl-warning',
                    sticky: false,
                    time: '1500',
                });
            }

            $("#addUnivercityModal").modal("hide");
        },
        error: function (xhr) {
            jQuery.gritter.add({
                position: lang == "ar" ? 'top-left' : 'top-right',
                text: lang == "ar" ? "حدث خطأ من فضلك حاول مرة أخرى" : "Error happend please try again later",
                class_name: 'growl-warning',
                sticky: false,
                time: '1500',
            });
        }
    });
});

$(document).on('click', '.btnDelete', function (e) {
    e.preventDefault();

    let id = $(this).data('id');

    bootbox.confirm({
        size: "large",
        message: lang == "ar" ? "هل أنت متأكد؟" : "Are you sure?",
        callback: function (result) {
            if (result) {
                $.ajax({
                    url: '/LKEquipmentTypes/Delete?id=' + id,
                    async: true,
                    success: function (result) {
                        if (result) {
                            jQuery.gritter.add({
                                position: lang == "ar" ? 'top-left' : 'top-right',
                                text: lang == "ar" ? "تم الحفظ بنجاح" : "Saved Successfully",
                                class_name: 'growl-success',
                                sticky: false,
                                time: '1500',
                            });

                            LoadIndex();
                        } else {
                            jQuery.gritter.add({
                                position: lang == "ar" ? 'top-left' : 'top-right',
                                text: lang == "ar" ? "حدث خطأ من فضلك حاول مرة أخرى" : "Error happend please try again later",
                                class_name: 'growl-warning',
                                sticky: false,
                                time: '1500',
                            });
                        }
                    },
                    error: function (xhr) {
                        jQuery.gritter.add({
                            position: lang == "ar" ? 'top-left' : 'top-right',
                            text: lang == "ar" ? "حدث خطأ من فضلك حاول مرة أخرى" : "Error happend please try again later",
                            class_name: 'growl-warning',
                            sticky: false,
                            time: '1500',
                        });
                    }
                });
            }
        }
    });
});
$(document).on('click', '.btnPrint', function () {
    let term = $('#SearchString').val();

    $.ajax({
        url: '/LKEquipmentTypes/PrintData?term=' + term,
        async: true,
        success: function (result) {

            let arName = lang == "ar" ? "الاسم باللغة العربية" : "Arabic Name";
            let dess = lang == "ar" ? "الوصف" : "Description";;


            let printcontent = `
                        <br />
                        <table class="table table-bordered align-items-center mb-0">
                            <thead>
                                <tr>
                                    <th style="text-align:center">${arName}</th>
                                    <th style="text-align:center">${dess}</th>
                                </tr>
                            </thead>
                            <tbody>`;

            for (const item of result) {
                printcontent += `<tr>
                                    <td style="text-align:center">${item.typeName}</td>
                                <td style="text-align:center">${item.description}</td>
                                </tr>`;
            }

            printcontent += `</tbody>
                        </table>`;

            let restorepage = document.body.innerHTML;

            document.body.innerHTML = printcontent;
            window.print();

            document.body.innerHTML = restorepage;

            $('#SearchString').val(term);
        },
        error: function (xhr) {
            jQuery.gritter.add({
                position: lang == "ar" ? 'top-left' : 'top-right',
                text: lang == "ar" ? "حدث خطأ من فضلك حاول مرة أخرى" : "Error happend please try again later",
                class_name: 'growl-warning',
                sticky: false,
                time: '1500',
            });
        }
    });
});

$(document).on('click', '#searchBTN', function (e) {
    e.preventDefault();
    LoadIndex();
});

$(document).on('click', '.btnActive', function (e) {
    e.preventDefault();

    let id = $(this).data('id');
    let active = $(this).data('active');
    lang = $(this).data('lang');
    bootbox.confirm({
        size: "large",
        message: lang == "ar" ? "هل أنت متأكد؟" : "Are you sure?",
        callback: function (result) {
            if (result) {
                $.ajax({
                    url: '/LKEquipmentTypes/Activate?id=' + id + '&isActive=' + active,
                    type: "POST",
                    async: true,
                    success: function (result) {
                        if (result) {
                            jQuery.gritter.add({
                                position: lang == "ar" ? 'top-left' : 'top-right',
                                text: lang == "ar" ? "تم الحفظ بنجاح" : "Saved Successfully",
                                class_name: 'growl-success',
                                sticky: false,
                                time: '1500',
                            });

                            LoadIndex();
                        } else {
                            jQuery.gritter.add({
                                position: lang == "ar" ? 'top-left' : 'top-right',
                                text: lang == "ar" ? "حدث خطأ من فضلك حاول مرة أخرى" : "Error happend please try again later",
                                class_name: 'growl-warning',
                                sticky: false,
                                time: '1500',
                            });
                        }
                    },
                    error: function (xhr) {
                        jQuery.gritter.add({
                            position: lang == "ar" ? 'top-left' : 'top-right',
                            text: lang == "ar" ? "حدث خطأ من فضلك حاول مرة أخرى" : "Error happend please try again later",
                            class_name: 'growl-warning',
                            sticky: false,
                            time: '1500',
                        });
                    }
                });
            }
        }
    });
});

//***********************************************************************/
function LoadIndex() {
    let uri = '/LKEquipmentTypes/Index';

    let term = $('#SearchString').val();
    if (term != "") {
        uri = '/LKEquipmentTypes/Search?term=' + term;
    }

    $.ajax({
        url: uri,
        async: true,
        success: function (result) {
            
            $('#divdata').html(result);
        },
        error: function (xhr) {
            jQuery.gritter.add({
                position: lang == "ar" ? 'top-left' : 'top-right',
                text: lang == "ar" ? "حدث خطأ من فضلك حاول مرة أخرى" : "Error happend please try again later",
                class_name: 'growl-warning',
                sticky: false,
                time: '1500',
            });
        }
    });
}