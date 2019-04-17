//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: ssigmaapi/flnd/v1/flnd.proto
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

public protocol Ssigmaapi_Flnd_V1_VitessServiceV1GetMessageCall: ClientCallUnary {}

fileprivate final class Ssigmaapi_Flnd_V1_VitessServiceV1GetMessageCallBase: ClientCallUnaryBase<SwiftProtobuf.Google_Protobuf_Empty, Ssigmaapi_Flnd_V1_VitessMessage>, Ssigmaapi_Flnd_V1_VitessServiceV1GetMessageCall {
  override class var method: String { return "/ssigmaapi.flnd.v1.VitessServiceV1/GetMessage" }
}

public protocol Ssigmaapi_Flnd_V1_VitessServiceV1CreateMessageCall: ClientCallUnary {}

fileprivate final class Ssigmaapi_Flnd_V1_VitessServiceV1CreateMessageCallBase: ClientCallUnaryBase<Ssigmaapi_Flnd_V1_VitessMessage, SwiftProtobuf.Google_Protobuf_Empty>, Ssigmaapi_Flnd_V1_VitessServiceV1CreateMessageCall {
  override class var method: String { return "/ssigmaapi.flnd.v1.VitessServiceV1/CreateMessage" }
}

public protocol Ssigmaapi_Flnd_V1_VitessServiceV1UpdateMessageCall: ClientCallUnary {}

fileprivate final class Ssigmaapi_Flnd_V1_VitessServiceV1UpdateMessageCallBase: ClientCallUnaryBase<Ssigmaapi_Flnd_V1_VitessMessage, SwiftProtobuf.Google_Protobuf_Empty>, Ssigmaapi_Flnd_V1_VitessServiceV1UpdateMessageCall {
  override class var method: String { return "/ssigmaapi.flnd.v1.VitessServiceV1/UpdateMessage" }
}

public protocol Ssigmaapi_Flnd_V1_VitessServiceV1DeleteMessageCall: ClientCallUnary {}

fileprivate final class Ssigmaapi_Flnd_V1_VitessServiceV1DeleteMessageCallBase: ClientCallUnaryBase<Ssigmaapi_Flnd_V1_VitessMessage, SwiftProtobuf.Google_Protobuf_Empty>, Ssigmaapi_Flnd_V1_VitessServiceV1DeleteMessageCall {
  override class var method: String { return "/ssigmaapi.flnd.v1.VitessServiceV1/DeleteMessage" }
}


/// Instantiate Ssigmaapi_Flnd_V1_VitessServiceV1ServiceClient, then call methods of this protocol to make API calls.
public protocol Ssigmaapi_Flnd_V1_VitessServiceV1Service: ServiceClient {
  /// Synchronous. Unary.
  func getMessage(_ request: SwiftProtobuf.Google_Protobuf_Empty) throws -> Ssigmaapi_Flnd_V1_VitessMessage
  /// Asynchronous. Unary.
  func getMessage(_ request: SwiftProtobuf.Google_Protobuf_Empty, completion: @escaping (Ssigmaapi_Flnd_V1_VitessMessage?, CallResult) -> Void) throws -> Ssigmaapi_Flnd_V1_VitessServiceV1GetMessageCall

  /// Synchronous. Unary.
  func createMessage(_ request: Ssigmaapi_Flnd_V1_VitessMessage) throws -> SwiftProtobuf.Google_Protobuf_Empty
  /// Asynchronous. Unary.
  func createMessage(_ request: Ssigmaapi_Flnd_V1_VitessMessage, completion: @escaping (SwiftProtobuf.Google_Protobuf_Empty?, CallResult) -> Void) throws -> Ssigmaapi_Flnd_V1_VitessServiceV1CreateMessageCall

  /// Synchronous. Unary.
  func updateMessage(_ request: Ssigmaapi_Flnd_V1_VitessMessage) throws -> SwiftProtobuf.Google_Protobuf_Empty
  /// Asynchronous. Unary.
  func updateMessage(_ request: Ssigmaapi_Flnd_V1_VitessMessage, completion: @escaping (SwiftProtobuf.Google_Protobuf_Empty?, CallResult) -> Void) throws -> Ssigmaapi_Flnd_V1_VitessServiceV1UpdateMessageCall

