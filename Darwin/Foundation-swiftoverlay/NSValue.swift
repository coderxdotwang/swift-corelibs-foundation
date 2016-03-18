//===--- NSValue.swift - Bridging things in NSValue -----------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

extension NSRange : _ObjectiveCBridgeable {
  public static func _isBridgedToObjectiveC() -> Bool {
    return true
  }
  
  public func _bridgeToObjectiveC() -> NSValue {
    return NSValue(range: self)
  }

  public static func _forceBridgeFromObjectiveC(
    x: NSValue,
    result: inout NSRange?
  ) {
    result = x.rangeValue
  }
  
  public static func _conditionallyBridgeFromObjectiveC(
    x: NSValue,
    result: inout NSRange?
  ) -> Bool {
    self._forceBridgeFromObjectiveC(x, result: &result)
    return true
  }
}
