//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: ssigmaapi/markethub/v1/markethub.proto
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

public protocol Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesCall: ClientCallServerStreaming {
  /// Do not call this directly, call `receive()` in the protocol extension below instead.
  func _receive(timeout: DispatchTime) throws -> Ssigmaapi_Markethub_V1_GetTradesResponse?
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (ResultOrRPCError<Ssigmaapi_Markethub_V1_GetTradesResponse?>) -> Void) throws
}

public extension Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesCall {
  /// Call this to wait for a result. Blocking.
  func receive(timeout: DispatchTime = .distantFuture) throws -> Ssigmaapi_Markethub_V1_GetTradesResponse? { return try self._receive(timeout: timeout) }
}

fileprivate final class Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesCallBase: ClientCallServerStreamingBase<Ssigmaapi_Markethub_V1_GetTradesRequest, Ssigmaapi_Markethub_V1_GetTradesResponse>, Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesCall {
  override class var method: String { return "/ssigmaapi.markethub.v1.MarketHubServiceV1/GetTrades" }
}

public protocol Ssigmaapi_Markethub_V1_MarketHubServiceV1GetOrderBooksCall: ClientCallServerStreaming {
  /// Do not call this directly, call `receive()` in the protocol extension below instead.
  func _receive(timeout: DispatchTime) throws -> Ssigmaapi_Markethub_V1_GetOrderBooksResponse?
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (ResultOrRPCError<Ssigmaapi_Markethub_V1_GetOrderBooksResponse?>) -> Void) throws
}

public extension Ssigmaapi_Markethub_V1_MarketHubServiceV1GetOrderBooksCall {
  /// Call this to wait for a result. Blocking.
  func receive(timeout: DispatchTime = .distantFuture) throws -> Ssigmaapi_Markethub_V1_GetOrderBooksResponse? { return try self._receive(timeout: timeout) }
}

fileprivate final class Ssigmaapi_Markethub_V1_MarketHubServiceV1GetOrderBooksCallBase: ClientCallServerStreamingBase<Ssigmaapi_Markethub_V1_GetOrderBooksRequest, Ssigmaapi_Markethub_V1_GetOrderBooksResponse>, Ssigmaapi_Markethub_V1_MarketHubServiceV1GetOrderBooksCall {
  override class var method: String { return "/ssigmaapi.markethub.v1.MarketHubServiceV1/GetOrderBooks" }
}

public protocol Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesAndOrderBooksCall: ClientCallServerStreaming {
  /// Do not call this directly, call `receive()` in the protocol extension below instead.
  func _receive(timeout: DispatchTime) throws -> Ssigmaapi_Markethub_V1_GetTradesAndOrderBooksResponse?
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (ResultOrRPCError<Ssigmaapi_Markethub_V1_GetTradesAndOrderBooksResponse?>) -> Void) throws
}

public extension Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesAndOrderBooksCall {
  /// Call this to wait for a result. Blocking.
  func receive(timeout: DispatchTime = .distantFuture) throws -> Ssigmaapi_Markethub_V1_GetTradesAndOrderBooksResponse? { return try self._receive(timeout: timeout) }
}

fileprivate final class Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesAndOrderBooksCallBase: ClientCallServerStreamingBase<Ssigmaapi_Markethub_V1_GetTradesAndOrderBooksRequest, Ssigmaapi_Markethub_V1_GetTradesAndOrderBooksResponse>, Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesAndOrderBooksCall {
  override class var method: String { return "/ssigmaapi.markethub.v1.MarketHubServiceV1/GetTradesAndOrderBooks" }
}


/// Instantiate Ssigmaapi_Markethub_V1_MarketHubServiceV1ServiceClient, then call methods of this protocol to make API calls.
public protocol Ssigmaapi_Markethub_V1_MarketHubServiceV1Service: ServiceClient {
  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  func getTrades(_ request: Ssigmaapi_Markethub_V1_GetTradesRequest, completion: ((CallResult) -> Void)?) throws -> Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesCall

  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  func getOrderBooks(_ request: Ssigmaapi_Markethub_V1_GetOrderBooksRequest, completion: ((CallResult) -> Void)?) throws -> Ssigmaapi_Markethub_V1_MarketHubServiceV1GetOrderBooksCall

  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  func getTradesAndOrderBooks(_ request: Ssigmaapi_Markethub_V1_GetTradesAndOrderBooksRequest, completion: ((CallResult) -> Void)?) throws -> Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesAndOrderBooksCall

}

