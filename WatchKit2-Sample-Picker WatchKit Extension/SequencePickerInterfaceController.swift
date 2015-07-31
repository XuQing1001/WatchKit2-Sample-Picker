//
//  SequencePickerInterfaceController.swift
//  WatchKit2-Sample-Picker
//
//  Created by XuQing on 15/7/26.
//  Copyright © 2015年 XuQing1001. All rights reserved.
//

import WatchKit
import Foundation


class SequencePickerInterfaceController: WKInterfaceController {

    @IBOutlet var seqPicker: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        super.willActivate()
        
        let pickerItems: [WKPickerItem] = (0...100).map {
            let pickerItem = WKPickerItem()
            pickerItem.contentImage = WKImage(imageName: "status\($0).png")
            return pickerItem
        }
        seqPicker.setItems(pickerItems)
    }

    override func didDeactivate() {
        super.didDeactivate()
    }
    
    @IBAction func pickerSelectedItemChanged(value: Int) {
        NSLog("当前状态是: \(value)")
    }
}
