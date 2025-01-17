import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl({required this.connectionChecker});
  final InternetConnectionChecker connectionChecker;
  @override
  Future<bool> get isConnected async => await connectionChecker.hasConnection;
}
