import 'dart:async';

import 'package:bot/src/models/models.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main() {
  group('Model: Version', () {
    group('Version.fromString', () {
      test('Can interpolate version without build number', () {
        final version = Version.fromString('1.2.3');
        expect(version, isA<Version>());
        expect(version.major, equals(1));
        expect(version.minor, equals(2));
        expect(version.patch, equals(3));
        expect(version.build, isNull);
      });

      test('Can interpolate version with build number', () {
        final version = Version.fromString('1.2.3+21');
        expect(version, isA<Version>());
        expect(version.major, equals(1));
        expect(version.minor, equals(2));
        expect(version.patch, equals(3));
        expect(version.build, equals(21));
      });

      test('Thow InvalidVersionFormat exception when malformed', () {
        Object? error;
        runZonedGuarded(
          () => Version.fromString('123+21'),
          (e, _) => error = e,
        );
        expect(error, isA<InvalidVersionFormat>());
      });
    });

    group('increment', () {
      test('Could increment version without build number', () {
        final version = Version.fromString('1.2.3').increment();
        expect(version.major, equals(1));
        expect(version.minor, equals(2));
        expect(version.patch, equals(4));
        expect(version.build, isNull);
      });

      test('Can increment version with build number', () {
        final version = Version.fromString('1.2.3+21').increment();
        expect(version.major, equals(1));
        expect(version.minor, equals(2));
        expect(version.patch, equals(4));
        expect(version.build, equals(22));
      });
    });

    group('tag', () {
      test('Return tag without build number', () {
        final version = Version.fromString('1.2.3');
        expect(version.tag, equals('v1.2.3'));
      });

      test('Return tag with build number', () {
        final version = Version.fromString('1.2.3+21');
        expect(version.tag, equals('v1.2.3+21'));
      });
    });
  });
}
