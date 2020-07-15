import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/dragon_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/knight_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/lance_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/pawn_proverbs.dart';

/// A service to handle proverbs
class ProverbsService {
  static final _proverbs = {
    ProverbType.pawn: pawnProverbs,
    ProverbType.lance: lanceProverbs,
    ProverbType.knight: knightProverbs,
    ProverbType.dragon: dragonProverbs,
  };

  /// A map of ProverbType to a list of proverbs
  static Map<ProverbType, List<Proverb>> get proverbs => _proverbs;
}
