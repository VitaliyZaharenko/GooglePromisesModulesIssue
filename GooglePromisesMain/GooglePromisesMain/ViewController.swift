
import UIKit
import PromiseModule

class ViewController: UIViewController {
    
    let provider = MainModuleProvider()
    let moduleProvider = ModuleProvider()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        provider.getObjectAsClass().then { objectAsClass in
            print(objectAsClass)
        }
        
        provider.getObjectAsStuct().then { objectAsStruct in
            print(objectAsStruct)
        }
        
        moduleProvider.getObjectAsClass().then { obj in
            print(obj)
        }
        
        moduleProvider.getObjectAsStruct().then { obj in
            print(obj)
        }
        
        let consumer = ModuleProviderConsumer(provider: moduleProvider)
        consumer.consume()
    }
}

