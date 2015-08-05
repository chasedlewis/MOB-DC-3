import Foundation

let configuration = NSURLSessionConfiguration.defaultSessionConfiguration() // A singleton. Necessary, but this is all you have to do with it.
let session = NSURLSession(configuration: configuration)

let googleString = "http://www.google.com"
let googleUrl = NSURL(string: googleString)
let googleRequest = NSURLRequest(URL: googleURL) // Specifies which website to request. Must have the two above steps.
let task = session.dataTaskWithRequest(
    googleRequest,
    completionHandler: { (data, response, error) -> Void in
        
        var error: NSError?
        let object =
        NSJSONSerialization.JSONObjectWithData(
            data,
            options: NSJSONReadingOptions.AllowFragments,
            error: &error)
        
        if let error = error {
            println(error.code)
            println(error.description)
        } else {
            
        }
}