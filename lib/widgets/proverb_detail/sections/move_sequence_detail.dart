import 'package:flutter/material.dart';
import 'package:shogi_proverbs/models/sections/move_sequence.dart';

/// A detail widget for a [MoveSequence]
class MoveSequenceDetail extends StatelessWidget {
  final MoveSequence moveSequence;

  const MoveSequenceDetail({
    @required this.moveSequence,
    Key key,
  })  : assert(moveSequence != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (moveSequence.description != null)
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 8),
            child: Text(moveSequence.description),
          ),
        Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 12.0,
            runSpacing: 4.0,
            children: <Widget>[
              for (int i = 0; i < moveSequence.moves.length; i++)
                Text(
                  '${moveSequence.playerIconForMoveIndex(i)}${moveSequence.moves[i]}',
                ),
            ],
          ),
        ),
      ],
    );
  }
}
