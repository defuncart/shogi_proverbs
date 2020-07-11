import 'package:flutter/material.dart';
import 'package:shogi_proverbs/services/proverb_service.dart';
import 'package:shogi_proverbs/widgets/proverb_detail/proverb_detail.dart';

class ProverbsTab extends StatelessWidget {
  const ProverbsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text('Proverb Single Page'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ProverbDetail(
                  proverb: ProverbService.proverbs.first,
                ),
              ),
            ),
          ),
          RaisedButton(
            child: Text('Proverb Multi Page'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ProverbDetail(
                  proverb: ProverbService.proverbs.last,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
