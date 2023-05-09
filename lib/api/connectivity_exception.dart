class ConnectivityException implements Exception {
  final String? message;
  final String? prefix;
  final String? url;

  ConnectivityException([this.message, this.prefix, this.url]);
}

class NoConnectionException extends ConnectivityException {
  NoConnectionException([String? message, String? url]) : super(message, 'No Internet Connection', url);
}

class ServerDownException extends ConnectivityException {
  ServerDownException([String? message, String? url]) : super(message, 'Server is not responding', url);
}