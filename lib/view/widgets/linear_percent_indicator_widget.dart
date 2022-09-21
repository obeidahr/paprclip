import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../core/models/performance_model.dart';

class LinearPercentIndicatorWidget extends StatelessWidget {
  // final Widget leading;
   final IconData icon;
  // final String text;
   final Color color;
   final double percent;
  final PerformanceModel performanceModel;
  const LinearPercentIndicatorWidget({
    Key? key,
    // required this.leading,
     required this.icon,
    // required this.text,
     required this.color,
     required this.percent,
    required this.performanceModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10),
      child: LinearPercentIndicator(
        alignment:MainAxisAlignment.spaceBetween,
        width: 170.0,
        //animation: true,
        //animationDuration: 1000,
        lineHeight: 35.0,
        leading: Text('${performanceModel.label}'),
        trailing:   Row(children: [
            Icon(performanceModel.changePercent! < 0 ? Icons.arrow_drop_down: icon,color:performanceModel.changePercent! < 0 ?Colors.red :color,),
            Text("${performanceModel.changePercent!.abs().ceilToDouble()} %",style: TextStyle(color: performanceModel.changePercent! < 0 ?  Colors.red:color),),
          ],
        ),
        percent: percent,
        barRadius:const Radius.circular(6),
        //center: Text("30.0%"),
        linearStrokeCap: LinearStrokeCap.butt,
        progressColor:  performanceModel.changePercent! < 0 ?  Colors.red:color),
    );
  }
}