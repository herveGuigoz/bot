import 'package:bot/src/bot.dart';
import 'package:test/test.dart';

void main() {
  group('Bot', () {
    test('can be instantiated', () {
      expect(Bot(), isNotNull);
    });
  });
}
