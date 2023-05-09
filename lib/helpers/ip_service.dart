import 'package:flutter_starter_template/api/dio_client.dart';

abstract class IpService {
  static Future<IpAddress?> getIp() async {
    var dioClient = DioClient();
    var response = await dioClient.dio?.get(
      Uri.parse('http://ip-api.com/json').toString(),
    );
    var data = response?.data;
    return IpAddress.fromJson(data);
  }
}

class IpAddress{
  String? status;
  String? country;
  String? countryCode;
  String? region;
  String? regionName;
  String? city;
  String? zip;
  double? lat;
  double? lon;
  String? timezone;
  String? isp;
  String? org;
  String? as;
  String? query;

  IpAddress({
    this.status,
    this.country,
    this.countryCode,
    this.region,
    this.regionName,
    this.city,
    this.zip,
    this.lat,
    this.lon,
    this.timezone,
    this.isp,
    this.org,
    this.as,
    this.query,
  });

  factory IpAddress.fromJson(Map<String, dynamic> json) => IpAddress(
    status: json["status"],
    country: json["country"],
    countryCode: json["countryCode"],
    region: json["region"],
    regionName: json["regionName"],
    city: json["city"],
    zip: json["zip"],
    lat: json["lat"],
    lon: json["lon"],
    timezone: json["timezone"],
    isp: json["isp"],
    org: json["org"],
    as: json["as"],
    query: json["query"],
  );
}