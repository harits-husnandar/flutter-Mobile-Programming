import 'dart:convert';

List<AdBanner> adBannerListFromJson(String val) => List<AdBanner>.from(
    jsonDecode(val)['data'].map((banner) => AdBanner.fromJson(banner)));

class AdBanner {
  final int id;
  final String images;

  AdBanner({required this.id, required this.images});

  factory AdBanner.fromJson(Map<String, dynamic> data) => AdBanner(
      id: data['id'],
      images: data['attributes']['images']['data']['attributes']['url']);
}
