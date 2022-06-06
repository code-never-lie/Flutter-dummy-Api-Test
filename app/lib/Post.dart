// ignore

// ignore_for_file: file_names

import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  Post({
    required this.createdAt,
    required this.name,
    required this.avatar,
    required this.id,
  });

  DateTime createdAt;
  String name;
  String avatar;
  String id;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        createdAt: DateTime.parse(json["createdAt"]),
        name: json["name"],
        avatar: json["avatar"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt.toIso8601String(),
        "name": name,
        "avatar": avatar,
        "id": id,
      };
}
