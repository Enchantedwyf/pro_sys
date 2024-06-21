class MyVersion {
  final String versionId; //版本id
  final String versionName; //版本名称
  final DateTime createTime;//版本创建日期

  MyVersion({required this.versionId,required this.versionName,required this.createTime});

  factory MyVersion.fromJson(Map<String, dynamic> json) {
    return MyVersion(
      versionId: json['versionId'],
      versionName: json['versionName'],
      createTime: json['createTime'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'versionId': versionId,
      'versionName': versionName,
      'createTime': createTime,
    };
  }
}
