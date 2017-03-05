function createMugCenter(path, sourceimage) {

    var canvas1 = document.getElementById("canvas1");

    var ctx = canvas1.getContext("2d");

    var productImg = new Image();

    productImg.onload = function () {

        var iw = productImg.width;

        var ih = productImg.height;

        canvas1.width = iw;
        canvas1.height = ih;

        ctx.drawImage(productImg, 0, 0, productImg.width, productImg.height,
                       0, 0, iw, ih);

    };

    productImg.src = sourceimage;

    var img = new Image();
    img.onload = start;
    img.src = path;
    var pointer = 0;

    function start() {

        var iw = img.width;
        var ih = img.height;

        var xOffset = 132,
            yOffset = 400;

        var a = 300.0;
        var b = 15.0;

        var scaleFactor = iw / (2 * a);

        // draw vertical slices

        for (var X = 0; X < 500; X += 1) {
            var y = b / 127 * Math.sqrt(127 * 127 - (X - 127) * (X - 127)); // ellipsis equation
            ctx.drawImage(img, X * scaleFactor +100, 1, 6, ih, X + xOffset, y + yOffset, 1, ih - 490 + y / 2);
        }

        CreateMug();


    }
}

function createMugLeft(path, sourceimage) {
  
    var canvas1 = document.getElementById("canvas1");
    
    var ctx = canvas1.getContext("2d");

    var productImg = new Image();
 
    productImg.onload = function () {
        
        var iw = productImg.width;

        var ih = productImg.height;

        canvas1.width = iw;
        canvas1.height = ih;

        ctx.drawImage(productImg, 0, 0, productImg.width, productImg.height,
                       0, 0, iw, ih);

    };

    productImg.src = sourceimage;

    var img = new Image();
    img.onload = start;
    img.src = path;
    var pointer = 0;

    function start() {
       
        var iw = img.width - 200;
        var ih = img.height;

        var xOffset = 200,
            yOffset = 410;

        var a = 300.0;
        var b = 15.0;

        var scaleFactor = iw / (2 * a);

        // draw vertical slices
       
        for (var X = 0; X < 500; X += 1) {
            var y = b / 120 * Math.sqrt(120 * 120 - (X - 120) * (X - 120)); // ellipsis equation
            ctx.drawImage(img, X * scaleFactor, 1, 6, ih, X + xOffset, y + yOffset, 1, ih - 490 + y / 2);
        }
      
        CreateMug();
       
    }
}

function createMugRight(path, sourceimage) {

    var canvas1 = document.getElementById("canvas1");

    var ctx = canvas1.getContext("2d");

    var productImg = new Image();

    productImg.onload = function () {

        var iw = productImg.width;

        var ih = productImg.height;

        console.log("height");

        canvas1.width = iw;
        canvas1.height = ih;

        ctx.drawImage(productImg, 0, 0, productImg.width, productImg.height,
                       0, 0, iw, ih);

    };

    productImg.src = sourceimage;

    var img = new Image();
    img.onload = start;
    img.src = path;
    var pointer = 0;

    function start() {

        var iw = img.width;
        var ih = img.height;

        var xOffset = 70,
            yOffset = 410;

        var a = 300.0;
        var b = 15.0;

        var scaleFactor = iw / (2 * a);

        // draw vertical slices

        for (var X = 0; X < 500; X += 1) {
            var y = b / 120 * Math.sqrt(120 * 120 - (X - 120) * (X - 120)); // ellipsis equation
            ctx.drawImage(img, X * scaleFactor + 300, 1, 6, ih, X + xOffset, y + yOffset, 1, ih - 490 + y / 2);
        }
        CreateMug();
    }
}

function CreateMug()
{
    var canvas1 = document.getElementById("canvas1");
    var id1 = canvas1.toDataURL();
    $.ajax({
        url: "/Admin/Category/SaveMugImage/",
        data: JSON.stringify({ base64: id1 }),
        contentType: 'application/json; charset=utf-8',
        type: 'Post',
        async: false,
        success: function (path) {
           
            $('form').submit();
        }
    });
}
