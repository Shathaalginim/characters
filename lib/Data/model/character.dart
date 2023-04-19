class Character {
  late int charId;
  late String name;
  late String statusIfDeadOrAlive;
  late String gender;
  late String image;
  late String classify;

  Character.fromJson(Map<String, dynamic> json) {
    charId = json["id"];
    name = json["name"];
    gender = json["gender"];
    image = json["image"];
    statusIfDeadOrAlive = json["status"];
    classify = json["species"];
  }
}
