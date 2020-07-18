import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/dragon_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/knight_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/lance_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/pawn_proverbs.dart';

/// A service to handle proverbs
class ProverbsService {
  static final _proverbs = {
    ProverbType.pieces: [
      ...pawnProverbs,
      ...lanceProverbs,
      ...knightProverbs,
      // TODO silver
      // TODO gold
      // TODO bishop
      ...dragonProverbs,
      // TODO tokin
    ],
  };

  /// A map of ProverbType to a list of proverbs
  static Map<ProverbType, List<Proverb>> get proverbs => _proverbs;
}
