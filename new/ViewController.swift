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
        var picAppend: [String] = [""]
        var range1: CGFloat = 0.1
        let range2: CGFloat = 1.0
        while range1 < range2 {
            let ipicColor1 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2)+range1, y: (widthInPixels/2)))
            let ipicColor2 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2)-range1, y: (widthInPixels/2)))
            let ipicColor3 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2), y: (widthInPixels/2)+range1))
            let ipicColor4 = pic!.getPixelColor(pos: CGPoint(x: (widthInPixels/2), y: (widthInPixels/2)-range1))
            
            let ipicColorHex1 = ipicColor1.toHexString
            let ipicColorHex2 = ipicColor2.toHexString
            let ipicColorHex3 = ipicColor3.toHexString
            let ipicColorHex4 = ipicColor4.toHexString
            
            picAppend.append(ipicColorHex1)
            picAppend.append(ipicColorHex2)
            picAppend.append(ipicColorHex3)
            picAppend.append(ipicColorHex4)
            range1 += 0.1
        }
        print(picAppend)
        var count = pixelArray.count
        var n = 0
        while n < count {
            var index = n+1
            var newSwitch = false
            var didDestroy = false
            while index < count {
                if pixelDict[pixelArray[n]] == nil {
                    pixelDict[pixelArray[n]] = 1
                    newSwitch = true
                }
                if pixelArray[n] == pixelArray[index] {
                    pixelDict[pixelArray[n]] = pixelDict[pixelArray[n]]! + 1
                    if newSwitch {
                        pixelArray.remove(at: index)
                        count -= 1
                        if didDestroy == false {
                            didDestroy = true
                        }
                    }
                }
                if didDestroy == true {
                    index -= 1
                }
                index += 1
            }
            if didDestroy == true {
                n -= 1
            }
            n += 1
        }
        print(pixelDict)
        
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
let pic = UIImage(named:"tigers.jpg")
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

var pixelArray = [picColorHex1, picColorHex2, picColorHex3, picColorHex4, picColorHex5, picColorHex6, picColorHex7, picColorHex8, picColorHex9, picColorHex10, picColorHex11, picColorHex12, picColorHex13, picColorHex14, picColorHex15, picColorHex16, picColorHex17, picColorHex18, picColorHex19]
var pixelDict = [picColorHex1: 0]
