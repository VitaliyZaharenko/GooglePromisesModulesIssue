
import Foundation
import Promises

public protocol ModuleProviderProtocol {
    func getObjectAsClass() -> Promise<SomeModuleClass>
    func getObjectAsStruct() -> Promise<SomeModuleStruct>
}
