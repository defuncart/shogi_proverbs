import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi_board/flutter_shogi_board.dart';
import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/l10n.dart';
import 'package:shogi_proverbs/widgets/common/pages/content_page.dart';
import 'package:shogi_proverbs/widgets/common/panels/piece_symbol_panel.dart';

class _PieceModel {
  final String name;
  final String boardSymbol;
  final Color boardSymbolColor;
  final String moveNotation;

  const _PieceModel({
    required this.name,
    required this.boardSymbol,
    required this.boardSymbolColor,
    required this.moveNotation,
  });
}

class ShogiNotationPage2 extends StatelessWidget {
  const ShogiNotationPage2({Key? key}) : super(key: key);

  String _pieceTypeMultipleOptions(PieceType pieceType, {required bool usesJapanese}) =>
      '${BoardPiece(pieceType: pieceType, position: const Position(column: 1, row: 1)).displayString(usesJapanese: usesJapanese)}/${BoardPiece(pieceType: pieceType, player: PlayerType.gote, position: const Position(column: 1, row: 1)).displayString(usesJapanese: usesJapanese)}';

  String _formattedPieceType(PieceType pieceType, {required bool usesJapanese}) {
    if (usesJapanese) {
      if (pieceType == PieceType.king) {
        return _pieceTypeMultipleOptions(pieceType, usesJapanese: usesJapanese);
      }

      return BoardPiece(pieceType: pieceType, position: const Position(row: 1, column: 1)).displayString();
    }

    return _pieceTypeMultipleOptions(pieceType, usesJapanese: usesJapanese);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        final usesJapanese = ref.read(selectedPieceSymbolProvider) == 1;
        final pieceColor = DefaultShogiBoardStyle.of(context).style.pieceColor;
        final promotedPieceColor = DefaultShogiBoardStyle.of(context).style.promotedPieceColor;

        final pieces = [
          _PieceModel(
            name: 'Pawn',
            boardSymbol: _formattedPieceType(PieceType.pawn, usesJapanese: usesJapanese),
            boardSymbolColor: pieceColor,
            moveNotation: 'P',
          ),
          _PieceModel(
            name: 'Lance',
            boardSymbol: _formattedPieceType(PieceType.lance, usesJapanese: usesJapanese),
            boardSymbolColor: pieceColor,
            moveNotation: 'L',
          ),
          _PieceModel(
            name: 'Knight',
            boardSymbol: _formattedPieceType(PieceType.knight, usesJapanese: usesJapanese),
            boardSymbolColor: pieceColor,
            moveNotation: 'N',
          ),
          _PieceModel(
            name: 'Silver',
            boardSymbol: _formattedPieceType(PieceType.silver, usesJapanese: usesJapanese),
            boardSymbolColor: pieceColor,
            moveNotation: 'S',
          ),
          _PieceModel(
            name: 'Gold',
            boardSymbol: _formattedPieceType(PieceType.gold, usesJapanese: usesJapanese),
            boardSymbolColor: pieceColor,
            moveNotation: 'G',
          ),
          _PieceModel(
            name: 'Bishop',
            boardSymbol: _formattedPieceType(PieceType.bishop, usesJapanese: usesJapanese),
            boardSymbolColor: pieceColor,
            moveNotation: 'B',
          ),
          _PieceModel(
            name: 'Rook',
            boardSymbol: _formattedPieceType(PieceType.rook, usesJapanese: usesJapanese),
            boardSymbolColor: pieceColor,
            moveNotation: 'R',
          ),
          _PieceModel(
            name: 'King',
            boardSymbol: _formattedPieceType(PieceType.king, usesJapanese: usesJapanese),
            boardSymbolColor: pieceColor,
            moveNotation: 'K',
          ),
          _PieceModel(
            name: 'Promoted Pawn',
            boardSymbol: _formattedPieceType(PieceType.pawnPromoted, usesJapanese: usesJapanese),
            boardSymbolColor: promotedPieceColor,
            moveNotation: '+P',
          ),
          _PieceModel(
            name: 'Promoted Lance',
            boardSymbol: _formattedPieceType(PieceType.lancePromoted, usesJapanese: usesJapanese),
            boardSymbolColor: promotedPieceColor,
            moveNotation: '+L',
          ),
          _PieceModel(
            name: 'Promoted Knight',
            boardSymbol: _formattedPieceType(PieceType.knightPromoted, usesJapanese: usesJapanese),
            boardSymbolColor: promotedPieceColor,
            moveNotation: '+N',
          ),
          _PieceModel(
            name: 'Promoted Silver',
            boardSymbol: _formattedPieceType(PieceType.silverPromoted, usesJapanese: usesJapanese),
            boardSymbolColor: promotedPieceColor,
            moveNotation: '+S',
          ),
          _PieceModel(
            name: 'Promoted Bishop',
            boardSymbol: _formattedPieceType(PieceType.bishopPromoted, usesJapanese: usesJapanese),
            boardSymbolColor: promotedPieceColor,
            moveNotation: '+B',
          ),
          _PieceModel(
            name: 'Promoted Rook',
            boardSymbol: _formattedPieceType(PieceType.rookPromoted, usesJapanese: usesJapanese),
            boardSymbolColor: promotedPieceColor,
            moveNotation: '+R',
          ),
        ];

        return ContentPage(
          headline: context.l10n.shogiNotationPage2Headline,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Table(
                children: [
                  TableRow(
                    children: [
                      Text(
                        'Piece Name',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Center(
                        child: Text(
                          'Board Symbol',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      Center(
                        child: Text(
                          'Move Notation',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  const TableRow(
                    children: [
                      DefaultTextStyle(
                        style: TextStyle(fontSize: 8),
                        child: Text(''),
                      ),
                      DefaultTextStyle(
                        style: TextStyle(fontSize: 8),
                        child: Text(''),
                      ),
                      DefaultTextStyle(
                        style: TextStyle(fontSize: 8),
                        child: Text(''),
                      ),
                    ],
                  ),
                  for (final piece in pieces)
                    TableRow(
                      children: [
                        Text(piece.name),
                        Center(
                          child: Text(
                            piece.boardSymbol,
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: piece.boardSymbolColor),
                          ),
                        ),
                        Center(
                          child: Text(piece.moveNotation),
                        ),
                      ],
                    ),
                ],
              ),
              const SizedBox(height: 32.0),
              if (!usesJapanese)
                Column(
                  children: [
                    Text(context.l10n.shogiNotationPage2Label1),
                    const SizedBox(height: 32.0),
                  ],
                ),
              Text(context.l10n.shogiNotationPage2Label2),
              const SizedBox(height: 16),
              Table(
                children: [
                  TableRow(
                    children: [
                      Text(
                        'Piece',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        'Alternative Name',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const TableRow(
                    children: [
                      DefaultTextStyle(
                        style: TextStyle(fontSize: 8),
                        child: Text(''),
                      ),
                      DefaultTextStyle(
                        style: TextStyle(fontSize: 8),
                        child: Text(''),
                      ),
                    ],
                  ),
                  const TableRow(
                    children: [
                      Text('Promoted Pawn'),
                      Text('Tokin'),
                    ],
                  ),
                  const TableRow(
                    children: [
                      Text('Promoted Bishop'),
                      Text('Horse'),
                    ],
                  ),
                  const TableRow(
                    children: [
                      Text('Promoted Rook'),
                      Text('Dragon'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
