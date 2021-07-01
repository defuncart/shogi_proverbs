import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/endgame_proverbs/endgame_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/individual_pieces.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/middlegame_proverbs/middlegame_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/opening_proverbs/opening_proverbs.dart';

/// A service to handle proverbs
class ProverbsService {
  static const _proverbs = [
    ...individualPieces,
    ...openingProverbs,
    ...middlegameProverbs,
    ...endgameProverbs,
  ];

  /// Returns proverbs satisfying a filter
  static Map<ProverbType, List<Proverb>> proverbsWithFilter(String filter) {
    final proverbs = filter.isEmpty
        ? _proverbs
        : _proverbs.where((proverbs) => proverbs.title.toLowerCase().contains(filter.toLowerCase())).toList();
    return _mapSelectedProverbsToType(proverbs);
  }

  static Map<ProverbType, List<Proverb>> _mapSelectedProverbsToType(List<Proverb> proverbs) {
    final map = {
      for (final type in ProverbType.values) type: proverbs.where((proverb) => proverb.type == type).toList(),
    };
    map.removeWhere((key, value) => value.isEmpty);
    return map;
  }
}
