import 'package:flutter/material.dart';
import 'package:pha_flutter/models/bottom-nav.dart';
import 'package:pha_flutter/widgets/progress-bar.dart';
import 'package:provider/provider.dart';

class RewardsSummary extends StatelessWidget {
  RewardsSummary({
    Key key,
    this.earnedAmount,
    this.totalAmount,
  });

  final int earnedAmount;
  final int totalAmount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12, right: 12, bottom: 8),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {
            Future.delayed(Duration(milliseconds: 200), () {
              Provider.of<BottomNav>(context, listen: false).setTab(1);
            });
          },
          borderRadius: BorderRadius.circular(15),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Rewards Earned',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: Text(
                      'You earned \$$earnedAmount out of \$$totalAmount for this year. Good job!'),
                ),
                ProgressBar(percentage: earnedAmount / totalAmount * 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
