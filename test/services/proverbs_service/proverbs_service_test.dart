import 'package:flutter_test/flutter_test.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs_service.dart';

void main() {
  test('Ensure that all indeces are unique', () {
    final proverbs = ProverbsService.proverbsWithFilter('')
        .values
        .fold<List<Proverb>>([], (previousValue, element) => [...previousValue, ...element]);
    final indeces = proverbs.map((proverb) => proverb.index).toList();

    expect(
      indeces.length,
      indeces.toSet().length,
    );
  });

  test('Ensure that Proverb types are correct', () {
    final proverbsMap = ProverbsService.proverbsWithFilter('');
    for (final kvp in proverbsMap.entries) {
      for (final proverb in kvp.value) {
        expect(proverb.type, kvp.key);
      }
    }
  });

  test('Ensure that filtering works', () {
    final proverbs = ProverbsService.proverbsWithFilter('king')
        .values
        .fold<List<Proverb>>([], (previousValue, element) => [...previousValue, ...element]);
    expect(proverbs.length, 10);
  });
}
