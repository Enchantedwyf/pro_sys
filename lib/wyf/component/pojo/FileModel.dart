class FileModel {
  final String fileName;
  final String filePath;
  final int fileSize;
  final DateTime uploadTime;

  FileModel({
    required this.fileName,
    required this.filePath,
    required this.fileSize,
    required this.uploadTime,
  });

  factory FileModel.fromJson(Map<String, dynamic> json) {
    return FileModel(
      fileName: json['fileName'],
      filePath: json['filePath'],
      fileSize: json['fileSize'],
      uploadTime: DateTime.parse(json['uploadTime']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fileName': fileName,
      'filePath': filePath,
      'fileSize': fileSize,
      'uploadTime': uploadTime.toIso8601String(),
    };
  }
}
