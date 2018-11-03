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
let pic = UIImage(named:"tigers.jpg")
let picColor = pic!.getPixelColor(pos: CGPoint.zero)
let color = UIColor.red

let hex = color.toHexString
let picColorHex = picColor.toHexString
// hex = "FF0000"
