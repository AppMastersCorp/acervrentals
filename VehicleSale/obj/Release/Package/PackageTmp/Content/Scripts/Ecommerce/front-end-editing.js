var UploadControl;
var SingleImageHtml;

function editingSave() {
    $('div[contenteditable="true"]').blur(function () {
        var WidgetId = $(this).attr("id");
        if (/Layout/.test(WidgetId)) {
        }
        else {
            var PageId = $('#hdnPageId').val();
            var Text = $(this).html();
            $.post('/Editing/SaveContent', { PageId: PageId, WidgetId: WidgetId, Text: Text }, function (response) {

            });
        }
    });
}

$(window).load(function () {

    setTimeout(editingSave, 3000);

    $.ajax({
        url: '/Media/FolderListForLayout',
        success: function (result) {

            var html = '';
            var htmlimg = '';
            var htmlimg1 = '';
            if (result != "") {
                for (var i = 0; i <= result.folderList.length - 1; i++) {
                    html += ' <option value="' + result.folderList[i].FolderId + '">' + result.folderList[i].FolderName + '</option>';
                    for (var j = 0; j <= result.folderList[i].imageList.length - 1; j++) {
                        htmlimg += '<input  type="radio" onclick="radioclick(this)" name="img" src="/Content/Upload/' + result.folderList[i].FolderName + '/' + result.folderList[i].imageList[j].ImageName + '"  /><img style="height:84px; margin-top:10px;width:112px" src="/Content/Upload/' + result.folderList[i].FolderName + '/' + result.folderList[i].imageList[j].ImageName + '" />&nbsp; ';
                        htmlimg1 += '<input  type="radio" onclick="radioclick1(this)" name="img" src="/Content/Upload/' + result.folderList[i].FolderName + '/' + result.folderList[i].imageList[j].ImageName + '"  /><img style="height:84px; margin-top:10px;width:112px" src="/Content/Upload/' + result.folderList[i].FolderName + '/' + result.folderList[i].imageList[j].ImageName + '" />&nbsp; ';
                    }
                }
                $("#selectuploadfolder").html(html);
                $("#selectuploadfolder1").html(html);
                $("#showuploadimglist").html(htmlimg1);
                $("#showuploadimglist1").html(htmlimg);
            }
        },
        error: function (result) {
            alert("Error!!!");
        }
    });




    $("[id=selectuploadfolder]").change(function () {
        var FolderName = $("#selectuploadfolder option:selected").text();

        if (FolderName == "ShowAll") {
            $("#showuploadimglist img").show();
            $("#showuploadimglist input").show();

        }
        else {
            $("#showuploadimglist img").hide();
            $("#showuploadimglist input").hide()

            $("img[src*='/Content/Upload/" + FolderName + "']").show();
            $("img[src*='/Content/Upload/" + FolderName + "']").each(function () {
                $(this).prev().show();
            });

        }

    });

    $("[id=selectuploadfolder1]").change(function () {
        var FolderName = $("#selectuploadfolder1 option:selected").text();

        if (FolderName == "ShowAll") {
            $("#showuploadimglist1 img").show();
            $("#showuploadimglist1 input").show();

        }
        else {
            $("#showuploadimglist1 img").hide();
            $("#showuploadimglist1 input").hide()

            $("img[src*='/Content/Upload/" + FolderName + "']").show();
            $("img[src*='/Content/Upload/" + FolderName + "']").each(function () {
                $(this).prev().show();
            });

        }

    });


    $(document).ready(function () {



    });

    $(function () {

        var isEditingEnabled;
        var Editing = localStorage.getItem("Editing");
        var sessionValue = $("#hduname").val();
        //if ($.session.get('CurrentUserId') != null)
        //{
        if (sessionValue != "") {
            if (Editing == 'true') {
                isEditingEnabled = false;
                toggleEditor();

            }
        }
        $("a[id='toggle']").click(function () {
            var html = $(this).html();
            if (html == "Start editing") {
                isEditingEnabled = false;
            }
            else {
                isEditingEnabled = true;
                localStorage.clear();
            }
            toggleEditor();

        });



        function enableEditing(element) {

            if (!CKEDITOR.instances.element) {
                CKEDITOR.inline(element.attr('id'), {
                    extraAllowedContent: 'a(documentation);abbr[title];code',
                    removePlugins: 'stylescombo',
                    extraPlugins: 'sourcedialog',
                    startupFocus: true
                });
            }
        }

        function disableEditing(element) {

            for (k in CKEDITOR.instances) {
                var instance = CKEDITOR.instances[k];
                instance.destroy(true);
            }


        }

        function toggleEditor() {

            if (isEditingEnabled) {
                $("[id*=Widget]").each(function () {

                    var element = $(this);
                    disableEditing(element);
                    element.attr('contenteditable', false);
                    toggle.innerHTML = 'Start editing';
                });
                $("[id*=LayoutText]").each(function () {

                    var element = $(this);
                    disableEditing(element);
                    element.attr('contenteditable', false);
                    element.attr('layoutcontenteditable', false);
                });
                isEditingEnabled = false;
                $(".EditableImage").find("a[data-toggle='modal']").remove();
                $("div[id*='Slider']").find("a[data-toggle='modal']").css("display", "none")
                $(".vedio_box").find("a[data-toggle='modal']").remove();
                //  $("div[id*='Slider']").find("a[data-toggle='modal']").remove();
                localStorage.setItem('Editing', 'false');
            }
            else {
                $("[id*=Widget]").each(function () {

                    var element = $(this);
                    element.attr('contenteditable', true);
                    enableEditing(element);
                    toggle.innerHTML = 'Finish editing';

                });
                $("[id*=LayoutText]").each(function () {
                    var element = $(this);
                    element.attr('contenteditable', true);
                    element.attr('layoutcontenteditable', true);
                    enableEditing(element);
                });
                localStorage.setItem('Editing', 'true');
                $(".EditableImage").append("<a data-toggle='modal' onclick='getSingleImage(this)' href='#' data-modal-id='modal-form-company-contact1'><div class='edit-indicator-widget' style='top:0;width: 30px;position: absolute;height: 10px;right:45px'><img title='Edit'  src='/images/Edit.png' style='height: 30px;width: 30px;margin:5px;'></div></a>");
                isEditingEnable = true;
                $("div[id*='Slider']").find("a[data-toggle='modal']").css("display", "block")
                $(".vedio_box").append("<a data-toggle='modal' onclick='getSingleVideo(this)' href='#' data-modal-id='modal-form-company-video'><div class='edit-indicator-widget' style='top:0;width: 30px;position: absolute;height: 10px;right:45px'><img title='Edit'  src='/images/Edit.png' style='height: 30px;width: 30px;margin:5px;'></div></a>");

            }

            localStorage.setItem('isEditingEnabled', isEditingEnable);

        }

        //function toggleEditorLayout() {

        //    if (isEditingEnabled) {
        //        $("[id*=LayoutText]").each(function () {

        //            var element = $(this);
        //            disableEditing(element);
        //            element.attr('Layoutcontenteditable', false);
        //            toggle.innerHTML = 'Start editing';
        //        });
        //        isEditingEnabled = false;

        //        localStorage.setItem('Editing', 'false');
        //    }
        //    else {
        //        $("[id*=LayoutText]").each(function () {
        //            var element = $(this);
        //            element.attr('Layoutcontenteditable', true);
        //            enableEditing(element);
        //            toggle.innerHTML = 'Finish editing';

        //        });

        //        localStorage.setItem('Editing', 'true');
        //        isEditingEnable = true;
        //    }

        //    localStorage.setItem('isEditingEnabled', isEditingEnable);

        //}
        function first() {
            localStorage.setItem('myItem', "something you want to store");
        }

        function second() {
            myValue = null;
            if (localStorage.getItem('myItem')) {
                myValue = localStorage.getItem('myItem');
            }
        }

        function onClick(element, callback) {

            if (window.addEventListener) {

                element.addEventListener('click', callback, false);
            }
            else if (window.attachEvent) {

                element.attachEvent('onclick', callback);
            }
        }

        //onClick(toggle, toggleEditor);

    });


});


