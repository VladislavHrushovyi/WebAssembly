(function () {


     const PIXELS_BYTE = 4;
     const PAGES = 1024 * 64;

     const normDegree = degree =>{
         if(degree >= 360){
             return 0;
         }
         return degree;
     }

     function asmInvert({instance, memory}){
         const canvas = document.getElementById("canvas");
         const context = canvas.getContext('2d');
         let upload = document.getElementById("upload");
         const img = new Image();
         let imageData;
         let resultData;
         let degree = 0;

         upload.addEventListener('change', e => {
             img.src = URL.createObjectURL(e.target.files[0]);
             img.onload = () =>{
                 canvas.width = img.width;
                 canvas.height = img.height;
                 context.drawImage(img, 0,0);
                 imageData = context.getImageData(0,0, canvas.width, canvas.height);

                 const bytePerImage = img.width * img.height * PIXELS_BYTE;
                 const minMemSize = bytePerImage * 2;
                 if(memory.buffer.byteLength < minMemSize){
                     const pagesNeeded = Math.ceil(minMemSize/PAGES);
                     memory.grow(pagesNeeded);
                 }

                 new Uint8ClampedArray(memory.buffer, 0).set(imageData.data);

                 console.log(memory.buffer.byteLength);

             };
         });


         document.getElementById("rotate").addEventListener("click", function () {
             degree = normDegree(degree + 90);
             instance.exports.Rotate(img.width, img.height, degree);
             const resultData = new Uint8ClampedArray(
                 memory.buffer,
                 img.height * img.width * PIXELS_BYTE,
                 img.height * img.width * PIXELS_BYTE);

             if (degree === 90 || degree === 270) {
                 canvas.width = img.height;
                 canvas.height = img.width;
                 context.putImageData(new ImageData(resultData, img.height, img.width), 0, 0);
             } else {
                 canvas.width = img.width;
                 canvas.height = img.height;
                 context.putImageData(new ImageData(resultData, img.width, img.height), 0, 0);
             }
         });
         document.getElementById("invertColor").addEventListener("click", function () {
            instance.exports.InvertColors(img.width, img.height);
                 resultData = new Uint8ClampedArray(
                 memory.buffer,
                 img.width * img.height * PIXELS_BYTE,
                 img.width * img.height * PIXELS_BYTE);
             context.putImageData(new ImageData(resultData, img.width, img.height),0,0);
         });
         document.getElementById("grayScale").addEventListener("click", function () {
             instance.exports.Sepia(img.width, img.height);

             resultData =  new Uint8ClampedArray(
                 memory.buffer,
                 img.width*img.height*PIXELS_BYTE,
                 img.width*img.height*PIXELS_BYTE);
             context.putImageData(new ImageData(resultData, img.width, img.height),0,0);
         });
         document.getElementById("none").addEventListener("click", function () {
             context.drawImage(img, 0,0);
             imageData = context.getImageData(0,0, canvas.width, canvas.height);
         });
         document.getElementById("visibility").addEventListener("change", function () {
             let value = document.getElementById("visibility").value;
             instance.exports.Visible(img.width,img.height, value);

             resultData =  new Uint8ClampedArray(
                 memory.buffer,
                 img.width*img.height*PIXELS_BYTE,
                 img.width*img.height*PIXELS_BYTE);
             if (degree === 90 || degree === 270) {
                 canvas.width = img.height;
                 canvas.height = img.width;
                 context.putImageData(new ImageData(resultData, img.height, img.width), 0, 0);
             } else {
                 canvas.width = img.width;
                 canvas.height = img.height;
                 context.putImageData(new ImageData(resultData, img.width, img.height), 0, 0);
             }
         });
         document.getElementById("contrast").addEventListener("change",function () {
             let value = document.getElementById("contrast").value;
             instance.exports.Contrast(img.width,img.height, value);

             resultData =  new Uint8ClampedArray(
                 memory.buffer,
                 img.width*img.height*PIXELS_BYTE,
                 img.width*img.height*PIXELS_BYTE);
             if (degree === 90 || degree === 270) {
                 canvas.width = img.height;
                 canvas.height = img.width;
                 context.putImageData(new ImageData(resultData, img.height, img.width), 0, 0);
             } else {
                 canvas.width = img.width;
                 canvas.height = img.height;
                 context.putImageData(new ImageData(resultData, img.width, img.height), 0, 0);
             }
         });
         document.getElementById("temperature").addEventListener("change",function () {
             let value = document.getElementById("temperature").value;
             instance.exports.Temperature(img.width,img.height, value);

             resultData =  new Uint8ClampedArray(
                 memory.buffer,
                 img.width*img.height*PIXELS_BYTE,
                 img.width*img.height*PIXELS_BYTE);
             if (degree === 90 || degree === 270) {
                 canvas.width = img.height;
                 canvas.height = img.width;
                 context.putImageData(new ImageData(resultData, img.height, img.width), 0, 0);
             } else {
                 canvas.width = img.width;
                 canvas.height = img.height;
                 context.putImageData(new ImageData(resultData, img.width, img.height), 0, 0);
             }
         });
         document.getElementById("2xBTN").addEventListener("click", function () {
             const canvasTest = document.getElementById("testCanvas");
             const contextTestCanvas = canvasTest.getContext('2d');

             canvasTest.width = img.width * 2;
             canvasTest.height = img.height * 2;
             canvasTest.style="border:1px solid #000000;"

             const bytePerImageTest = img.width * img.height * PIXELS_BYTE;
             const minMemSizeTest = bytePerImageTest*5;
             if(memory.buffer.byteLength < minMemSizeTest){
                 const pagesNeededTest = Math.ceil(minMemSizeTest/PAGES);
                 memory.grow(pagesNeededTest);
                 console.log("New memory")
             }

             new Uint8ClampedArray(memory.buffer, 0).set(imageData.data);

             instance.exports.Zoom(img.width,img.height);
            console.log("після зума " + memory.buffer.byteLength);
             const resultTest = new Uint8ClampedArray(
                 memory.buffer,
                 img.width*img.height*PIXELS_BYTE,
                 (img.width*img.height*PIXELS_BYTE) * 4);

            console.log("result test "+resultTest.byteLength);
             contextTestCanvas.putImageData(new ImageData(resultTest, canvasTest.width, canvasTest.height), 0, 0);
         });
         document.getElementById("resize").addEventListener("click", function () {
            let newWidth = document.getElementById("widthImg").value;
            let newHeight = document.getElementById("heightImg").value;

             const canvasTest = document.getElementById("testCanvas");
             const contextTestCanvas = canvasTest.getContext('2d');

             canvasTest.width = newWidth;
             canvasTest.height = newHeight;
             canvasTest.style="border:1px solid #000000;"

            instance.exports.Resize(img.width, img.height, newWidth, newHeight);
             resultData = new Uint8ClampedArray(
                 memory.buffer,
                 img.width * img.height * PIXELS_BYTE,
                 newWidth * newHeight * PIXELS_BYTE);
             contextTestCanvas.putImageData(new ImageData(resultData, newWidth, newHeight),0,0);
         })
         //я не знаю как сделать листенер
         document.getElementById("balanceRed").addEventListener("change", function () {
            let redLevel = document.getElementById("balanceRed").value;
            let blueLevel = document.getElementById("balanceBlue").value;
            let greenLevel = document.getElementById("balanceGreen").value;

             instance.exports.BalanceColor(img.width,img.height, redLevel, blueLevel, greenLevel);

             resultData = new Uint8ClampedArray(
                 memory.buffer,
                 img.width*img.height*PIXELS_BYTE,
                 img.width*img.height*PIXELS_BYTE);

             context.putImageData(new ImageData(resultData, img.width, img.height),0,0);
         });
         document.getElementById("balanceBlue").addEventListener("change", function () {
            let redLevel = document.getElementById("balanceRed").value;
            let blueLevel = document.getElementById("balanceBlue").value;
            let greenLevel = document.getElementById("balanceGreen").value;

            instance.exports.BalanceColor(img.width,img.height, redLevel, blueLevel, greenLevel);

             resultData = new Uint8ClampedArray(
                 memory.buffer,
                 img.width*img.height*PIXELS_BYTE,
                 img.width*img.height*PIXELS_BYTE);

             context.putImageData(new ImageData(resultData, img.width, img.height),0,0);
         });
         document.getElementById("balanceGreen").addEventListener("change", function () {
            let redLevel = document.getElementById("balanceRed").value;
            let blueLevel = document.getElementById("balanceBlue").value;
            let greenLevel = document.getElementById("balanceGreen").value;

            instance.exports.BalanceColor(img.width,img.height, redLevel, blueLevel, greenLevel);

             resultData = new Uint8ClampedArray(
                 memory.buffer,
                 img.width*img.height*PIXELS_BYTE,
                 img.width*img.height*PIXELS_BYTE);

             context.putImageData(new ImageData(resultData, img.width, img.height),0,0);
         })
         //------------------------------
    }

    async function initWasmModule(){
        let memory = new WebAssembly.Memory({initial: 1});

        const imports = {
            env: {
                memory,
                abort: function () {
                    throw new Error('Some error')
                }
            }
        };

        const {instance} = await  WebAssembly.instantiate(
            await fetch("./build/optimized.wasm").then(r => r.arrayBuffer()),
            imports
        );

        if(instance.exports.memory){
            memory = instance.exports.memory;
        }

        return {
            instance,
            memory
        }
    }
    initWasmModule().then(asmInvert)
 })();

 function invert(){
     document.getElementById("canvas").style.filter="invert(100%)";
 }