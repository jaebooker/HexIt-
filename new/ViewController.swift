//
//  ViewController.swift
//  new
//
//  Created by Jaeson Booker on 11/3/18.
//  Copyright © 2018 Jaeson Booker. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    //init(x: Int, y: Int)
//    let params = ["username":"john", "password":"123456"] as Dictionary<String, String>
//
//    var request = URLRequest(url: URL(string: "http://localhost:8080/api/1/login")!)
//
    override func viewDidLoad() {
         //let point = CGPoint(x: 0, y: 0)
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

        //let point = CGPoint.zero
//        typealias NSRect = CGRect
//        var image = UIImage(named:"tigers.jpg")
//        var rect = NSRect(x: 0, y: 0, width: image!.size.width, height: image!.size.height)
//        let cgImage = image.CGImageForProposedRect(&rect, context: nil, hints: nil)!.takeUnretainedValue()
//        let bitmapRep = NSBitmapImageRep(CGImage: cgImage)
//        if let imageData = bitmapRep.representationUsingType(NSBitmapImageFileType.NSPNGFileType, properties: [:]) {
//            let len = imageData.length
//
//            var bytes = [UInt8](count: len, repeatedValue: 0)
//            imageData.getBytes(&bytes, length: len)
//
//            var result = ""
//
//            for i in 0...len - 1 {
//                if i > 0 {
//                    result += ","
//                }
//
//                result += String(format: "0x%x", arguments: [bytes[i]])
//            }
//
//            println(result)
 //       }
//        request.httpMethod = "POST"
//        request.httpBody = try? JSONSerialization.data(withJSONObject: params, options: [])
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//
//        let session = URLSession.shared
//        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
//            print(response!)
//            do {
//                let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
//                print(json)
//            } catch {
//                print("error")
//            }
//        })
//
//        task.resume()
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
//        let point = String(data[pixelInfo])
//        let pointHex = String(Int(point, radix: 2)!, radix: 16)
//        print(pointHex)
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
let picColor = pic!.getPixelColor(pos: CGPoint.zero)
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

let picColorHex = picColor.toHexString
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
// hex = "FF0000"
