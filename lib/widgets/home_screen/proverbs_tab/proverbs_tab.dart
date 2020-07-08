import 'package:flutter/material.dart';
import 'package:flutter_shogi_board/flutter_shogi_board.dart';
import 'package:shogi/shogi.dart';

class ProverbsTab extends StatelessWidget {
  const ProverbsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ShogiBoard(
          gameBoard: ShogiUtils.sfenStringToGameBoard(
            '7nl/5bgk1/5g1pp/5pp2/7NP/4PB3/5P3/9/8L b P',
          ),
          showPiecesInHand: false,
        ),
      ),
    );
  }
}
