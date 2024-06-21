// CollectionProcess.dart

class CollectionProcess {
  final int? id; // id属性，可为空
  final String name; // name属性，必填

  CollectionProcess({
    this.id,
    required this.name,
  });

  // 从JSON构造
  factory CollectionProcess.fromJson(Map<String, dynamic> json) {
    return CollectionProcess(
      id: json['id'],
      name: json['name'],
    );
  }

  // 转换为JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
