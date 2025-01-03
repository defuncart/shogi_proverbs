import 'package:flutter/material.dart';
import 'package:flutter_shogi_board/flutter_shogi_board.dart';
import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/l10n.dart';
import 'package:shogi_proverbs/widgets/common/pages/content_page.dart';

class ShogiNotationPage1 extends StatelessWidget {
  const ShogiNotationPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentPage(
      headline: context.l10n.shogiNotationPage1Headline,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Text(
            context.l10n.shogiNotationPage1Label1,
            // textAlign: TextAlign.justify,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child: const ShogiBoard(
                gameBoard: GameBoard.empty(),
                showPiecesInHand: false,
              ),
            ),
          ),
          Text(
            context.l10n.shogiNotationPage1Label2,
            // textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
