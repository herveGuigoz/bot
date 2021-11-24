// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes

import 'package:bot/src/utils/utils.dart';
import 'package:io/io.dart';

/// {@template version}
/// A representation of package version.
/// {@endtemplate}
class Version extends Comparable<Version> {
  /// {@macro version}
  Version(this.major, this.minor, this.patch, [this.build, this.prerelease]);

  /// {@macro version}
  factory Version.fromString(String value) {
    validate(value);

    final match = _regex.firstMatch(value)!;

    return Version(
      int.parse(match.namedGroup('major')!),
      int.parse(match.namedGroup('minor')!),
      int.parse(match.namedGroup('patch')!),
      match.namedGroup('build')?.toInt(),
      match.namedGroup('prerelease'),
    );
  }

  static final _regex = RegExp(
    r'^(?<major>[0-9]+)\.(?<minor>[0-9]+)\.(?<patch>[0-9]+)(?<prerelease>-pre[0-9]*?)?(?<build>\+[0-9]+)?$',
  );

  /// Assert that the given [value] is a valid version string.
  static void validate(String value) {
    if (!_regex.hasMatch(value)) {
      throw InvalidVersionFormat(value);
    }
  }

  /// The major version number.
  final int major;

  /// The minor version number.
  final int minor;

  /// The patch version number.
  final int patch;

  /// The build version number.
  final int? build;

  /// The prerelease version number.
  final String? prerelease;

  /// Returns tag representation of this version.
  String get tag => 'v$this';

  /// Returns true if this version is a prerelease version.
  bool get isPrerelease => prerelease != null;

  /// Updates [patch] and [build] numbers of this version.
  Version increment() {
    if (build != null) {
      return isPrerelease
          ? Version(major, minor, patch, build! + 1)
          : Version(major, minor, patch + 1, build! + 1);
    } else {
      return isPrerelease
          ? Version(major, minor, patch)
          : Version(major, minor, patch + 1);
    }
  }

  @override
  String toString() {
    if (build == null) {
      return [major, minor, patch].join('.') + (prerelease ?? '');
    }

    return [
      [major, minor, patch].join('.') + (prerelease ?? ''),
      build,
    ].join('+');
  }

  @override
  int compareTo(Version other) {
    if (major != other.major) return major.compareTo(other.major);
    if (minor != other.minor) return minor.compareTo(other.minor);
    if (patch != other.patch) return patch.compareTo(other.patch);
    if (!isPrerelease && other.isPrerelease) return 1;
    if (!other.isPrerelease && isPrerelease) return -1;
    return (build ?? 0).compareTo(other.build ?? 0);
  }

  /// Returns true if this version is greater than or equal to [other].
  bool operator <(Version other) => compareTo(other) < 0;

  /// Returns true if this version is greater than [other].
  bool operator >(Version other) => compareTo(other) > 0;

  /// Returns true if this version is less than or equal to [other].
  bool operator <=(Version other) => compareTo(other) <= 0;

  /// Returns true if this version is less than [other].
  bool operator >=(Version other) => compareTo(other) >= 0;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Version &&
        other.major == major &&
        other.minor == minor &&
        other.patch == patch &&
        other.build == build &&
        other.prerelease == prerelease;
  }

  @override
  int get hashCode {
    return major.hashCode ^
        minor.hashCode ^
        patch.hashCode ^
        build.hashCode ^
        prerelease.hashCode;
  }
}

/// {@template invalid_version_format}
/// Exception thrown when version doest match format `major.minor.patch+build`.
/// {@endtemplate}
class InvalidVersionFormat implements BotException {
  /// {@macro invalid_version_format}
  InvalidVersionFormat(this.value);

  /// The invalid version string.
  final String value;

  @override
  ExitCode get exitCode => ExitCode.config;

  @override
  String get message => '$value dont match `major.minor.patch+build` pattern';
}

extension on String? {
  int? toInt() {
    if (RegExp(r'\d+').hasMatch(this ?? '')) {
      final integers = RegExp(r'\d+').firstMatch(this!)?.group(0);
      return int.tryParse(integers!);
    }
  }
}
