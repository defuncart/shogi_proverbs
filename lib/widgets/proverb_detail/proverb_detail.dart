import 'package:flutter/material.dart' hide Page;
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/widgets/proverb_detail/multi_page_detail.dart';
import 'package:shogi_proverbs/widgets/proverb_detail/page_detail.dart';

/// A detail widget for a [Proverb]
class ProverbDetail extends StatelessWidget {
  final Proverb proverb;

  const ProverbDetail({
    Key? key,
    required this.proverb,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.proverbDetailsAppBarTitle(index: proverb.index + 1)),
      ),
      body: SafeArea(
        child: proverb.isMultiPage ? MultiPageDetail(pages: proverb.pages) : PageDetail(page: proverb.pages.first),
      ),
    );
  }
}
