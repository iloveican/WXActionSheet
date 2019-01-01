//
//  WXActionSheetItem.swift
//  WXActionSheetDemo
//
//  Created by xu.shuifeng on 2018/12/26.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import UIKit

public typealias WXActionSheetHandler = ((WXActionSheet) -> Void)

public class WXActionSheetItem {
    
    public enum ItemType {
        case `default`
        case destructive
        case cancel
    }
    
    public var title: String?
    public var imageEdgeInsets: UIEdgeInsets = .zero
    public var titleEdgeInsets: UIEdgeInsets = .zero
    public var fontSize: CGFloat = 17
    public var titleColor: UIColor = WXActionSheet.Preferences.ButtonTitleColor
    
    public var type: ItemType = .default
    public var handler: WXActionSheetHandler? = nil
    
    public convenience init(title: String) {
        self.init(title: title, handler: nil, type: .default)
    }
    
    public convenience init(title: String, handler: @escaping WXActionSheetHandler) {
        self.init(title: title, handler: handler, type: .default)
    }
    
    public init(title: String, handler: WXActionSheetHandler?, type: ItemType) {
        self.title = title
        self.handler = handler
        self.type = type
    }
    
}
