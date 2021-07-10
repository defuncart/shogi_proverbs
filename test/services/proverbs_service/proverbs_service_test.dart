import 'package:flutter_test/flutter_test.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs_service.dart';

void main() {
  final proverbs = ProverbsService.proverbsWithFilter('')
      .values
      .fold<List<Proverb>>([], (previousValue, element) => [...previousValue, ...element]);
  final indeces = proverbs.map((proverb) => proverb.index).toList();

  test('Ensure that all indeces are unique', () {
    expect(
      indeces.length,
      indeces.toSet().length,
    );
  });
}
