//
//  PXConfiguratorManager.swift
//  MercadoPagoSDK
//
//  Created by Juan sebastian Sanzone on 8/7/19.
//

import Foundation

/// :nodoc
@objcMembers
open class PXConfiguratorManager: NSObject {
    // MARK: Internal definitions. (Only PX)
    // PX Biometric
    internal static var biometricProtocol: PXBiometricProtocol = PXBiometricDefault()
    internal static var biometricConfig: PXBiometricConfig = PXBiometricConfig.createConfig()
    internal static func hasSecurityValidation() -> Bool {
        return biometricProtocol.isValidationRequired(config: biometricConfig)
    }

    // PX Flow Behaviour
    internal static var flowBehaviourProtocol: PXFlowBehaviourProtocol = PXFlowBehaviourDefault()

    // ESC
    internal static var escProtocol: PXESCProtocol = PXESCDefault()
    internal static var escConfig: PXESCConfig = PXESCConfig.createConfig()
    
    // 3DS
    internal static var threeDSProtocol: PXThreeDSProtocol = PXThreeDSDefault()
    internal static var threeDSConfig: PXThreeDSConfig = PXThreeDSConfig.createConfig()
    
    // ProfileID
    internal static var profileIDProtocol: PXProfileIDProtocol = PXProfileIDDefault()

    // MARK: Public
    // Set external implementation of PXBiometricProtocol
    public static func with(biometric biometricProtocol: PXBiometricProtocol) {
        self.biometricProtocol = biometricProtocol
    }

    // Set external implementation of PXFlowBehaviourProtocol
    public static func with(flowBehaviourProtocol: PXFlowBehaviourProtocol) {
        self.flowBehaviourProtocol = flowBehaviourProtocol
    }

    // Set external implementation of PXESCProtocol
    public static func with(escProtocol: PXESCProtocol) {
        self.escProtocol = escProtocol
    }
    
    // Set external implementation of PXThreeDSProtocol
    public static func with(threeDSProtocol: PXThreeDSProtocol) {
        self.threeDSProtocol = threeDSProtocol
    }
    
    // Set external implementation of PXProfileIDProtocol
    public static func with(profileIDProtocol: PXProfileIDProtocol) {
        self.profileIDProtocol = profileIDProtocol
    }
}
