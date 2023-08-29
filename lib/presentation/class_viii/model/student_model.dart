class StudentModel {
  String message;
  List<Datum> data;

  StudentModel({
    required this.message,
    required this.data,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  int id;
  String name;
  int marks;

  Datum({
    required this.id,
    required this.name,
    required this.marks,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
    marks: json["marks"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "marks": marks,
  };
}
