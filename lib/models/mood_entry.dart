// To parse this JSON data, do
//
//     final moodEntry = moodEntryFromJson(jsonString);

import 'dart:convert';

List<MoodEntry> moodEntryFromJson(String str) => List<MoodEntry>.from(json.decode(str).map((x) => MoodEntry.fromJson(x)));

String moodEntryToJson(List<MoodEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MoodEntry {
    String model;
    String pk;
    Fields fields;

    MoodEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory MoodEntry.fromJson(Map<String, dynamic> json) => MoodEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    String name;
    int price;
    String description;
    int quantity;
    int user;

    Fields({
        required this.name,
        required this.price,
        required this.description,
        required this.quantity,
        required this.user,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        name: json["name"],
        price: json["price"],
        description: json["description"],
        quantity: json["quantity"],
        user: json["user"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
        "description": description,
        "quantity": quantity,
        "user": user,
    };
}
