//
//  PXThemeObjects.swift
//  MercadoPagoSDK
//
//  Created by Juan sebastian Sanzone on 11/1/18.
//  Copyright © 2018 MercadoPago. All rights reserved.
//

import UIKit

/** :nodoc: */
@objcMembers
open class PXNavigationHeaderLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        if self.font != nil {
            self.font = Utils.getFont(size: self.font!.pointSize)
        }
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        if self.font != nil {
            self.font = Utils.getFont(size: self.font!.pointSize)
        }
    }
}

/** :nodoc: */
open class PXToolbar: UIToolbar {}
