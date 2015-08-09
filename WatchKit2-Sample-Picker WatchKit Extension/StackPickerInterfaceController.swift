//
//  StackPickerInterfaceController.swift
//  WatchKit2-Sample-Picker
//
//  Created by XuQing on 15/7/26.
//  Copyright © 2015年 XuQing1001. All rights reserved.
//

import WatchKit
import Foundation


class StackPickerInterfaceController: WKInterfaceController {

    @IBOutlet var stackPicker: WKInterfacePicker!
    
    var items: [String]! = nil
    var shapeList: [String] = ["椭圆", "三角形", "矩形", "五边形", "星形"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        super.willActivate()
        
        items = (1...5).map { "shape\($0).png" }
        
        let pickerItems: [WKPickerItem] = items.map {
            let pickerItem = WKPickerItem()
            pickerItem.contentImage = WKImage(imageName: $0)
            return pickerItem
        }
        stackPicker.setItems(pickerItems)
        stackPicker.focus()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }
    
    @IBAction func pickerSelectedItemChanged(value: Int) {
        NSLog("当前被选图形是: \(shapeList[value])")
    }
}
