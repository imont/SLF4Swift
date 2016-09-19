//
//  StringAppendLogger.swift
//  SLF4Swift
/*
The MIT License (MIT)

Copyright (c) 2015-2016 Eric Marchand (phimage)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

import Foundation

/* Keep all log into a String. Useful to get framework log. Be careful of memory issues */
open class StringAppendLogger: SLFLogger {

    var value: NSMutableString
    
    open var stringValue: String{
        return value as String
    }
    
    public init(level: SLFLogLevel, initialValue: String = "", name: String = "append") {
        self.value = NSMutableString(string: initialValue)
        super.init(level: level, name: name)
    }
    
    override open func doLog(_ level: SLFLogLevel,_ message: LogMessageType) {
       value.append(message)
    }
}

