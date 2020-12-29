import 'package:flutter/material.dart';
import 'package:flutter_shogi_board/flutter_shogi_board.dart';
import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/models/sections/diagram.dart';

/// A detail widget for a [Diagram]
class DiagramDetail extends StatelessWidget {
  final Diagram diagram;

  const DiagramDetail({
    @required this.diagram,
    Key key,
  })  : assert(diagram != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          ShogiBoard(
            gameBoard: ShogiUtils.sfenStringToGameBoard(diagram.sfenString),
          ),
          if (diagram.label != null)
            Text(
              diagram.label,
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
        ],
      ),
    );
  }
}