function radioclick(ctrl) {
    var imgURL = $(ctrl).attr("src");

    UploadControl.val($(ctrl).attr("src"));
    UploadControl.attr("src", imgURL);

    if ($(ctrl).val().trim() != "") {

        var ImageUrl = $(ctrl).attr("src").trim();
        var pageId = $("#hdnPageId").val();
        var ImageId = $("#ImgId").val();
        $.ajax({

            url: '/Media/SaveSingleImage',
            data: JSON.stringify({ ImageUrl: ImageUrl, ImageId: ImageId, pageId: pageId }),
            contentType: 'application/json; charset=utf-8',
            type: 'POST',
            success: function (result) {
                UploadControl.attr("src", result);
            }
        });
    }
}

function radioclick1(ctrl) {
    var imgURL = $(ctrl).attr("src");

    UploadControl.attr("value", imgURL);

}

function submitimg() {


}

function submiturl() {
    var videourl = $("#txturl").val();
    var url = "";
    if (videourl.indexOf("embed") > -1) {
        url = videourl.slice(videourl.indexOf('embed') + 6).split('&');
    }
    else if (videourl.indexOf("watch?") > -1) {
        url = videourl.slice(videourl.indexOf('?') + 3).split('&');
    }
    var pageId = $("#hdnPageId").val();
    var videoId = "Video1";
    var data = JSON.stringify({ url: url[0], pageId: pageId, videoId: videoId });
    $.ajax({

        url: '/Media/SaveVideo',
        data: data,
        contentType: 'application/json; charset=utf-8',
        type: 'POST',
        async: false
    });
}
function getNewTextBoxId(ctrl) {
    UploadControl = $(ctrl).parent().parent().find("input");
    alert($(ctrl).parents(".modal-box").attr('id'));
    $(".PostImageSingle").attr("data-modal-id", $(ctrl).parents(".modal-box").attr('id'));

}
function getSingleImage(ctrl) {

    ImageId = $(ctrl).parent().find("img[id*='singleImg']").attr("id");
    UploadControl = $(ctrl).next().find("img");
    $("#ImgId").val(ImageId);
    Model(ctrl);
}

