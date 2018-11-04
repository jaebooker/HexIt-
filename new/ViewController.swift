//
//  ViewController.swift
//  new
//
//  Created by Jaeson Booker on 11/3/18.
//  Copyright © 2018 Jaeson Booker. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        print(picColorHex)
        print(picColorHex1)
        print(picColorHex2)
        print(picColorHex3)
        print(picColorHex4)
        print(picColorHex5)
        print(picColorHex6)
        print(picColorHex7)
        print(picColorHex8)
        print(picColorHex9)
        print(picColorHex10)
        print(picColorHex11)
        print(picColorHex12)
        print(picColorHex13)
        print(picColorHex14)
        print(picColorHex15)
        print(picColorHex16)
        print(picColorHex17)
        print(picColorHex18)
        print(picColorHex19)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
extension UIImage {
    func getPixelColor(pos: CGPoint) -> UIColor {
        let pixelData = self.cgImage!.dataProvider!.data
        let data: UnsafePointer<UInt8> = CFDataGetBytePtr(pixelData)
        
        let pixelInfo: Int = ((Int(self.size.width) * Int(pos.y)) + Int(pos.x)) * 4
        
        let r = CGFloat(data[pixelInfo]) / CGFloat(255.0)
        let g = CGFloat(data[pixelInfo+1]) / CGFloat(255.0)
        let b = CGFloat(data[pixelInfo+2]) / CGFloat(255.0)
        let a = CGFloat(data[pixelInfo+3]) / CGFloat(255.0)
        
        return UIColor(red: r, green: g, blue: b, alpha: a)
    }
    
}
extension UIColor {
    var toHexString: String {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        return String(
            format: "%02X%02X%02X",
            Int(r * 0xff),
            Int(g * 0xff),
            Int(b * 0xff)
        )
    }
}
let pic = UIImage(named:"colorgradient.jpg")
let heightInPoints = pic!.size.height
let widthInPoints = pic!.size.width
let heightInPixels = heightInPoints * pic!.scale
let widthInPixels = widthInPoints * pic!.scale
let picColor1 = pic!.getPixelColor(pos: CGPoint(x: (widthInPoints/2)+0.1, y: (heightInPoints/2)))
let picColor2 = pic!.getPixelColor(pos: CGPoint(x: (widthInPoints/2), y: (heightInPoints/2)+0.1))
let picColor3 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2)-0.1, y: (heightInPixels/2)))
let picColor4 = pic!.getPixelColor(pos: CGPoint(x: (widthInPoints/2), y: (heightInPoints/2)-0.1))
let picColor5 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2)+0.1, y: (widthInPixels/2)+0.1))
let picColor6 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2)-0.1, y: (widthInPixels/2)-0.1))
let picColor7 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2), y: (widthInPixels/2)))
let picColor8 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2)-0.2, y: (widthInPixels/2)))
let picColor9 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2)+0.2, y: (widthInPixels/2)))
let picColor10 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2), y: (widthInPixels/2)-0.2))
let picColor11 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2), y: (widthInPixels/2)+0.2))
let picColor12 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2)-0.2, y: (widthInPixels/2)-0.1))
let picColor13 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2)+0.2, y: (widthInPixels/2)+0.1))
let picColor14 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2)-0.1, y: (widthInPixels/2)-0.2))
let picColor15 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2)+0.1, y: (widthInPixels/2)+0.2))
let picColor16 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2)+0.2, y: (widthInPixels/2)-0.1))
let picColor17 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2)-0.2, y: (widthInPixels/2)+0.1))
let picColor18 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2)-0.1, y: (widthInPixels/2)+0.2))
let picColor19 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2)+0.1, y: (widthInPixels/2)-0.2))

let picColorHex1 = picColor1.toHexString
let picColorHex2 = picColor2.toHexString
let picColorHex3 = picColor3.toHexString
let picColorHex4 = picColor4.toHexString
let picColorHex5 = picColor5.toHexString
let picColorHex6 = picColor6.toHexString
let picColorHex7 = picColor7.toHexString
let picColorHex8 = picColor8.toHexString
let picColorHex9 = picColor9.toHexString
let picColorHex10 = picColor10.toHexString
let picColorHex11 = picColor11.toHexString
let picColorHex12 = picColor12.toHexString
let picColorHex13 = picColor13.toHexString
let picColorHex14 = picColor14.toHexString
let picColorHex15 = picColor15.toHexString
let picColorHex16 = picColor16.toHexString
let picColorHex17 = picColor17.toHexString
let picColorHex18 = picColor18.toHexString
let picColorHex19 = picColor19.toHexString
