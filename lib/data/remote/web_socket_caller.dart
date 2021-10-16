import 'dart:async';
import 'dart:convert';

import 'package:event_bus/event_bus.dart';
import 'package:rozana_api_service/data/local/preference_manager.dart';
import 'package:rozana_api_service/data/model/dto/delivery_boy_location.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:stomp_dart_client/stomp_frame.dart';

typedef JsonConvertor<T> = T Function(Map<String, dynamic>);

class WebSocketCaller {

  final String websocketServerEndpoint;

  String organizationAppKey;

  final PreferenceManager preferenceManager;

  final EventBus eventBus;

  late final StompClient stompClient;

  WebSocketCaller(this.preferenceManager, this.organizationAppKey,
      this.eventBus, this.websocketServerEndpoint) {
    initStomp();
  }

  Future<void> initStomp() async {
    String? token = await preferenceManager.getAuthToken();
    if (token == null) {
      return;
    }
    final headers = {
      'Authorization': 'Bearer $token',
      'X-App-Key': organizationAppKey,
      'Connection': 'upgrade',
      'Upgrade': 'websocket'
    };
    stompClient = StompClient(
      config: StompConfig(
        useSockJS: false,
        url: websocketServerEndpoint + "?access_token=$token",
        onConnect: onWebsocketConnect,
        beforeConnect: beforeWebsocketConnect,
        onWebSocketError: onWebsocketError,
        stompConnectHeaders: headers,
        webSocketConnectHeaders: headers,
        reconnectDelay: Duration(seconds: 5),
        heartbeatIncoming: Duration(seconds: 10),
        heartbeatOutgoing: Duration(seconds: 10),
        connectionTimeout: Duration(seconds: 60),
        onStompError: onStompError,
        onDisconnect: onDisconnect,
//          onUnhandledFrame:,
//          onUnhandledMessage:,
//          onUnhandledReceipt:,
        onWebSocketDone: onWebsocketDone,
        onDebugMessage: debugMessage,
      ),
    );
    stompClient.activate();
  }

  Future<void> beforeWebsocketConnect() async {
    print('waiting to connect...');
    await Future.delayed(Duration(milliseconds: 500));
    print('connecting...');
  }

  Future<void> onWebsocketError(dynamic error) async {
    print(error.toString());
  }

  void onStompError(StompFrame frame) {
    print('websocket error, ${frame.body}');
  }

  void onDisconnect(StompFrame frame) {
    print('websocket disconnected, ${frame.body}');
  }

  void onWebsocketDone() {
    print('websocket done');
  }

  void debugMessage(String message) {
    print('websocket message $message');
  }

  void onWebsocketConnect(StompFrame frame) {
    print('websocket connected!, ${frame.body}');
//    Timer.periodic(Duration(seconds: 10), (_) {
//      stompClient.send(
//        destination: '/app/test/endpoints',
//        body: json.encode({'a': 123}),
//      );
//    });
  }
  void subscribeTopic<T>(String topicName, JsonConvertor<T> converter, StreamController<T> controller) {
    stompClient.subscribe(
      destination: topicName,
      callback: (StompFrame frame) {
        Map<String, dynamic> valueMap = json.decode(frame.body ?? "{}");
        T obj = converter(valueMap);
        if(!controller.isClosed){
          controller.sink.add(obj);
        }
      },
    );
  }
}
