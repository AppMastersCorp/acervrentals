var jq = $.noConflict();


function ShowProgress() {
    jq("#spin_modal_overlay").is(":visible") || jq("#primary").spin("modal");
}

function HideProgress() {
    jq("#spin_modal_overlay").is(":visible") && jq("#primary").spin("modal")
}
var canvas, canvobj = {},
    isFirstBind = !0,
    prev_canvobj = "";
jq(document).ready(function () {
    function e(e) {
        canvas.getActiveObject();
        a(e, jq("#chkbold").is(":checked") ? jq("#chkbold").val() : "", jq("#chkItalic").is(":checked") ? jq("#chkItalic").val() : "", jq("#chkUnderline").is(":checked") ? jq("#chkUnderline").val() : "", "#" + jq("#textColor").val(), jq("#slider_FS").val(), jq("#ddlTextAlign").val(), jq("#ddlFontFamily").val(), "", "", jq("#slider_LH").val(), jq("#slider_SW").val(), ""), jq("#message-input").val("Type your message here"), jq("#btnAddNewText").show(), jq("#dvTextAdd").hide();
        var t = canvas.getActiveObject();
        t && "text" == t.type && jq("#tblTextEditor").show()
    }

    function t() {
        var e = window.open("", "Download Image", "directories=0,titlebar=0,toolbar=0,location=0,status=0,menubar=0,scrollbars=no,resizable=no,width=500, height=500");
        return e.document.write('<img id="imgDownload" src="' + canvas.toDataURL() + '"/>'), e
    }

    function a(e, t, a, n, i, c, s, o, r, l, d, v, u) {
        var p = new fabric.Text(e, {
            fontFamily: o,
            left: 65,
            top: 100,
            textDecoration: n,
            fontWeight: t,
            fontStyle: a,
            fontSize: c,
            textAlign: s,
            fill: i,
            lineHeight: d,
            strokeWidth: Number(v),
            stroke: u
        });
        canvas.add(p), canvas.centerObject(p), p.setCoords(), canvas.setActiveObject(p)
    }

    function n() {
        var e = canvas.getActiveObject();
        if (e && jq(".canvas-tool-options").show(), e) {
            var t = jq("#tab-main ul.tab-control-main").children(".active");
            if ("text" == e.type) t && "add-text" == jq(t).attr("id") || jq("#add-text").trigger("click"), b(), jq("#message-input").val(e.text), jq("#fontFamily").val(e.fontFamily), jq("#text_align").val(e.textAlign), jq("#slider_FS").val(e.fontSize), jq("#textColor").css("background-color", e.fill), document.getElementById("chkbold").checked = e.fontWeight, document.getElementById("chkItalic").checked = e.fontStyle, document.getElementById("chkUnderline").checked = e.textDecoration, jq("#slider_LH").val(e.lineHeight);
            else if ("image" == e.type && (t && "liImage" == jq(t).attr("id") || jq("#liImage").trigger("click"), "undefined" != typeof e.src && "" != e.src)) {
                var a = e.src.substring(e.src.lastIndexOf("/") + 1),
                    n = a.split("_");
                n.length > 1 && "temp" == n[0] && jq("#image_type").val(1)
            }
        }
    }

    function i() {
        canvas.clear(), canvas.overlayImage = null
    }

    function c(e, t) {
        "" != e ? s(e) : HideProgress()
    }

    function s(e) {
        fabric.Image.fromURL(e, function (e) {
            var t = 150,
                a = e.width / (e.height / t);
            e.scale(.5).set({
                height: t,
                width: a
            }), canvas.add(e), canvas.centerObject(e), e.setCoords(), canvas.setActiveObject(e), HideProgress()
        }, {
            crossOrigin: "Anonymous"
        })
    }

    function o() {
        return ShowProgress(), jQuery("#ctsimg_upload").ajaxSubmit(function (e) {
            var t = jQuery.parseJSON(e);
            jQuery("#image_msg").html(t.msg), t.imagepath ? c(t.imagepath, "upload") : HideProgress()
        }), !1
    }

    function r(e, t) {
        null != e && "" != $.trim(e) && canvas.setBackgroundImage(e, canvas.renderAll.bind(canvas), {
            backgroundImageStretch: !1,
            crossOrigin: "Anonymous"
        }), null != t && "" != $.trim(t) && l(t)
    }

    function l(e) {
        canvas.setOverlayImage(e,
            function (e) {
                canvas.renderAll(), canvas.controlsAboveOverlay = !0
            }, {
                crossOrigin: "Anonymous"
            })
    }

    function d(e) {
        properties = {}, $.each(e,
            function (e, t) {
                "NewVarID" != e && (properties[e] = t)
            }), quantity = jq("#txtQuantity").val(), param = "quantity=" + quantity + "&id=" + e.NewVarID, jQuery.each(properties,
            function (e, t) {
                param = param + "&properties[" + encodeURIComponent(e) + "]=" + encodeURIComponent(t)
            }), jQuery.ajax({
                type: "POST",
                url: "/cart/add.js",
                data: param,
                async: !1
            })
    }

    function v(e) {
        if (isNormalInteger(jq("#txtQuantity").val()) && jq("#txtQuantity").val() > 0) {
            ShowProgress(), canvas.deactivateAll().renderAll(), canvobj[prev_canvobj] = {
                imgid: prev_canvobj,
                customdata: JSON.stringify(canvas.toJSON()),
                screenshot: canvas.toDataURL()
            }, $.each(canvobj,
                function (e, t) {
                    t = $.parseJSON(t.customdata)
                });
            var t = {};
            t.VariantID = jQuery("#cust_variant_id").val(), t.CustomImage = canvobj, jQuery.ajax({
                type: "POST",
                url: app_front_url("custom_design/save/"),
                data: {
                    custom_opt: t
                },
                dataType: "json",
                success: function (t) {
                    if (t.type == MSG_TYPE_NOTICE) {
                        var a = t.text;
                        d(a), "CART" == e && window.parent.location.replace("/cart")
                    } else alert("Sorry, an error occured, please try again.");
                    HideProgress()
                }
            })
        } else alert("Please enter a valid queantity.")
    }

    function u() {
        jq(".canvas-tool-options").hide(), b()
    }

    function p() {
        canvas.renderAll.bind(canvas), jq(".cp-dv-print").show(), HideProgress()
    }

    function m() {
        jq("#tblTextEditor [data-title]").each(
            function () {
                jq(this).qtip({
                    content: jq(this).data("title"),
                    style: {
                        name: "dark",
                        "font-size": 12,
                        border: {
                            radius: 8
                        },
                        tip: {
                            corner: "bottomMiddle"
                        }
                    },
                    position: {
                        corner: {
                            target: "topMiddle",
                            tooltip: "bottomMiddle"
                        }
                    }
                })
            })
    }

    function g() {
        jq(".tab-container li").each(
            function () {
                jq(this).qtip({
                    content: jq(this).data("title"),
                    style: {
                        name: "dark",
                        "white-space": "nowrap",
                        "max-width": "none",
                        "font-size": 12,
                        border: {
                            radius: 6
                        },
                        tip: {
                            corner: "topMiddle"
                        }
                    },
                    position: {
                        corner: {
                            target: "bottomMiddle",
                            tooltip: "topMiddle"
                        }
                    }
                })
            })
    }

    function b() {
        jq("#message-input").val("Type your message here"), jq("#btnAddNewText").show(), jq("#dvTextAdd").hide();
        var e = canvas.getActiveObject();
        e && "text" == e.type ? (jq("#message-input").show(), jq("#tblTextEditor").show()) : (jq("#message-input").hide(), jq("#tblTextEditor").hide())
    }

    function h(e) {
        return "undefined" == typeof e || null == e || void 0 == typeof e ? !1 : !0
    }
    if (canvas = window._canvas = new fabric.Canvas("canvasProduct"), jq(".cp-custom-main-images").length > 0) {
        var f = jq(".cp-custom-main-images").first();
        prev_canvobj = f.data("id"), f.parent().addClass("active"), r(f.data("url"), f.data("trans-url"))
       
    }
    canvas.on("object:selected", n), canvas.on("selection:cleared", u), fabric.Object.prototype.transparentCorners = !1, fabric.Object.prototype.padding = 5, fabric.Object.prototype.transparentCorners = !1, canvas.on({
        "object:selected": function () {
            var e = ["grayscale", "invert", "sepia", "sepia2", "sharpen", "emboss"];
            if ("image" == canvas.getActiveObject().type)
                for (var t = 0; t < e.length; t++) jq(e[t]).checked = !!canvas.getActiveObject().filters[t]
        }
    });
    var j = ["add-image", "add-text", "product-details"],
        y = ["clip-art", "upload-image"];
    if (jq(".tab-control-main > li").click(function (e) {
            for (var t = -1, a = 0; a < j.length; a++) this.id == j[a] ? t = a : (jq("#" + j[a]).removeClass("active"), jq("#" + j[a] + "-tab").css("display", "none"));
            return "add-text" == j[t] ? (jq("#" + j[t]).addClass("active"), isFirstBind ? (isFirstBind = !1, jq("#" + j[t] + "-tab").show(), m()) : jq("#" + j[t] + "-tab").show(), b()) : (jq("#" + j[t] + "-tab").fadeIn(), jq("#" + j[t]).addClass("active")), !1
    }), jq(".tab-control-img > li").click(function (e) {
            for (var t = -1, a = 0; a < y.length; a++) this.id == y[a] ? t = a : (jq("#" + y[a]).removeClass("active"), jq("#" + y[a] + "-tab").css("display", "none"));
            return jq("#" + y[t] + "-tab").fadeIn(), jq("#" + y[t]).addClass("active"), !1
    }), jq(".show_text_block").click(function () {
            e(jq("#message-input").val())
    }), jq(".send-back").click(function () {
            var e = canvas.getActiveObject();
            e && canvas.sendToBack(e)
    }), jq(".bring-front").click(function () {
            var e = canvas.getActiveObject();
            e && canvas.bringToFront(e)
    }),
        jq(".center-h").click(function () {
            var e = canvas.getActiveObject();
            e && (canvas.centerObjectH(e), canvas.remove(e), canvas.add(e), canvas.setActiveObject(e))
    }), jq(".center-v").click(function () {
            var e = canvas.getActiveObject();
            e && (canvas.centerObjectV(e), canvas.remove(e), canvas.add(e), canvas.setActiveObject(e))
    }),
        jq("#ddlFontFamily, #ddlTextAlign, #slider_FS, #slider_LH").change(function () {
            var e = canvas.getActiveObject();
            e && e.set(jq(this).data("prop"), jq(this).val()), canvas.renderAll()
    }), jq("#slider_SW").change(function () {
            var e = canvas.getActiveObject();
            if (e) {
                var t = Number(jq(this).val());
                t > 0 ? e.set("stroke", "#" + jq("#strokeColor").val()) : e.set("stroke", "")
    }
            canvas.renderAll()
    }), jq("#chkbold, #chkItalic, #chkUnderline").click(function () {
            var e = canvas.getActiveObject();
            e && (jq(this).is(":checked") ? e.set(jq(this).data("prop"), jq(this).val()) : e.set(jq(this).data("prop"), "")), canvas.renderAll()
    }), jq("#message-input").keyup(function () {
            var e = canvas.getActiveObject();
            e && e.set("text", jq(this).val()), canvas.renderAll()
    }), jq("#textColor").change(function () {
            var e = canvas.getActiveObject();
            e && e.set("fill", "#" + jq(this).val()), canvas.renderAll()
    }), jq("#strokeColor").change(function () {
            var e = canvas.getActiveObject();
            e && (jq("#slider_SW").val() > 0 ? e.set("stroke", "#" + jq(this).val()) : e.set("stroke", "")), canvas.renderAll()
    }), jq(".cp_logos a").click(function () {
            c(jq(this).data("url"), "logo")
    }), jq("#btnAddToCart").click(function () {
            v("CART")
    }), jq(".remove_selected").click(function () {
            var e = canvas.getActiveObject(),
                t = canvas.getActiveGroup();
            if (t) {
                var a = t.getObjects();
                canvas.discardActiveGroup(), a.forEach(function (e) {
                    canvas.remove(e)
    })
    } else e && canvas.remove(e)
    }), jq(".cp-custom-main-images").click(function () {
        
            ShowProgress();
            var e = jq(this),
                t = e.data("id");
            jq(".cp-custom-main-images").parent("li").removeClass("active"), e.parent("li").addClass("active"), canvas.deactivateAll().renderAll(), canvobj[prev_canvobj] = {
        imgid: prev_canvobj,
        customdata: JSON.stringify(canvas.toJSON()),
        screenshot: canvas.toDataURL()
    }, i(), prev_canvobj = t, h(canvobj[t]) ? canvas.loadFromJSON(canvobj[t].customdata, p) : (r(e.data("url"), e.data("trans-url")), HideProgress())
    }), jq("#ctsimg_upload").submit(function () {
            return o(), !1
    }), g(), jq("#btnAddNewText").click(function () {
            canvas.deactivateAll().renderAll(), jq(this).hide(), jq("#message-input").show(), jq("#tblTextEditor").hide(), jq("#dvTextAdd").show()
    }), jq("#btnTextCancel").click(function () {
            b()
    }), jq("#cp_print").click(function () {
            var e = t();
            navigator.userAgent.toLowerCase().indexOf("chrome") > -1 ? (e.PPClose = !1, e.onbeforeunload = function () {
                return e.PPClose === !1 ? 'Leaving this page will block the parent window!\nPlease select "Stay on this Page" option and use the\nCancel button instead to close the Print Preview Window.\n' : void 0
    }, e.print(), e.PPClose = !0) : e.print()
    }), jq("#cp_download").click(function () {

        canvas.deactivateAll().renderAll();
        
        $('[name=imagedata]').val(canvas.toDataURL());
       
       
         //   t()
    }), "undefined" != typeof tmpCanvasObj && "" != tmpCanvasObj) {
        window.location.href.indexOf("shopify_designproductimage") <= 0 && (tmpCanvasObj = JSON.stringify(tmpCanvasObj), tmpCanvasObj = JSON.parse(tmpCanvasObj));
        var O = "";
        jq(".cp-custom-main-images").length > 0 && (O = jq(".cp-custom-main-images").first().data("id"), O in tmpCanvasObj ? prev_canvobj = O : (O = jq(".cp-custom-main-images").last().data("id"), O in tmpCanvasObj && (prev_canvobj = O))), "" != O && O == prev_canvobj && (ShowProgress(), canvas.deactivateAll().renderAll(), canvobj = tmpCanvasObj, i(), canvas.loadFromJSON(canvobj[prev_canvobj].customdata, p))
    } else jq(".cp-dv-print").show()
});