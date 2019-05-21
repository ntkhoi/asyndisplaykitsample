//
//  LanguageNodeCell.swift
//  AsynkitSample
//
//  Created by Khoi on 5/21/19.
//  Copyright © 2019 Khoi. All rights reserved.
//

import Foundation
import AsyncDisplayKit


class LanguageNodeCell: ASTextCellNode {
    var language: String = "" {
        didSet {
            text = language
         
        }
    }
    override init() {
        super.init()
        borderColor = UIColor.black.cgColor
        borderWidth = 1
        cornerRadius = 4
    }
    
    override init(attributes textAttributes: [AnyHashable : Any] = [:], insets textInsets: UIEdgeInsets) {
        super.init(attributes: textAttributes, insets: textInsets)
    }
    
}
