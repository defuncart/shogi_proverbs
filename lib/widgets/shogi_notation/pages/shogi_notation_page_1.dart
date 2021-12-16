import 'package:flutter/material.dart';
import 'package:flutter_shogi_board/flutter_shogi_board.dart';
import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/widgets/common/pages/content_page.dart';

class ShogiNotationPage1 extends StatelessWidget {
  const ShogiNotationPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContentPage(
      headline: AppLocalizations.shogiNotationPage1Headline,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.shogiNotationPage1Label1,
            // textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 16),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child: const ShogiBoard(
                gameBoard: GameBoard.empty(),
                showPiecesInHand: false,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            AppLocalizations.shogiNotationPage1Label2,
            // textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
