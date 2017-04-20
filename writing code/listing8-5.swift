import Cocoa

var errorCodeString: String?
errorCodeString = "404"

if let theError = errorCodeString { // theError a temporary constant
    print(theError)
    if let errorCodeInteger = Int(theError) { // but theError is available for seconde branch
        print("\(theError): \(errorCodeInteger)")
    }
}
