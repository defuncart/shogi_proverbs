import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shogi_proverbs/di_container.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/services/settings_database/i_settings_database.dart';
import 'package:shogi_proverbs/widgets/common/chips/segmented_chips.dart';

final selectedPieceSymbolProvider = StateProvider((_) => DIContainer.get<ISettingsDatabase>().selectedPieceSymbol);

class PieceSymbolPanel extends StatelessWidget {
  static const _languageSymbols = ['K', '玉'];

  const PieceSymbolPanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(AppLocalizations.pieceSymbolPanelText),
        Consumer((_, read) => SegmentedChips(
              labels: _languageSymbols,
              initiallySelectedIndex: read(selectedPieceSymbolProvider).state,
              onSelected: (selectedIndex) {
                selectedPieceSymbolProvider.read(context).state = selectedIndex;
                DIContainer.get<ISettingsDatabase>().selectedPieceSymbol = selectedIndex;
              },
            )),
      ],
    );
  }
}
