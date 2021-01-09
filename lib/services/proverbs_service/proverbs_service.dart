import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/bishop_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/dragon_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/gold_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/horse_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/knight_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/lance_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/pawn_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/silver_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/tokin_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/opening_proverbs/opening_proverbs.dart';

/// A service to handle proverbs
class ProverbsService {
  static final _proverbs = [
    ...pawnProverbs,
    ...lanceProverbs,
    ...knightProverbs,
    ...silverProverbs,
    ...goldProverbs,
    ...bishopProverbs,
    ...horseProverbs,
    ...dragonProverbs,
    ...tokinProverbs,
    ...openingProverbs,
  ];

  /// Returns proverbs satisfying a filter
  static Map<ProverbType, List<Proverb>> proverbsWithFilter(String filter) {
    final proverbs = filter == null || filter.isEmpty
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
