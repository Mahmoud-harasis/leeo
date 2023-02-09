// let canvas = new fabric.Canvas('tshirt-canvas');

//             function updateTshirtImage(imageURL){
//                 fabric.Image.fromURL(imageURL, function(img) {                   
//                     img.scaleToHeight(300);
//                     img.scaleToWidth(300); 
//                     canvas.centerObject(img);
//                     canvas.add(img);
//                     canvas.renderAll();
//                 });
//             }
            
//             // Update the TShirt color according to the selected color by the user
//             document.getElementById("tshirt-color").addEventListener("change", function(){
//                 document.getElementById("tshirt-div").style.backgroundColor = this.value;
//             }, false);

//             // Update the TShirt color according to the selected color by the user
//             document.getElementById("tshirt-design").addEventListener("change", function(){

//                 // Call the updateTshirtImage method providing as first argument the URL
//                 // of the image provided by the select
//                 updateTshirtImage(this.value);
//             }, false);

//             // When the user clicks on upload a custom picture
//             document.getElementById('tshirt-custompicture').addEventListener("change", function(e){
//                 var reader = new FileReader();
                
//                 reader.onload = function (event){
//                     var imgObj = new Image();
//                     imgObj.src = event.target.result;

//                     // When the picture loads, create the image in Fabric.js
//                     imgObj.onload = function () {
//                         var img = new fabric.Image(imgObj);

//                         img.scaleToHeight(300);
//                         img.scaleToWidth(300); 
//                         canvas.centerObject(img);
//                         canvas.add(img);
//                         canvas.renderAll();
//                     };
//                 };

//                 // If the user selected a picture, load it
//                 if(e.target.files[0]){
//                     reader.readAsDataURL(e.target.files[0]);
//                 }
//             }, false);

//             // When the user selects a picture that has been added and press the DEL key
//             // The object will be removed !
//             document.addEventListener("keydown", function(e) {
//                 var keyCode = e.keyCode;

//                 if(keyCode == 46){
//                     console.log("Removing selected element on Fabric.js on DELETE key !");
//                     canvas.remove(canvas.getActiveObject());
//                 }
//             }, false);

// // Define as node the T-Shirt Div
// var node = document.getElementById('tshirt-div');

// domtoimage.toPng(node).then(function (dataUrl) {
//     // Print the data URL of the picture in the Console
//     console.log(dataUrl);

//     // You can for example to test, add the image at the end of the document
//     var img = new Image();
//     img.src = dataUrl;
//     document.body.appendChild(img);
// }).catch(function (error) {
//     console.error('oops, something went wrong!', error);
// });

///////////////////////////////////////




	var canvas = new fabric.Canvas("backCanvas");

document.getElementById('fileToUpload').addEventListener("change", function(e){
    var reader = new FileReader();

    reader.onload = function (event){
        var imgObj = new Image();
        imgObj.src = event.target.result;

        // When the picture loads, create the image in Fabric.js
        imgObj.onload = function () {
            var img = new fabric.Image(imgObj);

            img.scaleToHeight(300);
            img.scaleToWidth(300); 
            canvas.centerObject(img);
            canvas.add(img);
            canvas.renderAll();
        };
    };

    // If the user selected a picture, load it
    if(e.target.files[0]){
        reader.readAsDataURL(e.target.files[0]);
    }
}, false);

// When the user selects a picture that has been added and press the DEL key
// The object will be removed !
canvas.on('mouse:down', function() {
   canvas.defaultCursor = 'default';
});
canvas.on('mouse:up', function() {
   canvas.defaultCursor = 'pointer';
});
document.addEventListener("keydown", function(e) {
    var keyCode = e.keyCode;

    if(keyCode == 46){
        alert("Selected element removed!");
        canvas.remove(canvas.getActiveObject());
    }
}, false);


    $(document).ready(function(){
        $("#tshirttype").change(function(){
            if($(this).val() !== ''){
                $("img[name=tshirtview]").attr("src",$(this).val());
            }
        });
    });
    $(window).on('load', function(){
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-35639689-1']);
        _gaq.push(['_trackPageview']);
        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    });


  
 
		var valueSelect = $("#tshirttype").val();
		var frontImages = {
			"image/crew_front.png": "image/crew_back.png",
			"image/mens_longsleeve_front.png": "image/mens_longsleeve_back.png",
			"image/mens_tank_front.png": "image/mens_tank_back.png",
			"image/mens_hoodie_front.png": "image/mens_hoodie_back.png",
			// add more front/back image pairs here
		};
        $("#tshirttype").change(function(){
            valueSelect = $(this).val();
        });
        
        $('#flipback').click(function() {
            var backImage = frontImages[valueSelect];
            if (backImage) {
                if ($(this).attr("data-original-title") == "Show Back View") {
                    $(this).attr('data-original-title', 'Show Front View');
                    $("#tshirtFacing").attr("src", backImage);
                    let a = JSON.stringify(canvas);
                    canvas.clear();
                    try {
                        let json = JSON.parse(b);
                        canvas.loadFromJSON(b);
                    } catch (e) {}
                } else {
                    $(this).attr('data-original-title', 'Show Back View');
                    $("#tshirtFacing").attr("src", valueSelect);
                    let b = JSON.stringify(canvas);
                    canvas.clear();
                    try {
                        let json = JSON.parse(a);
                        canvas.loadFromJSON(a);
                    } catch (e) {}
                }
            }
        });
            
    
       (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
       (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
       m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
       })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
    
       ga('create', 'UA-35639689-1', 'auto');
       ga('send', 'pageview');
    
       