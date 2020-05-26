 (function (array, offset) {


     const PIXELS = 4;
     const PAGES = 1024 * 64;

     function asmInvert({instance, memory}){
         const canvas = document.getElementById("canvas");
         const context = canvas.getContext('2d');
         const asmBtn = document.getElementById("asmBtn");
         const img = new Image();
         let imageData;

         img.src = "./source/test.png";
         img.onload = () =>{
             context.drawImage(img, 0,0);
             imageData = context.getImageData(0,0, canvas.width, canvas.height);

             const bytePerImage = img.width*img.height*PIXELS;
             const minMemSize = bytePerImage * 2;
             const pagesNeeded = Math.ceil(minMemSize/PAGES);

             memory.grow(pagesNeeded);

             new Uint8ClampedArray(memory.buffer).set(imageData.data);
             console.log(imageData.data);
         };

         document.getElementById("asmBtn").addEventListener("click", function () {
            instance.exports.InvertColors(img.width, img.height);

             const  resultData =  new Uint8ClampedArray(memory.buffer,img.height*img.width*PIXELS,img.height*img.width*PIXELS);
             context.putImageData(new ImageData(resultData, img.width, img.height),0,0);
         });
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