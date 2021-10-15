/// name : "ss"
/// imageUrl : "https"
/// count : 20

class CartModel {
  CartModel({
    String? name,
    String? imageUrl,
    int? count,
  }) {
    _name = name;
    _imageUrl = imageUrl;
    _count = count;
  }

  CartModel.fromJson(dynamic json) {
    _name = json['name'];
    _imageUrl = json['imageUrl'];
    _count = json['count'];
  }
  String? _name;
  String? _imageUrl;
  int? _count;

  String? get name => _name;
  String? get imageUrl => _imageUrl;
  int? get count => _count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['imageUrl'] = _imageUrl;
    map['count'] = _count;
    return map;
  }
}
