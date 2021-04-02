import 'dart:convert';

class JWTUtil {
  final String token;
  _Header? _header;
  _Payload? _payload;

  JWTUtil(this.token) {
    List<String> splittedToken = token.split(".");
    _header = _Header(_decodeHeader(splittedToken[0]));
    _payload = _Payload(_decodePayload(splittedToken[1]));
  }

  String _decodeHeader(String headerData) {
    return String.fromCharCodes(Base64Decoder().convert(headerData));
  }

  String _decodePayload(String payloadData) {
    String output = payloadData.replaceAll('-', '+').replaceAll('_', '/');
    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += '==';
        break;
      case 3:
        output += '=';
        break;
      default:
        throw Exception('Illegal base64url string!"');
    }
    return String.fromCharCodes(Base64Decoder().convert(output));
  }

  bool isTokenExpired() {
    if(_payload == null){
      return true;
    }
    return _payload!.isTokenExpired();
  }

  bool isTokenValid() {
    if(_header == null || _payload == null){
      return false;
    }
    return _header!.isHeaderValid() && _payload!.isPayloadValid();
  }

  void getUserAuthority() {}
}

class _Header {
  String? _alg;

  _Header(String headerData) {
    var jsonData = jsonDecode(headerData);
    if (jsonData is Map) {
      _alg = jsonData['alg'];
    }
  }

  bool isHeaderValid() {
    return _alg != null;
  }
}

class _Payload {
  String? _sub;
  String? _auth;
  int? _expire;

  _Payload(String payloadData) {
    var jsonData = jsonDecode(payloadData);
    if (jsonData is Map) {
      _sub = jsonData['sub'];
      _auth = jsonData['auth'];
      _expire = jsonData['exp'];
    }
  }

  bool isPayloadValid() {
    return _sub != null && _auth != null && _expire != null;
  }

  bool isTokenExpired() {
    if (_expire == null) {
      return true;
    }
    DateTime expireTime = DateTime.fromMillisecondsSinceEpoch(_expire! * 1000);
    return expireTime.isBefore(DateTime.now());
  }
}
