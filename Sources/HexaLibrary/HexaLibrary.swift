// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import UIKit

final public class HexaLibrary {
    
    public init() {}
    
    public func companyName() -> String {
        return "Hexabrain Technologies Private Limited"
    }
    
    public func companyLogo() -> UIImage? {
        if let resource = Bundle.main.url(forResource: "HexaLogo", withExtension: "png") {
            return UIImage(contentsOfFile: resource.path)
        }
        
        return nil
    }
}
