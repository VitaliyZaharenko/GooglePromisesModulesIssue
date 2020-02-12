//  Copyright © 2020 None. All rights reserved.
//

import Foundation
import Promises

public class ModuleProviderConsumer {
    
    var provider: ModuleProviderProtocol
    
    public init(provider: ModuleProviderProtocol) {
        self.provider = provider
    }
    
    
    public func consume() {
        provider.getObjectAsClass().then { objectAsClass in
            print(objectAsClass)
        }
        
        provider.getObjectAsStruct().then { objectAsStruct in
            print(objectAsStruct)
        }
    }
}
