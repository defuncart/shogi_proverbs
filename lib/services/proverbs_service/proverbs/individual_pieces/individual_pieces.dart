import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/bishop_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/dragon_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/gold_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/horse_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/knight_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/lance_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/pawn_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/silver_proverbs.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs/individual_pieces/tokin_proverbs.dart';

const individualPieces = [
  ...pawnProverbs,
  ...lanceProverbs,
  ...knightProverbs,
  ...silverProverbs,
  ...goldProverbs,
  ...bishopProverbs,
  ...horseProverbs,
  ...dragonProverbs,
  ...tokinProverbs,
];
