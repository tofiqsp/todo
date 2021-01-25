///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'todo.pb.dart' as $0;
export 'todo.pb.dart';

class TodoServiceClient extends $grpc.Client {
  static final _$getTodos = $grpc.ClientMethod<$0.TodoRequest, $0.TodoResponse>(
      '/TodoService/getTodos',
      ($0.TodoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TodoResponse.fromBuffer(value));

  TodoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.TodoResponse> getTodos($0.TodoRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getTodos, request, options: options);
  }
}

abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TodoRequest, $0.TodoResponse>(
        'getTodos',
        getTodos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoRequest.fromBuffer(value),
        ($0.TodoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.TodoResponse> getTodos_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TodoRequest> request) async {
    return getTodos(call, await request);
  }

  $async.Future<$0.TodoResponse> getTodos(
      $grpc.ServiceCall call, $0.TodoRequest request);
}
