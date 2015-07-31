//
//  InterfaceController.swift
//  WatchKit2-Sample-Picker WatchKit Extension
//
//  Created by XuQing on 15/7/26.
//  Copyright © 2015年 XuQing1001. All rights reserved.
//

import WatchKit
import Foundation


class ListPcikerInterfaceController: WKInterfaceController {

    @IBOutlet var listPicker: WKInterfacePicker!
    
    var shapeList: [(String, String, String)] = [
        ("Oval", "椭圆", "smallShape1.png"),
        ("Triganle", "三角形", "smallShape2.png"),
        ("Rectangle", "矩形", "smallShape3.png"),
        ("Polygon", "五边形", "smallShape4.png"),
        ("Star", "星形", "smallShape5.png")]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        super.willActivate()
        
        let pickerItems: [WKPickerItem] = shapeList.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0// 列表项的标题文本
            pickerItem.caption = $0.1// 提示信息文本
            pickerItem.accessoryImage = WKImage(imageName: "\($0.2)")// 选项图标
            pickerItem.contentImage = WKImage(imageName: "background.png")// 背景图片

            return pickerItem
        }
        listPicker.setItems(pickerItems)
    }

    override func didDeactivate() {
        super.didDeactivate()
    }
    
    @IBAction func pickerSelectedItemChanged(value: Int) {
        NSLog("当前被选图形是: \(shapeList[value].1)")
    }
}
