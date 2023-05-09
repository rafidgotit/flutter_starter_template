import 'dio_client.dart';
export 'package:flutter_starter_template/config/urls.dart';

class BaseClient{

  late DioClient client;

  BaseClient(){
    client = DioClient();
  }
}