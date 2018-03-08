//
//  TestComponent.swift
//  MercadoPagoSDKExamplesObjectiveC
//
//  Created by Demian Tejo on 19/12/17.
//  Copyright © 2017 MercadoPago. All rights reserved.
//

import UIKit
import MercadoPagoSDK

@objc public class TestComponent: NSObject, PXCustomComponentizable {

    static public func getPaymentResultPreference() -> PaymentResultScreenPreference {
        let top = TestComponent()
        let bottom = TestComponent()
        let preference = PaymentResultScreenPreference()
        preference.disableApprovedReceipt()
        preference.setApprovedHeaderIcon(stringURL: "https://i.pinimg.com/736x/16/6a/54/166a54b720bf9763dbce64e4cb52fa17--phoenix-band-nail-fashion.jpg")
        preference.setPendingHeaderIcon(stringURL: "https://i.pinimg.com/736x/16/6a/54/166a54b720bf9763dbce64e4cb52fa17--phoenix-band-nail-fashion.jpg")
       // preference.setApprovedTopCustomComponent(top)
        //        preference.setApprovedBottomCustomComponent(bottom)
        return preference
    }
    
    static public func getReviewScreenPreference() -> ReviewScreenPreference {
        let top = TestComponent()
        let bottom = TestComponent()
        let preference = ReviewScreenPreference()
        preference.setPaymentMethodTopCustomComponent(top)
        preference.setPaymentMethodBottomCustomComponent(bottom)
//        preference.disableItems()
//        preference.disableChangeMethodOption()
        return preference
    }
    
    public func render(store: PXCheckoutStore) -> UIView? {
        let frame = CGRect(x: 0, y: 0, width: 500, height: 100)
        let view = UIView(frame: frame)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        let label = UILabel(frame: frame)
        label.text = "Custom Component"
        label.font = label.font.withSize(20)
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        label.textColor = .black
        view.addSubview(label)
        return view
    }
}
