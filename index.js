 (function (array, offset) {


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
         const img = new Image();
         let imageData;
         let degree = 0;

         img.src = "./source/test.png";
         img.onload = () =>{
             context.drawImage(img, 0,0);
             imageData = context.getImageData(0,0, canvas.width, canvas.height);

             const bytePerImage = img.width * img.height * PIXELS_BYTE;
             const minMemSize = bytePerImage * 3;
             const pagesNeeded = Math.ceil(minMemSize/PAGES);

             memory.grow(pagesNeeded);

             new Uint8ClampedArray(memory.buffer, 0).set(imageData.data);
         };

         document.getElementById("rotate").addEventListener("click", function () {
             degree = normDegree(degree+90);
             instance.exports.Rotate(img.width, img.height, degree);

             const  resultData =  new Uint8ClampedArray(memory.buffer,
                 img.height*img.width*PIXELS_BYTE,
                 img.height*img.width*PIXELS_BYTE);
             context.putImageData(new ImageData(resultData, img.width, img.height),0,0);
         });

         document.getElementById("asmBtn").addEventListener("click", function () {
            instance.exports.InvertColors(img.width, img.height);

             const  resultData =  new Uint8ClampedArray(
                 memory.buffer,
                 img.width*img.height*PIXELS_BYTE,
                 img.width*img.height*PIXELS_BYTE);
             context.putImageData(new ImageData(resultData, img.width, img.height),0,0);
         });
         document.getElementById("sepia").addEventListener("click", function () {
             instance.exports.Sepia(img.width, img.height);

             const  resultData =  new Uint8ClampedArray(
                 memory.buffer,
                 img.width*img.height*PIXELS_BYTE,
                 img.width*img.height*PIXELS_BYTE);
             context.putImageData(new ImageData(resultData, img.width, img.height),0,0);
         });

    }

        async function initWasmModule(){
            let memory = new WebAssembly.Memory({initial: 255});

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