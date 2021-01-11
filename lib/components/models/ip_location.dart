import 'dart:convert';

import 'package:http/http.dart';

class IPLocation {
  String query;
  String status;
  String country;
  String countryCode;
  String region;
  String regionName;
  String city;
  String zip;
  double lat;
  double lon;
  String timezone;
  String isp;
  String org;
  String as;

  IPLocation(
      {this.query,
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
        this.as});

  IPLocation.fromJson(Map<String, dynamic> json) {
    query = json['query'];
    status = json['status'];
    country = json['country'];
    countryCode = json['countryCode'];
    region = json['region'];
    regionName = json['regionName'];
    city = json['city'];
    zip = json['zip'];
    lat = json['lat'];
    lon = json['lon'];
    timezone = json['timezone'];
    isp = json['isp'];
    org = json['org'];
    as = json['as'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['query'] = this.query;
    data['status'] = this.status;
    data['country'] = this.country;
    data['countryCode'] = this.countryCode;
    data['region'] = this.region;
    data['regionName'] = this.regionName;
    data['city'] = this.city;
    data['zip'] = this.zip;
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['timezone'] = this.timezone;
    data['isp'] = this.isp;
    data['org'] = this.org;
    data['as'] = this.as;
    return data;
  }
  static Future<IPLocation> getLocation() async {
    Response _response = await get("http://ip-api.com/json/?61439");
    if (_response.statusCode == 200) {
      final body = jsonDecode(_response.body);
      IPLocation ipLocation = IPLocation.fromJson(body);
      return ipLocation;
    } else {
      throw Exception(
          "Failed to load IP info. StatusCode: ${_response.statusCode}");
    }
  }
}
