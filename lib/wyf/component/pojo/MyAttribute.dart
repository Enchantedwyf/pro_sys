class MyAttribute {
  final String name;
  final String value;

  MyAttribute({required this.name, required this.value});
  factory MyAttribute.fromJson(Map<String, dynamic> json) {
    return MyAttribute(
      name: json['name'],
      value: json['value'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value,
    };
  }
}
