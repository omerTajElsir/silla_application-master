
class CarByMakeAndMode {
  String selectedModel;
  String selectedMake;

  CarByMakeAndMode({this.selectedModel, this.selectedMake});
}
class BodyType{
  int id;
  String title;

  BodyType(this.id, this.title);
}
class Any{
  int id;
  String any;

  Any(this.id, this.any);


}
class NumbersRange {
  int from;
  int to;

  NumbersRange(this.from, this.to);


}


class FilterQuery {
  String field;
  String op;
  dynamic val;

  FilterQuery({this.field, this.op, this.val});

  FilterQuery.fromJson(Map<String, dynamic> json) {
    field = json['field'];
    op = json['op'];
    val = json['val'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['field'] = this.field;
    data['op'] = this.op;
    data['val'] = this.val;
    return data;
  }




}


class ComplexQuery {
  String field;
  String op;
  List<dynamic> val;

  ComplexQuery({this.field, this.op, this.val});

  ComplexQuery.fromJson(Map<String, dynamic> json) {
    field = json['field'];
    op = json['op'];
    val = json['val'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['field'] = this.field;
    data['op'] = this.op;
    data['val'] = this.val;
    return data;
  }
}

//CarRegistration
class CarRegistration {
  String from ;
  String to;
  CarRegistration(this.from, this.to);
}
//property
class PropertyImage {
  String image;

  PropertyImage({this.image});

  PropertyImage.fromJson(Map<String, dynamic> json) {
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    return data;
  }
}