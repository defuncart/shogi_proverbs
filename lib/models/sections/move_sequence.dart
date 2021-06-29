import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/models/sections/i_section.dart';

/// A model representing a section containing a sequence of game moves
class MoveSequence implements ISection {
  /// A header description
  final String? description;

  /// A list of moves specified as text
  final List<String> moves;

  /// The first player to move
  final PlayerType playerFirstMove;

  const MoveSequence({
    this.description,
    required this.moves,
    required this.playerFirstMove,
  });
}

/// A class of extension methods for MoveSequence
extension MoveSequenceExtensions on MoveSequence {
  /// Determines the player icon for a given move index
  String playerIconForMoveIndex(int index) {
    final playerToMove = index % 2 == 0 ? playerFirstMove : playerFirstMove.flip();
    return playerToMove.icon;
  }
}

// TODO consider moving to shogi package
extension PlayerTypeExtensions on PlayerType {
  /// Returns the player icon for the player type
  String get icon {
    switch (this) {
      case PlayerType.sente:
        return BoardConfig.sente;
      case PlayerType.gote:
        return BoardConfig.gote;
    }
  }
}
