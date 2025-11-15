import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shogi_proverbs/di_container.dart';
import 'package:shogi_proverbs/l10n/l10n.dart';
import 'package:shogi_proverbs/services/settings_database/i_settings_database.dart';
import 'package:shogi_proverbs/widgets/common/chips/segmented_chips.dart';

class SelectedPieceSymbolNotifier extends Notifier<int> {
  @override
  int build() => DIContainer.get<ISettingsDatabase>().selectedPieceSymbol;

  void update(int value) {
    state = value;
    DIContainer.get<ISettingsDatabase>().selectedPieceSymbol = value;
  }
}

final selectedPieceSymbolProvider = NotifierProvider<SelectedPieceSymbolNotifier, int>(
  SelectedPieceSymbolNotifier.new,
);

class PieceSymbolPanel extends StatelessWidget {
  static const _languageSymbols = ['K', '玉'];

  const PieceSymbolPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(context.l10n.pieceSymbolPanelText),
        Consumer(
          builder: (_, ref, _) => SegmentedChips(
            labels: _languageSymbols,
            initiallySelectedIndex: ref.read(selectedPieceSymbolProvider),
            onSelected: ref.read(selectedPieceSymbolProvider.notifier).update,
          ),
        ),
      ],
    );
  }
}
