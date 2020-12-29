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
import 'package:shogi_proverbs/services/proverbs_service/proverbs/opening_proverbs/opening_proverbs13.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/opening_proverbs/opening_proverbs46.dart';

/// A service to handle proverbs
class ProverbsService {
  static final _proverbs = {
    ProverbType.pieces: [
      ...pawnProverbs,
      ...lanceProverbs,
      ...knightProverbs,
      ...silverProverbs,
      ...goldProverbs,
      ...bishopProverbs,
      ...horseProverbs,
      ...dragonProverbs,
      ...tokinProverbs,
    ],
    ProverbType.opening: [
      ...openingProverbs13,
      ...openingProverbs46,
    ],
  };

  /// A map of ProverbType to a list of proverbs
  static Map<ProverbType, List<Proverb>> get proverbs => _proverbs;
}
