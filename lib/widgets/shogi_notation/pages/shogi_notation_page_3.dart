import 'package:flutter/material.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/widgets/common/pages/content_page.dart';

class ShogiNotationPage3 extends StatelessWidget {
  const ShogiNotationPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContentPage(
      headline: AppLocalizations.shogiNotationPage3Headline,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(AppLocalizations.shogiNotationPage3Label1),
          const SizedBox(height: 16),
          Center(
            child: Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: const [
                Text('player'),
                Text('piece'),
                // Text('(origin)'),
                Text('movement'),
                Text('destination'),
                Text('(promotion)'),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Text(AppLocalizations.shogiNotationPage3Label2),
          const SizedBox(height: 16),
          Text(AppLocalizations.shogiNotationPage3Label3),
          const SizedBox(height: 16),
          Text(AppLocalizations.shogiNotationPage3Label4),
          const SizedBox(height: 16),
          Table(
            border: TableBorder.all(
              color: Theme.of(context).disabledColor,
              width: 1,
            ),
            columnWidths: const {
              0: FractionColumnWidth(0.225),
              1: FractionColumnWidth(0.775),
            },
            children: [
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'Example',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'Explanation',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ],
              ),
              const TableRow(
                children: [
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text('☗P-7f'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text('Black moves a pawn to 7f.'),
                  ),
                ],
              ),
              const TableRow(
                children: [
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text('☖Px7d'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text('White moves a pawn to 7d and captures the piece at 7d.'),
                  ),
                ],
              ),
              const TableRow(
                children: [
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text('☖S*3d'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text('White drops a silver from in hand onto 3d'),
                  ),
                ],
              ),
              const TableRow(
                children: [
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text('☗Sx3c+'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      'Black moves a silver to 3c, captures the piece at 3c and chooses to promote their silver.',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
