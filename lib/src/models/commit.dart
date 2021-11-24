/// {@template commit}
/// A representation of a parsed conventional commit message.
/// {@endtemplate}
class Commit extends Comparable<Commit> {
  Commit._(this.hash, this.type, this.description);

  /// {@macro commit}
  factory Commit.fromString(String line) {
    if (!regex.hasMatch(line)) {
      throw InvalidCommit(line);
    }

    final matches = regex.firstMatch(line)!;

    return Commit._(
      matches.namedGroup('hash')!.trim(),
      matches.namedGroup('type')!.trim(),
      matches.namedGroup('description')!.trim(),
    );
  }

  /// Regex to parse conventional commit.
  static RegExp regex = RegExp('^(?<hash>.+);(?<type>.+):(?<description>.+);');

  /// The hash of the commit.
  final String hash;

  /// The type of the commit.
  final String type;

  /// The description of the commit.
  final String description;

  @override
  int compareTo(Commit other) => type.compareTo(other.type);

  @override
  String toString() => '$type: $description';
}

/// {@template invalid_commit}
/// Throw when a commit message is invalid.
/// {@endtemplate}
class InvalidCommit implements Exception {
  /// {@macro invalid_commit}
  InvalidCommit(this.value);

  /// The string representation of invalid commit.
  final String value;

  @override
  String toString() => 'Failed to parse comit: $value';
}
