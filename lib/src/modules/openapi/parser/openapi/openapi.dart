import 'dart:math';

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

extension StringExtension on String {
  String capitalize() {
    return isEmpty ? this : (this[0].toUpperCase() + substring(1));
  }

  String asComments() {
    if (length <= 80) return this;
    final splitted = split(RegExp('[.|:]')).first;

    return splitted.substring(0, min(80, splitted.length));
  }
}
