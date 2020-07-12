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

export function Contrast(width: i32, height: i32, value: f64): void {
    // value = (100 + value)/100;
    // value *= value;

    let offset = width * height * BYTE_PER_IMAGE;
    for(let i = 0; i < offset; i+=4) {
        let r = load<u8>(i);
        let g = load<u8>(i + 1);
        let b = load<u8>(i + 2);

        let Red = r / 255.0;
        let Green = g / 255.0;
        let Blue = b / 255.0;

        Red = (((Red - 0.5) * value) + 0.5) * 255.0;
        Green = (((Green - 0.5) * value) + 0.5) * 255.0;
        Blue = (((Blue - 0.5) * value) + 0.5) * 255.0;

        let iR = Red;
        if(iR > 255.0){
            iR = 255.0
        }else if(iR < 0){
            iR = 0;
        }
        let iG = Green;
        if(iG > 255.0){
            iG = 255.0
        }else if(iG < 0){
            iG = 0;
        }
        let iB = Blue;
        if(iB > 255.0){
            iB = 255.0
        }else if(iB < 0){
            iB = 0;
        }

        store<u8>(offset + i, <u8>iR);
        store<u8>(offset + i+1, <u8>iG);
        store<u8>(offset + i+2, <u8>iB);
    }
}

export function Zoom(width: i32, height:i32): void {
    let offset = width * height * BYTE_PER_IMAGE;
    let i = 0;

    let d1Start = 0;
    let d1Limit = width*2;
    let d1Advance = 1;
    let d1Multiplier = 1;
    let d2Start = 0;
    let d2Limit = height*2;
    let d2Advance = 1;
    let d2Multiplier = width;

    for(let d2 = d2Start; d2 >= 0 && d2 < d2Limit; d2 += d2Advance){
        for(let d1 = d1Start;d1 >= 0 && d1 < d1Limit; d1 += d1Advance) {
            let in_idx = ((d1 * d1Multiplier) + (d2 * d2Multiplier));
            store<u32>(offset + (i) * BYTE_PER_IMAGE, load<u32>(in_idx * BYTE_PER_IMAGE));
            store<u32>(offset + (i+1) * BYTE_PER_IMAGE, load<u32>(in_idx * BYTE_PER_IMAGE));
            i+=2;
        }
    }
}

export function Temperature(width:i32, height:i32, value:f64): void {
    let offset = width * height * BYTE_PER_IMAGE;
    let tmpKelvin = value/100;

    for(let i = 0; i < offset; i+=4) {
        let r = calcRed(load<u8>(i),tmpKelvin);
        let g = calcGreen(load<u8>(i + 1),tmpKelvin);
        let b = calcBlue(load<u8>(i + 2),tmpKelvin);

        store<u8>(offset + i, <u8>r);
        store<u8>(offset + i+1, <u8>g);
        store<u8>(offset + i+2, <u8>b);
    }
}

function calcRed(red: f64, tmpKelvin:f64):u8 {
    let tmpCalc = <f64>0;
    let temp = <f64>0;
    if(tmpKelvin<=66){
        red = 255
    }else{
        temp = tmpKelvin-60;
        tmpCalc =  329.698727446 * Math.pow(temp ,-0.1332047592);
        red = tmpCalc;
        if(red < 0){
            red = 0;
        }else if(red > 255){
            red = 255
        }
    }

    return <u8>red;
}

function calcGreen(green: f64, tmpKelvin:f64):u8 {
    let tmpCalc = <f64>0;
    let temp = <f64>0;
    if( tmpKelvin <= 66) {
        temp = tmpKelvin;
        tmpCalc = 99.4708025861 * Math.log(temp) - 161.1195681661;
        green = tmpCalc;
        if(green < 0)
        green = 0;
        if(green > 255){
            green = 255
        }
    }else{
        temp = tmpKelvin - 60;
        tmpCalc = 288.1221695283 * (Math.pow(temp,-0.0755148492));
        green = tmpCalc;
        if(green < 0){
            green=0;
        }else if(green > 255){
            green = 255;
        }
    }

    return <u8>green;
}

function calcBlue(blue: f64, tmpKelvin:f64): u8 {
    let tmpCalc = <f64>0;
    let temp = <f64>0;
    if(tmpKelvin >= 66){
        blue = 255;
    }else if(tmpKelvin<=19) {
        blue = 0;
    }
    else{
        temp = tmpKelvin-10;
        tmpCalc = 138.5177312231 * Math.log(temp) - 305.0447927307;
        blue = tmpCalc;
        if(blue<0){
            blue = 0;
        }else if(blue>255){
            blue=255;
        }
    }
    return <u8>blue;
}

export function Resize(width:i32,height:i32, newWidth:i32, newHeight:i32):void {
    let i = 0;
    let offset = width * height * BYTE_PER_IMAGE;

    let d1Start = width-newWidth;
    let d1Limit = d1Start+newWidth;
    let d1Advance = 1;
    let d1Multiplier = 1;
    let d2Start = (height-newHeight);
    let d2Limit = d2Start+newHeight;
    let d2Advance = 1;
    let d2Multiplier = d1Start+newWidth;

    for(let d2 = d2Start; d2 >= 0 && d2 < d2Limit; d2 += d2Advance){
        for(let d1 = d1Start; d1 >= 0 && d1 < d1Limit; d1+=d1Advance) {
            let in_idx = ((d1 * d1Multiplier) + (d2 * d2Multiplier));
            store<u32>(offset + i * BYTE_PER_IMAGE, load<u32>(in_idx * BYTE_PER_IMAGE));
            i += 1;
        }
    }
}

