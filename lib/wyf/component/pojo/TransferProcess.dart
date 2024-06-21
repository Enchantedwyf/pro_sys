// TransferProcess.dart

class TransferProcess {
  final int? id; // id属性，可为空
  final String name; // name属性，必填

  TransferProcess({
    this.id,
    required this.name,
  });

  // 从JSON构造
  factory TransferProcess.fromJson(Map<String, dynamic> json) {
    return TransferProcess(
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
