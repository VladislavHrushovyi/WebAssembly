// The entry file of your WebAssembly module.
const BYTE_PER_IMAGE = 4;

export function InvertColors(width: i32, height: i32):void {
 let offset = width * height * BYTE_PER_IMAGE;

 for(let i = 1; i < offset+1; i++){
     let currByte = load<u8>(i-1);
     if(i % 4 !== 0){
         currByte = 255 - currByte;
     }
     store<u8>(offset + i - 1, currByte);
 }

}