  /// Synchronous. Unary.
  func deleteMessage(_ request: Ssigmaapi_Flnd_V1_VitessMessage) throws -> SwiftProtobuf.Google_Protobuf_Empty
  /// Asynchronous. Unary.
  func deleteMessage(_ request: Ssigmaapi_Flnd_V1_VitessMessage, completion: @escaping (SwiftProtobuf.Google_Protobuf_Empty?, CallResult) -> Void) throws -> Ssigmaapi_Flnd_V1_VitessServiceV1DeleteMessageCall

}

public final class Ssigmaapi_Flnd_V1_VitessServiceV1ServiceClient: ServiceClientBase, Ssigmaapi_Flnd_V1_VitessServiceV1Service {
  /// Synchronous. Unary.
  public func getMessage(_ request: SwiftProtobuf.Google_Protobuf_Empty) throws -> Ssigmaapi_Flnd_V1_VitessMessage {
    return try Ssigmaapi_Flnd_V1_VitessServiceV1GetMessageCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  public func getMessage(_ request: SwiftProtobuf.Google_Protobuf_Empty, completion: @escaping (Ssigmaapi_Flnd_V1_VitessMessage?, CallResult) -> Void) throws -> Ssigmaapi_Flnd_V1_VitessServiceV1GetMessageCall {
    return try Ssigmaapi_Flnd_V1_VitessServiceV1GetMessageCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Synchronous. Unary.
  public func createMessage(_ request: Ssigmaapi_Flnd_V1_VitessMessage) throws -> SwiftProtobuf.Google_Protobuf_Empty {
    return try Ssigmaapi_Flnd_V1_VitessServiceV1CreateMessageCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  public func createMessage(_ request: Ssigmaapi_Flnd_V1_VitessMessage, completion: @escaping (SwiftProtobuf.Google_Protobuf_Empty?, CallResult) -> Void) throws -> Ssigmaapi_Flnd_V1_VitessServiceV1CreateMessageCall {
    return try Ssigmaapi_Flnd_V1_VitessServiceV1CreateMessageCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Synchronous. Unary.
  public func updateMessage(_ request: Ssigmaapi_Flnd_V1_VitessMessage) throws -> SwiftProtobuf.Google_Protobuf_Empty {
    return try Ssigmaapi_Flnd_V1_VitessServiceV1UpdateMessageCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  public func updateMessage(_ request: Ssigmaapi_Flnd_V1_VitessMessage, completion: @escaping (SwiftProtobuf.Google_Protobuf_Empty?, CallResult) -> Void) throws -> Ssigmaapi_Flnd_V1_VitessServiceV1UpdateMessageCall {
    return try Ssigmaapi_Flnd_V1_VitessServiceV1UpdateMessageCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Synchronous. Unary.
  public func deleteMessage(_ request: Ssigmaapi_Flnd_V1_VitessMessage) throws -> SwiftProtobuf.Google_Protobuf_Empty {
    return try Ssigmaapi_Flnd_V1_VitessServiceV1DeleteMessageCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  public func deleteMessage(_ request: Ssigmaapi_Flnd_V1_VitessMessage, completion: @escaping (SwiftProtobuf.Google_Protobuf_Empty?, CallResult) -> Void) throws -> Ssigmaapi_Flnd_V1_VitessServiceV1DeleteMessageCall {
    return try Ssigmaapi_Flnd_V1_VitessServiceV1DeleteMessageCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

}

/// To build a server, implement a class that conforms to this protocol.
/// If one of the methods returning `ServerStatus?` returns nil,
/// it is expected that you have already returned a status to the client by means of `session.close`.
public protocol Ssigmaapi_Flnd_V1_VitessServiceV1Provider: ServiceProvider {
  func getMessage(request: SwiftProtobuf.Google_Protobuf_Empty, session: Ssigmaapi_Flnd_V1_VitessServiceV1GetMessageSession) throws -> Ssigmaapi_Flnd_V1_VitessMessage
  func createMessage(request: Ssigmaapi_Flnd_V1_VitessMessage, session: Ssigmaapi_Flnd_V1_VitessServiceV1CreateMessageSession) throws -> SwiftProtobuf.Google_Protobuf_Empty
  func updateMessage(request: Ssigmaapi_Flnd_V1_VitessMessage, session: Ssigmaapi_Flnd_V1_VitessServiceV1UpdateMessageSession) throws -> SwiftProtobuf.Google_Protobuf_Empty
  func deleteMessage(request: Ssigmaapi_Flnd_V1_VitessMessage, session: Ssigmaapi_Flnd_V1_VitessServiceV1DeleteMessageSession) throws -> SwiftProtobuf.Google_Protobuf_Empty
}

extension Ssigmaapi_Flnd_V1_VitessServiceV1Provider {
  public var serviceName: String { return "ssigmaapi.flnd.v1.VitessServiceV1" }

  /// Determines and calls the appropriate request handler, depending on the request's method.
  /// Throws `HandleMethodError.unknownMethod` for methods not handled by this service.
  public func handleMethod(_ method: String, handler: Handler) throws -> ServerStatus? {
    switch method {
    case "/ssigmaapi.flnd.v1.VitessServiceV1/GetMessage":
      return try Ssigmaapi_Flnd_V1_VitessServiceV1GetMessageSessionBase(
        handler: handler,
        providerBlock: { try self.getMessage(request: $0, session: $1 as! Ssigmaapi_Flnd_V1_VitessServiceV1GetMessageSessionBase) })
          .run()
    case "/ssigmaapi.flnd.v1.VitessServiceV1/CreateMessage":
      return try Ssigmaapi_Flnd_V1_VitessServiceV1CreateMessageSessionBase(
        handler: handler,
        providerBlock: { try self.createMessage(request: $0, session: $1 as! Ssigmaapi_Flnd_V1_VitessServiceV1CreateMessageSessionBase) })
          .run()
    case "/ssigmaapi.flnd.v1.VitessServiceV1/UpdateMessage":
      return try Ssigmaapi_Flnd_V1_VitessServiceV1UpdateMessageSessionBase(
        handler: handler,
        providerBlock: { try self.updateMessage(request: $0, session: $1 as! Ssigmaapi_Flnd_V1_VitessServiceV1UpdateMessageSessionBase) })
          .run()
    case "/ssigmaapi.flnd.v1.VitessServiceV1/DeleteMessage":
      return try Ssigmaapi_Flnd_V1_VitessServiceV1DeleteMessageSessionBase(
        handler: handler,
        providerBlock: { try self.deleteMessage(request: $0, session: $1 as! Ssigmaapi_Flnd_V1_VitessServiceV1DeleteMessageSessionBase) })
          .run()
    default:
      throw HandleMethodError.unknownMethod
    }
  }
}

public protocol Ssigmaapi_Flnd_V1_VitessServiceV1GetMessageSession: ServerSessionUnary {}

fileprivate final class Ssigmaapi_Flnd_V1_VitessServiceV1GetMessageSessionBase: ServerSessionUnaryBase<SwiftProtobuf.Google_Protobuf_Empty, Ssigmaapi_Flnd_V1_VitessMessage>, Ssigmaapi_Flnd_V1_VitessServiceV1GetMessageSession {}

public protocol Ssigmaapi_Flnd_V1_VitessServiceV1CreateMessageSession: ServerSessionUnary {}

fileprivate final class Ssigmaapi_Flnd_V1_VitessServiceV1CreateMessageSessionBase: ServerSessionUnaryBase<Ssigmaapi_Flnd_V1_VitessMessage, SwiftProtobuf.Google_Protobuf_Empty>, Ssigmaapi_Flnd_V1_VitessServiceV1CreateMessageSession {}

public protocol Ssigmaapi_Flnd_V1_VitessServiceV1UpdateMessageSession: ServerSessionUnary {}

fileprivate final class Ssigmaapi_Flnd_V1_VitessServiceV1UpdateMessageSessionBase: ServerSessionUnaryBase<Ssigmaapi_Flnd_V1_VitessMessage, SwiftProtobuf.Google_Protobuf_Empty>, Ssigmaapi_Flnd_V1_VitessServiceV1UpdateMessageSession {}

public protocol Ssigmaapi_Flnd_V1_VitessServiceV1DeleteMessageSession: ServerSessionUnary {}

fileprivate final class Ssigmaapi_Flnd_V1_VitessServiceV1DeleteMessageSessionBase: ServerSessionUnaryBase<Ssigmaapi_Flnd_V1_VitessMessage, SwiftProtobuf.Google_Protobuf_Empty>, Ssigmaapi_Flnd_V1_VitessServiceV1DeleteMessageSession {}
