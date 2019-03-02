//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: ssigmaapi/pashiriwebsocket/v1/pashiriwebsocket.proto
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

public protocol Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1GetTradesCall: ClientCallServerStreaming {
  /// Do not call this directly, call `receive()` in the protocol extension below instead.
  func _receive(timeout: DispatchTime) throws -> Ssigmaapi_Type_Trades?
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (ResultOrRPCError<Ssigmaapi_Type_Trades?>) -> Void) throws
}

public extension Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1GetTradesCall {
  /// Call this to wait for a result. Blocking.
  func receive(timeout: DispatchTime = .distantFuture) throws -> Ssigmaapi_Type_Trades? { return try self._receive(timeout: timeout) }
}

fileprivate final class Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1GetTradesCallBase: ClientCallServerStreamingBase<Ssigmaapi_Type_Market, Ssigmaapi_Type_Trades>, Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1GetTradesCall {
  override class var method: String { return "/ssigmaapi.pashiriwebsocket.v1.PashiriWebsocketServiceV1/GetTrades" }
}


/// Instantiate Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1ServiceClient, then call methods of this protocol to make API calls.
public protocol Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1Service: ServiceClient {
  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  func getTrades(_ request: Ssigmaapi_Type_Market, completion: ((CallResult) -> Void)?) throws -> Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1GetTradesCall

}

public final class Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1ServiceClient: ServiceClientBase, Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1Service {
  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  public func getTrades(_ request: Ssigmaapi_Type_Market, completion: ((CallResult) -> Void)?) throws -> Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1GetTradesCall {
    return try Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1GetTradesCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

}

/// To build a server, implement a class that conforms to this protocol.
/// If one of the methods returning `ServerStatus?` returns nil,
/// it is expected that you have already returned a status to the client by means of `session.close`.
public protocol Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1Provider: ServiceProvider {
  func getTrades(request: Ssigmaapi_Type_Market, session: Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1GetTradesSession) throws -> ServerStatus?
}

extension Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1Provider {
  public var serviceName: String { return "ssigmaapi.pashiriwebsocket.v1.PashiriWebsocketServiceV1" }

  /// Determines and calls the appropriate request handler, depending on the request's method.
  /// Throws `HandleMethodError.unknownMethod` for methods not handled by this service.
  public func handleMethod(_ method: String, handler: Handler) throws -> ServerStatus? {
    switch method {
    case "/ssigmaapi.pashiriwebsocket.v1.PashiriWebsocketServiceV1/GetTrades":
      return try Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1GetTradesSessionBase(
        handler: handler,
        providerBlock: { try self.getTrades(request: $0, session: $1 as! Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1GetTradesSessionBase) })
          .run()
    default:
      throw HandleMethodError.unknownMethod
    }
  }
}

public protocol Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1GetTradesSession: ServerSessionServerStreaming {
  /// Send a message to the stream. Nonblocking.
  func send(_ message: Ssigmaapi_Type_Trades, completion: @escaping (Error?) -> Void) throws
  /// Do not call this directly, call `send()` in the protocol extension below instead.
  func _send(_ message: Ssigmaapi_Type_Trades, timeout: DispatchTime) throws

  /// Close the connection and send the status. Non-blocking.
  /// This method should be called if and only if your request handler returns a nil value instead of a server status;
  /// otherwise SwiftGRPC will take care of sending the status for you.
  func close(withStatus status: ServerStatus, completion: (() -> Void)?) throws
}

public extension Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1GetTradesSession {
  /// Send a message to the stream and wait for the send operation to finish. Blocking.
  func send(_ message: Ssigmaapi_Type_Trades, timeout: DispatchTime = .distantFuture) throws { try self._send(message, timeout: timeout) }
}

fileprivate final class Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1GetTradesSessionBase: ServerSessionServerStreamingBase<Ssigmaapi_Type_Market, Ssigmaapi_Type_Trades>, Ssigmaapi_Pashiriwebsocket_V1_PashiriWebsocketServiceV1GetTradesSession {}

