import 'package:freezed_annotation/freezed_annotation.dart';

part 'openapi.freezed.dart';
part 'codecs.dart';
part 'models.dart';

extension OpenAPIExtension on OpenAPI {
  /// Parse the OpenAPI document to retrive the API ressources as List<String>
  List<String> get ressourcesPaths {
    final ressources = <String>[];

    for (final path in paths.keys) {
      if (path.contains('/{id}') ||
          ressources.contains('/${path.split('/')[1]}')) {
        continue;
      }
      ressources.add(path);
    }

    return ressources;
  }
}

extension PathItemExtension on PathItem {
  Operation? get firstOperation {
    final operations = [get, put, post, delete, options, head, patch];
    return operations.firstWhere((operation) => operation != null);
  }
}

extension SchemaObjectExtension on SchemaObject {
  String get asDartType {
    if (type == 'array' && items != null) {
      return items!.map(
        (value) => 'List<${value.type?.asDartType()}>',
        ref: (value) => 'List<${value.ref.split('/').last}>',
      );
    }

    if (type == 'string') {
      return format == 'date' || format == 'date-time' ? 'DateTime' : 'String';
    }

    return type?.asDartType() ?? 'dynamic';
  }
}

extension StringExtension on String {
  String asDartType() {
    switch (this) {
      case 'integer':
        return 'int';
      case 'number':
        return 'double';
      case 'boolean':
        return 'bool';
      case 'string':
        return 'String';
      default:
        return this;
    }
  }
}
