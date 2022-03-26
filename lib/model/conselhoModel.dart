class ConselhoModel {
  int? id;
  String? advice;

  ConselhoModel({this.id, this.advice});

  ConselhoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    advice = json['advice'];
  }
}