public final class Ssigmaapi_Markethub_V1_MarketHubServiceV1ServiceClient: ServiceClientBase, Ssigmaapi_Markethub_V1_MarketHubServiceV1Service {
  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  public func getTrades(_ request: Ssigmaapi_Markethub_V1_GetTradesRequest, completion: ((CallResult) -> Void)?) throws -> Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesCall {
    return try Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  public func getOrderBooks(_ request: Ssigmaapi_Markethub_V1_GetOrderBooksRequest, completion: ((CallResult) -> Void)?) throws -> Ssigmaapi_Markethub_V1_MarketHubServiceV1GetOrderBooksCall {
    return try Ssigmaapi_Markethub_V1_MarketHubServiceV1GetOrderBooksCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  public func getTradesAndOrderBooks(_ request: Ssigmaapi_Markethub_V1_GetTradesAndOrderBooksRequest, completion: ((CallResult) -> Void)?) throws -> Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesAndOrderBooksCall {
    return try Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesAndOrderBooksCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

}

/// To build a server, implement a class that conforms to this protocol.
/// If one of the methods returning `ServerStatus?` returns nil,
/// it is expected that you have already returned a status to the client by means of `session.close`.
public protocol Ssigmaapi_Markethub_V1_MarketHubServiceV1Provider: ServiceProvider {
  func getTrades(request: Ssigmaapi_Markethub_V1_GetTradesRequest, session: Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesSession) throws -> ServerStatus?
  func getOrderBooks(request: Ssigmaapi_Markethub_V1_GetOrderBooksRequest, session: Ssigmaapi_Markethub_V1_MarketHubServiceV1GetOrderBooksSession) throws -> ServerStatus?
  func getTradesAndOrderBooks(request: Ssigmaapi_Markethub_V1_GetTradesAndOrderBooksRequest, session: Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesAndOrderBooksSession) throws -> ServerStatus?
}

extension Ssigmaapi_Markethub_V1_MarketHubServiceV1Provider {
  public var serviceName: String { return "ssigmaapi.markethub.v1.MarketHubServiceV1" }

  /// Determines and calls the appropriate request handler, depending on the request's method.
  /// Throws `HandleMethodError.unknownMethod` for methods not handled by this service.
  public func handleMethod(_ method: String, handler: Handler) throws -> ServerStatus? {
    switch method {
    case "/ssigmaapi.markethub.v1.MarketHubServiceV1/GetTrades":
      return try Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesSessionBase(
        handler: handler,
        providerBlock: { try self.getTrades(request: $0, session: $1 as! Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesSessionBase) })
          .run()
    case "/ssigmaapi.markethub.v1.MarketHubServiceV1/GetOrderBooks":
      return try Ssigmaapi_Markethub_V1_MarketHubServiceV1GetOrderBooksSessionBase(
        handler: handler,
        providerBlock: { try self.getOrderBooks(request: $0, session: $1 as! Ssigmaapi_Markethub_V1_MarketHubServiceV1GetOrderBooksSessionBase) })
          .run()
    case "/ssigmaapi.markethub.v1.MarketHubServiceV1/GetTradesAndOrderBooks":
      return try Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesAndOrderBooksSessionBase(
        handler: handler,
        providerBlock: { try self.getTradesAndOrderBooks(request: $0, session: $1 as! Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesAndOrderBooksSessionBase) })
          .run()
    default:
      throw HandleMethodError.unknownMethod
    }
  }
}

public protocol Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesSession: ServerSessionServerStreaming {
  /// Send a message to the stream. Nonblocking.
  func send(_ message: Ssigmaapi_Markethub_V1_GetTradesResponse, completion: @escaping (Error?) -> Void) throws
  /// Do not call this directly, call `send()` in the protocol extension below instead.
  func _send(_ message: Ssigmaapi_Markethub_V1_GetTradesResponse, timeout: DispatchTime) throws

  /// Close the connection and send the status. Non-blocking.
  /// This method should be called if and only if your request handler returns a nil value instead of a server status;
  /// otherwise SwiftGRPC will take care of sending the status for you.
  func close(withStatus status: ServerStatus, completion: (() -> Void)?) throws
}

public extension Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesSession {
  /// Send a message to the stream and wait for the send operation to finish. Blocking.
  func send(_ message: Ssigmaapi_Markethub_V1_GetTradesResponse, timeout: DispatchTime = .distantFuture) throws { try self._send(message, timeout: timeout) }
}

fileprivate final class Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesSessionBase: ServerSessionServerStreamingBase<Ssigmaapi_Markethub_V1_GetTradesRequest, Ssigmaapi_Markethub_V1_GetTradesResponse>, Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesSession {}

public protocol Ssigmaapi_Markethub_V1_MarketHubServiceV1GetOrderBooksSession: ServerSessionServerStreaming {
  /// Send a message to the stream. Nonblocking.
  func send(_ message: Ssigmaapi_Markethub_V1_GetOrderBooksResponse, completion: @escaping (Error?) -> Void) throws
  /// Do not call this directly, call `send()` in the protocol extension below instead.
  func _send(_ message: Ssigmaapi_Markethub_V1_GetOrderBooksResponse, timeout: DispatchTime) throws

  /// Close the connection and send the status. Non-blocking.
  /// This method should be called if and only if your request handler returns a nil value instead of a server status;
  /// otherwise SwiftGRPC will take care of sending the status for you.
  func close(withStatus status: ServerStatus, completion: (() -> Void)?) throws
}

public extension Ssigmaapi_Markethub_V1_MarketHubServiceV1GetOrderBooksSession {
  /// Send a message to the stream and wait for the send operation to finish. Blocking.
  func send(_ message: Ssigmaapi_Markethub_V1_GetOrderBooksResponse, timeout: DispatchTime = .distantFuture) throws { try self._send(message, timeout: timeout) }
}

fileprivate final class Ssigmaapi_Markethub_V1_MarketHubServiceV1GetOrderBooksSessionBase: ServerSessionServerStreamingBase<Ssigmaapi_Markethub_V1_GetOrderBooksRequest, Ssigmaapi_Markethub_V1_GetOrderBooksResponse>, Ssigmaapi_Markethub_V1_MarketHubServiceV1GetOrderBooksSession {}

public protocol Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesAndOrderBooksSession: ServerSessionServerStreaming {
  /// Send a message to the stream. Nonblocking.
  func send(_ message: Ssigmaapi_Markethub_V1_GetTradesAndOrderBooksResponse, completion: @escaping (Error?) -> Void) throws
  /// Do not call this directly, call `send()` in the protocol extension below instead.
  func _send(_ message: Ssigmaapi_Markethub_V1_GetTradesAndOrderBooksResponse, timeout: DispatchTime) throws

  /// Close the connection and send the status. Non-blocking.
  /// This method should be called if and only if your request handler returns a nil value instead of a server status;
  /// otherwise SwiftGRPC will take care of sending the status for you.
  func close(withStatus status: ServerStatus, completion: (() -> Void)?) throws
}

public extension Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesAndOrderBooksSession {
  /// Send a message to the stream and wait for the send operation to finish. Blocking.
  func send(_ message: Ssigmaapi_Markethub_V1_GetTradesAndOrderBooksResponse, timeout: DispatchTime = .distantFuture) throws { try self._send(message, timeout: timeout) }
}

fileprivate final class Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesAndOrderBooksSessionBase: ServerSessionServerStreamingBase<Ssigmaapi_Markethub_V1_GetTradesAndOrderBooksRequest, Ssigmaapi_Markethub_V1_GetTradesAndOrderBooksResponse>, Ssigmaapi_Markethub_V1_MarketHubServiceV1GetTradesAndOrderBooksSession {}