function getSingleVideo(ctrl) {
    url = $(ctrl).parent().find("iframe[id*='video']").attr("src");
    $("#txturl").val(url);
    Model(ctrl);
}


function getTextBoxId(ctrl) {


    var TextBoxId = $(ctrl).attr("textboxid");

    $('[name=img]').attr("textboxid", TextBoxId);

}

function SaveSliderImage() {

    DeleteImage(SliderId);

}

function SaveImages() {
    $('.SliderImagesPopUp input[type=text]').each(function () {
        if ($(this).val().trim() != "") {
            var ImageUrl = $(this).val().trim();
            var slideRid = SliderId;
            var pageId = $("#hdnPageId").val();

            $.ajax({

                url: '/Media/SaveSliderImage',
                data: JSON.stringify({ ImageUrl: ImageUrl, slideRid: slideRid, pageId: pageId }),
                contentType: 'application/json; charset=utf-8',
                type: 'POST',
                async: false
            });
        }
    });
}
function DeleteImage(SliderId) {
    var SliD_Id = SliderId;
    var page_Id = $("#hdnPageId").val();
    $.ajax({
        url: '/Media/DeleteStaffDetail',
        data: JSON.stringify({ SliD_Id: SliD_Id, page_Id: page_Id }),
        contentType: 'application/json; charset=utf-8',
        type: 'POST',
        async: false
    });
    SaveImages();

}


function AddMoreControl() {
    var html = $(".SliderImagesPopUp .form-group").last().clone();
    $(".SliderImagesPopUp .form-group").last().after(html);
    $(".SliderImagesPopUp .form-group").last().find('input').attr('value', '');
}








