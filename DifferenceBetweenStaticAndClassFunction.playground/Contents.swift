import UIKit



class A {
    
    class func classFunction() {
        
    }
    
    static func staticFunction() {
        
    }
    
}

class B: A {
    
    override class func classFunction() {
        super.classFunction()
    }
    
    override static func staticFunction() {
        
    }
    
}



