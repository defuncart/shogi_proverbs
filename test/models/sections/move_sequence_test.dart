import 'package:flutter_test/flutter_test.dart';
import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/models/sections/move_sequence.dart';

void main() {
  test('MoveSequenceExtensions: playerIconForMoveIndex sente first', () {
    final moveSequence = MoveSequence(
      moves: [
        'P*1c',
        'Lx1c',
        'Bx1c+',
        'Nx1c',
        'L*3i',
      ],
      playerFirstMove: PlayerType.sente,
    );
    expect(moveSequence.playerIconForMoveIndex(0), BoardConfig.sente);
    expect(moveSequence.playerIconForMoveIndex(1), BoardConfig.gote);
    expect(moveSequence.playerIconForMoveIndex(2), BoardConfig.sente);
    expect(moveSequence.playerIconForMoveIndex(3), BoardConfig.gote);
    expect(moveSequence.playerIconForMoveIndex(4), BoardConfig.sente);
  });

  test('MoveSequenceExtensions: playerIconForMoveIndex gote first', () {
    final moveSequence = MoveSequence(
      moves: [
        'N-7c',
        'P-3e',
        'Px3e',
        'L*3d',
        'N*3c',
        'Lx3e',
      ],
      playerFirstMove: PlayerType.gote,
    );
    expect(moveSequence.playerIconForMoveIndex(0), BoardConfig.gote);
    expect(moveSequence.playerIconForMoveIndex(1), BoardConfig.sente);
    expect(moveSequence.playerIconForMoveIndex(2), BoardConfig.gote);
    expect(moveSequence.playerIconForMoveIndex(3), BoardConfig.sente);
    expect(moveSequence.playerIconForMoveIndex(4), BoardConfig.gote);
    expect(moveSequence.playerIconForMoveIndex(5), BoardConfig.sente);
  });
}
