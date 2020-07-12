import 'package:flutter/material.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs_service.dart';
import 'package:shogi_proverbs/widgets/proverb_detail/proverb_detail.dart';

class ProverbsTab extends StatelessWidget {
  const ProverbsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final proverbs = ProverbsService.proverbs;
    return ListView(
      children: [
        for (final kvp in proverbs.entries)
          ExpansionTile(
            initiallyExpanded: true,
            title: Text(kvp.key.locaString),
            children: [
              for (final proverb in kvp.value)
                ListTile(
                  title: Text(proverb.title),
                  subtitle: Text(proverb.japaneseTitle),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => ProverbDetail(
                        proverb: proverb,
                      ),
                    ),
                  ),
                ),
            ],
          ),
      ],
    );
  }
}
