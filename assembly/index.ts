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


export function Sepia(width: i32, height: i32): void {
    let offset = width * height * BYTE_PER_IMAGE;
    for(let i = 0; i < offset; i+=4){
        let red =  load<u8>(i);
        let green = load<u8>(i + 1);
        let blue = load<u8>(i + 2);
        let alpha = load<u8>(i + 3);
        let luma = red * 0.2126 + green * 0.7152 + blue * 0.0722;
        store<u8>(offset + i, <u8>luma);
        store<u8>(offset + i+1, <u8>luma);
        store<u8>(offset + i+2, <u8>luma);
        store<u8>(offset + i+3, alpha);
    }
}

export function Visible(width: i32, height: i32, value: u8): void {
    let offset = width * height * BYTE_PER_IMAGE;
    for(let i = 0; i < offset; i+=4){
        let alpha = load<u8>(i + 3);
        alpha -=  value;

        store<u8>(offset + i+3, alpha);
    }
}

export function Rotate(width: i32, height: i32, rotate: i32): void {
    let offset = width * height * BYTE_PER_IMAGE;
    let i = 0;

    let d1Start = 0;
    let d1Limit = width;
    let d1Advance = 1;
    let d1Multiplier = 1;
    let d2Start = 0;
    let d2Limit = height;
    let d2Advance = 1;
    let d2Multiplier = width;

    if(rotate == 90){
        d1Start = height-1;
        d1Limit = height;
        d1Advance = -1;
        d1Multiplier = width;
        d2Start = 0;
        d2Limit = width;
        d2Advance = 1;
        d2Multiplier = 1;
    }else if(rotate === 180){
        d1Start = width -1;
        d1Limit = width;
        d1Advance = -1;
        d1Multiplier = 1;
        d2Start = height - 1;
        d2Limit = height;
        d2Advance = -1;
        d2Multiplier = width;
    }else if(rotate === 270){
        d1Start = 0;
        d1Limit = height;
        d1Advance = 1;
        d1Multiplier = width;
        d2Start = width - 1;
        d2Limit = width;
        d2Advance = -1;
        d2Multiplier = 1;
    }

    for(let d2 = d2Start; d2 >= 0 && d2 < d2Limit; d2 += d2Advance){
        for(let d1 = d1Start; d1 >= 0 && d1 < d1Limit; d1+=d1Advance) {
            let in_idx = ((d1 * d1Multiplier) + (d2 * d2Multiplier));
            store<u32>(offset + i * BYTE_PER_IMAGE, load<u32>(in_idx * BYTE_PER_IMAGE));
            i += 1;
        }
    }
}

// export function Rotate(width: i32, height: i32, rotate: i32): void {
//     for(let y = 0; y < height; y++){
//         for(let x = 0; x < width; x++){
//             let inPixel = load<u32>(y * width + x);
//             store<u32>(rorate(x,y),inPixel);
//         }
//     }
// }
