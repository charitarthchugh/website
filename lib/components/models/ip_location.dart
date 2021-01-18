import 'dart:convert';

import 'package:http/http.dart';

class IPLocation {
  String ip;
  String continentCode;
  String continentName;
  String countryCode2;
  String countryCode3;
  String countryName;
  String countryCapital;
  String stateProv;
  String district;
  String city;
  String zipcode;
  String latitude;
  String longitude;
  bool isEu;
  String callingCode;
  String countryTld;
  String languages;
  String countryFlag;
  String geonameId;
  String isp;
  String connectionType;
  String organization;
  Currency currency;
  TimeZone timeZone;

  IPLocation(
      {this.ip,
      this.continentCode,
      this.continentName,
      this.countryCode2,
      this.countryCode3,
      this.countryName,
      this.countryCapital,
      this.stateProv,
      this.district,
      this.city,
      this.zipcode,
      this.latitude,
      this.longitude,
      this.isEu,
      this.callingCode,
      this.countryTld,
      this.languages,
      this.countryFlag,
      this.geonameId,
      this.isp,
      this.connectionType,
      this.organization,
      this.currency,
      this.timeZone});

  IPLocation.fromJson(Map<String, dynamic> json) {
    ip = json['ip'];
    continentCode = json['continent_code'];
    continentName = json['continent_name'];
    countryCode2 = json['country_code2'];
    countryCode3 = json['country_code3'];
    countryName = json['country_name'];
    countryCapital = json['country_capital'];
    stateProv = json['state_prov'];
    district = json['district'];
    city = json['city'];
    zipcode = json['zipcode'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    isEu = json['is_eu'];
    callingCode = json['calling_code'];
    countryTld = json['country_tld'];
    languages = json['languages'];
    countryFlag = json['country_flag'];
    geonameId = json['geoname_id'];
    isp = json['isp'];
    connectionType = json['connection_type'];
    organization = json['organization'];
    currency = json['currency'] != null
        ? new Currency.fromJson(json['currency'])
        : null;
    timeZone = json['time_zone'] != null
        ? new TimeZone.fromJson(json['time_zone'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ip'] = this.ip;
    data['continent_code'] = this.continentCode;
    data['continent_name'] = this.continentName;
    data['country_code2'] = this.countryCode2;
    data['country_code3'] = this.countryCode3;
    data['country_name'] = this.countryName;
    data['country_capital'] = this.countryCapital;
    data['state_prov'] = this.stateProv;
    data['district'] = this.district;
    data['city'] = this.city;
    data['zipcode'] = this.zipcode;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['is_eu'] = this.isEu;
    data['calling_code'] = this.callingCode;
    data['country_tld'] = this.countryTld;
    data['languages'] = this.languages;
    data['country_flag'] = this.countryFlag;
    data['geoname_id'] = this.geonameId;
    data['isp'] = this.isp;
    data['connection_type'] = this.connectionType;
    data['organization'] = this.organization;
    if (this.currency != null) {
      data['currency'] = this.currency.toJson();
    }
    if (this.timeZone != null) {
      data['time_zone'] = this.timeZone.toJson();
    }
    return data;
  }
}

class Currency {
  String code;
  String name;
  String symbol;

  Currency({this.code, this.name, this.symbol});

  Currency.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    return data;
  }
}

class TimeZone {
  String name;
  int offset;
  String currentTime;
  double currentTimeUnix;
  bool isDst;
  int dstSavings;

  TimeZone(
      {this.name,
      this.offset,
      this.currentTime,
      this.currentTimeUnix,
      this.isDst,
      this.dstSavings});

  TimeZone.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    offset = json['offset'];
    currentTime = json['current_time'];
    currentTimeUnix = json['current_time_unix'];
    isDst = json['is_dst'];
    dstSavings = json['dst_savings'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['offset'] = this.offset;
    data['current_time'] = this.currentTime;
    data['current_time_unix'] = this.currentTimeUnix;
    data['is_dst'] = this.isDst;
    data['dst_savings'] = this.dstSavings;
    return data;
  }

  static Future<IPLocation> getLocation() async {
    Response _response = await get(
        "https://api.ipgeolocation.io/ipgeo?apiKey=3c420380d7b04ef8a47ac604a7ce8cbc");
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
