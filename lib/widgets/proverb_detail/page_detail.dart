import 'package:flutter/material.dart' hide Page;
import 'package:shogi_proverbs/models/page.dart';
import 'package:shogi_proverbs/models/sections/diagram.dart';
import 'package:shogi_proverbs/models/sections/move_sequence.dart';
import 'package:shogi_proverbs/models/sections/paragraph.dart';
import 'package:shogi_proverbs/widgets/proverb_detail/sections/diagram_detail.dart';
import 'package:shogi_proverbs/widgets/proverb_detail/sections/move_sequence_detail.dart';
import 'package:shogi_proverbs/widgets/proverb_detail/sections/paragraphy_detail.dart';

class PageDetail extends StatelessWidget {
  final Page page;

  const PageDetail({
    Key key,
    @required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            for (final section in page.sections)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (section is Paragraph) ParagraphDetail(paragraph: section),
                  if (section is Diagram) DiagramDetail(diagram: section),
                  if (section is MoveSequence) MoveSequenceDetail(moveSequence: section),
                  Container(height: 16),
                ],
              )
          ],
        ),
      ),
    );
  }
}
