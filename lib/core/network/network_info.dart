import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:pakuanlinkapp/main.dart';

abstract class NetworkInfoI {
  Future<bool> isConnected();

  Future<List<ConnectivityResult>> get connectivityResult;

  Stream<List<ConnectivityResult>> get onConnetivityChanged;
}

class NetworkInfo implements NetworkInfoI {
  Connetivity connetivity;

  static final NetworkInfo _networkInfo = NetworkInfo._internal(Connectivity());

  factory NetworkInfo() {
    return _networkInfo;
  }

  NetworkInfo._internal(this.connectivity) {
    connectivity = this.connectivity;
  }
  
  //
  //
  //
  @override
  Future<bool> isConnected() async {
    final result = await connectivityResult;
    return !result.contains(connectivityResult.none);
  }

  //
  @override
  Future<List<ConnectivityResult>> get connectivityResult async {
    return connectivity.checkConnectivity();
  }

  @override
  Future<List<connectivityResult>> get onConnectivityChanged =>
      connectivity.onConnectivityChanged;
}

absract class Failure {}

//
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class NetworkFailure extends Failure {}

class ServerException implements Exception {}

class CacheException implements Exception {}

class NetworkException implements Exception {}

//
class NoInternetException implements Exception {
  late String _message;

  NoInternetException([String message = 'NoInternetExceptin Occurred']) {
    if (globalMesenggerKey.curentSate != null) {
      globalMessengerKey.cureentState!
          .showSnackBar(SnackBar(content: Text(message)));
    }
    this._message = message;
  }

  @override
  String toString(){
    return _message;
  }
}
