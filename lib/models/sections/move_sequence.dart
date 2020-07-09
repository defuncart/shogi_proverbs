import 'package:meta/meta.dart';
import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/models/sections/i_section.dart';

/// A class describing a section containing a sequence of game moves
class MoveSequence implements ISection {
  /// A list of moves specified as text
  final List<String> moves;

  /// The first player to move
  final PlayerType playerFirstMove;

  const MoveSequence({
    @required this.moves,
    @required this.playerFirstMove,
  })  : assert(moves != null),
        assert(playerFirstMove != null);
}
