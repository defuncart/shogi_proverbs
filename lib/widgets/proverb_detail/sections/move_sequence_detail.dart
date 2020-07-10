import 'package:flutter/material.dart';
import 'package:shogi_proverbs/models/sections/move_sequence.dart';

class MoveSequenceDetail extends StatelessWidget {
  final MoveSequence moveSequence;

  const MoveSequenceDetail({
    @required this.moveSequence,
    Key key,
  })  : assert(moveSequence != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 4.0,
        runSpacing: 4.0,
        children: <Widget>[
          for (int i = 0; i < moveSequence.moves.length; i++)
            Text('${moveSequence.playerIconForMoveIndex(i)}${moveSequence.moves[i]}'),
        ],
      ),
    );
  }
}
