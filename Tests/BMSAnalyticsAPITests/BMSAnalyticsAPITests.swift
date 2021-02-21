    import XCTest
    @testable import BMSAnalyticsAPI

    final class BMSAnalyticsAPITests: XCTestCase {
        func testLogger() {
            
            let name = "sample"
            let logger = Logger.logger(name: name)
            
            XCTAssertTrue(logger.name == Logger.loggerInstances[name]?.name)
        }
        
        
        // Cannot make any assertions since all these log methods do is print to the console
        // More thorough unit testing for the Logger class is done in the BMSAnalytics SDK
        func testLogMethods() {
            
            let name = "sample"
            let loggerInstance = Logger.logger(name: name)
            Logger.logLevelFilter = LogLevel.debug
            
            loggerInstance.debug(message: "Hello world")
            loggerInstance.info(message: "1242342342343243242342")
            loggerInstance.warn(message: "Str: heyoooooo")
            loggerInstance.error(message: "1 2 3 4")
            loggerInstance.fatal(message: "StephenColbert")
        }
    }
    
