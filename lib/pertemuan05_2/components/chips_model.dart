class ChipsModel {
  List<Data>? data;

  ChipsModel({this.data});

  ChipsModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? title;
  int? value;
  bool? status;

  Data({this.title, this.value, this.status});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    value = json['value'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['value'] = this.value;
    data['status'] = this.status;
    return data;
  }
}
