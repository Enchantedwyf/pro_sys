import 'FileModel.dart';
import 'MyAttribute.dart';
import 'MyVersion.dart';

class Project {
  final int? id;
  final String name;
  final bool? checkBox;
  final DateTime? createTime;
  final DateTime? updateTime;
  final MyVersion? currentVersion;
  final List<MyVersion>? lastVersions;
  final List<MyAttribute>? attributes;
  final int? opType;
  final FileModel? opFile;
  final List<FileModel>? configFiles;
  final List<String>? pdLines;
  final List<String>? deviceCode;

  Project({
    this.id,
    required this.name,
    this.checkBox,
    this.createTime,
    this.updateTime,
    this.currentVersion,
    this.lastVersions,
    this.attributes,
    this.opType,
    this.opFile,
    this.configFiles,
    this.pdLines,
    this.deviceCode,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      id: json['id'],
      name: json['name'],
      checkBox: json['checkBox'],
      createTime: json['createTime'] != null
          ? DateTime.parse(json['createTime'])
          : null,
      updateTime: json['updateTime'] != null
          ? DateTime.parse(json['updateTime'])
          : null,
      currentVersion: json['currentVersion'] != null
          ? MyVersion.fromJson(json['currentVersion'])
          : null,
      lastVersions: json['lastVersions'] != null
          ? (json['lastVersions'] as List)
              .map((e) => MyVersion.fromJson(e))
              .toList()
          : null,
      attributes: json['attributes'] != null
          ? (json['attributes'] as List)
              .map((e) => MyAttribute.fromJson(e))
              .toList()
          : null,
      opType: json['opType'],
      opFile:
          json['opFile'] != null ? FileModel.fromJson(json['opFile']) : null,
      configFiles: json['configFiles'] != null
          ? (json['configFiles'] as List)
              .map((e) => FileModel.fromJson(e))
              .toList()
          : null,
      pdLines:
          json['pdLines'] != null ? List<String>.from(json['pdLines']) : null,
      deviceCode: json['deviceCode'] != null
          ? List<String>.from(json['deviceCode'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'checkBox': checkBox,
      'createTime': createTime?.toIso8601String(),
      'updateTime': updateTime?.toIso8601String(),
      'currentVersion': currentVersion?.toJson(),
      'lastVersions': lastVersions?.map((e) => e.toJson()).toList(),
      'attributes': attributes?.map((e) => e.toJson()).toList(),
      'opType': opType,
      'opFile': opFile?.toJson(),
      'configFiles': configFiles?.map((e) => e.toJson()).toList(),
      'pdLines': pdLines,
      'deviceCode': deviceCode,
    };
  }
}
