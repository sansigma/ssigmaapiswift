//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: ssigmaapi/pashirirest/v1/pashirirest.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Foundation
import Dispatch
import SwiftGRPC
import SwiftProtobuf

public protocol Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1GetOrderBookCall: ClientCallServerStreaming {
  /// Do not call this directly, call `receive()` in the protocol extension below instead.
  func _receive(timeout: DispatchTime) throws -> Ssigmaapi_Type_OrderBook?
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (ResultOrRPCError<Ssigmaapi_Type_OrderBook?>) -> Void) throws
}

public extension Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1GetOrderBookCall {
  /// Call this to wait for a result. Blocking.
  func receive(timeout: DispatchTime = .distantFuture) throws -> Ssigmaapi_Type_OrderBook? { return try self._receive(timeout: timeout) }
}

fileprivate final class Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1GetOrderBookCallBase: ClientCallServerStreamingBase<Ssigmaapi_Type_Market, Ssigmaapi_Type_OrderBook>, Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1GetOrderBookCall {
  override class var method: String { return "/ssigmaapi.pashirirest.v1.PashiriRestServiceV1/GetOrderBook" }
}


/// Instantiate Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1ServiceClient, then call methods of this protocol to make API calls.
public protocol Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1Service: ServiceClient {
  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  func getOrderBook(_ request: Ssigmaapi_Type_Market, completion: ((CallResult) -> Void)?) throws -> Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1GetOrderBookCall

}

public final class Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1ServiceClient: ServiceClientBase, Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1Service {
  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  public func getOrderBook(_ request: Ssigmaapi_Type_Market, completion: ((CallResult) -> Void)?) throws -> Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1GetOrderBookCall {
    return try Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1GetOrderBookCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

}

/// To build a server, implement a class that conforms to this protocol.
/// If one of the methods returning `ServerStatus?` returns nil,
/// it is expected that you have already returned a status to the client by means of `session.close`.
public protocol Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1Provider: ServiceProvider {
  func getOrderBook(request: Ssigmaapi_Type_Market, session: Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1GetOrderBookSession) throws -> ServerStatus?
}

extension Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1Provider {
  public var serviceName: String { return "ssigmaapi.pashirirest.v1.PashiriRestServiceV1" }

  /// Determines and calls the appropriate request handler, depending on the request's method.
  /// Throws `HandleMethodError.unknownMethod` for methods not handled by this service.
  public func handleMethod(_ method: String, handler: Handler) throws -> ServerStatus? {
    switch method {
    case "/ssigmaapi.pashirirest.v1.PashiriRestServiceV1/GetOrderBook":
      return try Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1GetOrderBookSessionBase(
        handler: handler,
        providerBlock: { try self.getOrderBook(request: $0, session: $1 as! Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1GetOrderBookSessionBase) })
          .run()
    default:
      throw HandleMethodError.unknownMethod
    }
  }
}

public protocol Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1GetOrderBookSession: ServerSessionServerStreaming {
  /// Send a message to the stream. Nonblocking.
  func send(_ message: Ssigmaapi_Type_OrderBook, completion: @escaping (Error?) -> Void) throws
  /// Do not call this directly, call `send()` in the protocol extension below instead.
  func _send(_ message: Ssigmaapi_Type_OrderBook, timeout: DispatchTime) throws

  /// Close the connection and send the status. Non-blocking.
  /// This method should be called if and only if your request handler returns a nil value instead of a server status;
  /// otherwise SwiftGRPC will take care of sending the status for you.
  func close(withStatus status: ServerStatus, completion: (() -> Void)?) throws
}

public extension Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1GetOrderBookSession {
  /// Send a message to the stream and wait for the send operation to finish. Blocking.
  func send(_ message: Ssigmaapi_Type_OrderBook, timeout: DispatchTime = .distantFuture) throws { try self._send(message, timeout: timeout) }
}

fileprivate final class Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1GetOrderBookSessionBase: ServerSessionServerStreamingBase<Ssigmaapi_Type_Market, Ssigmaapi_Type_OrderBook>, Ssigmaapi_Pashirirest_V1_PashiriRestServiceV1GetOrderBookSession {}
