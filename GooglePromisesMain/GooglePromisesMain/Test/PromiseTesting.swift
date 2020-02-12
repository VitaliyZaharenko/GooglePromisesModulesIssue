

import Foundation
import Promises
import PromiseModule

protocol TestPromisesMainProjectProtocol {
    func getObjectAsClass() -> Promise<SomeMainClasss>
    func getObjectAsStuct() -> Promise<SomeMainStruct>
}



final class MainModuleProvider: TestPromisesMainProjectProtocol {
    func getObjectAsClass() -> Promise<SomeMainClasss> {
        return Promise<SomeMainClasss> { resolve, reject in
            resolve(SomeMainClasss())
        }
    }
    
    func getObjectAsStuct() -> Promise<SomeMainStruct> {
        return Promise<SomeMainStruct> { resolve, reject in
            resolve(SomeMainStruct(blabla: "blaStruct"))
        }
    }
}


final class ModuleProvider: ModuleProviderProtocol {
    func getObjectAsClass() -> Promise<SomeModuleClass> {
        return Promise { resolve, reject in
            resolve(SomeModuleClass())
        }
    }
    
    func getObjectAsStruct() -> Promise<SomeModuleStruct> {
        return Promise { resolve, reject in
            resolve(SomeModuleStruct())
        }
    }
}
