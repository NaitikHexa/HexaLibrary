// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import UIKit

final public class HexaLibrary {
    
    public init() {}
    
    public func companyName() -> String {
        return "Hexabrain Technologies"
    }
    
    public func companyLogo() -> UIImage? {
        if let resource = Bundle.module.url(forResource: "logo2", withExtension: "png") {
            return UIImage(contentsOfFile: resource.path)
        }
        
        return nil
    }
}