export function BalanceColor(width:i32, height:i32, redLevel:f64, blueLevel:f64, greenLevel:f64):void {
    let offset = width * height * BYTE_PER_IMAGE;

    let blue = <f64>0;
    let green = <f64>0;
    let red = <f64>0;

    let blueLevelFloat = blueLevel;
    let greenLevelFloat = greenLevel;
    let redLevelFloat = redLevel;

    for (let i = 0; i < offset; i += 4)
    {
        red = 255.0 / blueLevelFloat * load<u8>(i);
        blue = 255.0 / greenLevelFloat * load<u8>(i+1);
        green = 255.0 / redLevelFloat * load<u8>(i+2);

        if (blue > 255) {blue = 255;}
        else if (blue < 0) {blue = 0;}

        if (green > 255) {green = 255;}
        else if (green < 0) {green = 0;}

        if (red > 255) {red = 255;}
        else if (red < 0) {red = 0;}

        store<u8>(offset + i, <u8>red);
        store<u8>(offset + i+1, <u8>blue);
        store<u8>(offset + i+2, <u8>green);
    }
}

export function Pixelization(width:i32, height:i32, degreePixel:i32):void {
    let offset = width * height * BYTE_PER_IMAGE;
    let i = 0;
    let finish = 0;

    let d1Start = 0;
    let d1Limit = width * 2;
    let d1Advance = 4;
    let d1Multiplier = 1;
    let d2Start = 0;
    let d2Limit = height * 2;
    let d2Advance = 4;
    let d2Multiplier = width / 2;

    for(let d2 = d2Start; d2 >= 0 && d2 < d2Limit; d2 += d2Advance){
        for(let d1 = d1Start;d1 >= 0 && d1 < d1Limit; d1 += d1Advance) {
            let in_idx = ((d1 * d1Multiplier) + (d2 * d2Multiplier));
            while (finish < 4){
                store<u32>(offset + i * BYTE_PER_IMAGE, load<u32>(in_idx * BYTE_PER_IMAGE));
                i++
                finish++;
            }
            finish = 0;
        }
    }
}

export function InvertRedChannel(width: i32, height: i32):void {
    let offset = width * height * BYTE_PER_IMAGE;

    for(let i = 0; i < offset; i+=4){

        let currByte = load<u8>(i);

        currByte = 255 - currByte;

        store<u8>(offset + i, currByte);
    }
}

export function InvertGreenChannel(width: i32, height: i32):void {
    let offset = width * height * BYTE_PER_IMAGE;

    for(let i = 2; i < offset+1; i+=4){

        let currByte = load<u8>(i-1);

        currByte = 255 - currByte;

        store<u8>(offset + i - 1, currByte);
    }
}

export function InvertBlueChannel(width: i32, height: i32):void {
    let offset = width * height * BYTE_PER_IMAGE;

    for(let i = 3; i < offset+1; i+=4){

        let currByte = load<u8>(i-1);

        currByte = 255 - currByte;

        store<u8>(offset + i - 1, currByte);
    }
}

export function BlurImage(width: i32, height: i32):void {
    let offset = width * height * BYTE_PER_IMAGE;

        for(let i = 0; i < offset - 12; i += 4){
            let red1 =  load<u8>(i);
            let green1 = load<u8>(i + 1);
            let blue1 = load<u8>(i + 2);
            let alpha1 = load<u8>(i + 3);

            let red2 =  load<u8>(i + 4);
            let green2 = load<u8>(i + 5);
            let blue2 = load<u8>(i + 6);
            let alpha2 = load<u8>(i + 7);

            let red3 =  load<u8>(i);
            let green3 = load<u8>(i + 8);
            let blue3 = load<u8>(i + 9);
            let alpha3 = load<u8>(i + 10);

            let bR = <u8>((red1 + red2 + red3) / 2);
            let bG = <u8>((green1 + green2 + green3) / 2);
            let bB = <u8>((blue1 + blue2 + blue3) / 2);

            store<u8>(offset + i, bR);
            store<u8>(offset + i+1, bG);
            store<u8>(offset + i+2, bB);
        }
}

export function NoiseImage(width: i32, height: i32) : void {
    let offset = width * height * BYTE_PER_IMAGE;

    let v = <f64>0.04;
    let stdFev = Math.sqrt(v);
    for(let i = 0; i < offset-4; i += 4){
        let noise = (9 - <f64>0.5) * 2 * stdFev;

        store<u8>(offset+i, load<u8>(i)* <u8>noise);
        store<u8>(offset+i + 1, load<u8>(i + 1) * <u8>noise);
        store<u8>(offset+i + 2, load<u8>(i + 2) * <u8>noise);
    }
}

export function ZoomTest(width: i32, height:i32): void {
    let offset = width * height * BYTE_PER_IMAGE;

    for (let i = 0; i < offset - 4; i++) {
        for (let j = i; j < i + 4; j++) {
            store<u32>(offset + j * BYTE_PER_IMAGE, load<u32>(i * BYTE_PER_IMAGE));
        }
    }
}
