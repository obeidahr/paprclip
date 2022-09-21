import 'package:flutter/material.dart';
import 'package:paprclip/core/models/performance_model.dart';
import 'package:paprclip/core/network/dio_helper.dart';
import 'package:paprclip/view/widgets/row_widget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'widgets/linear_percent_indicator_widget.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

@override
  void initState() {
    getData();
    getData2();
    super.initState();
  }
  List<double> number = [0.015,0.02,0.02,0.028,0.013,0.1,0.25,1];
//List<double> number = [0.015,1,1,1,1,1,1,1];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Overview", style: TextStyle(color: Color.fromARGB(255, 27, 93, 146),fontSize: 30),),
                    const Divider(
                      height: 20,
                    ),
                    //  Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       const Text('Sector'),
                    //       Text('${map['Sector']}'),
                    //     ],
                    //  )
                    RowWidget(word:'Sector' ,api:'${map['Sector']}'),
                    RowWidget(word:'Industry' ,api:'${map['Industry']}'),
                    RowWidget(word:'Market Cap.' ,api:'${map['MCAP']}'),
                    RowWidget(word:'Enterprise Value (EV)' ,api:'${map['Sector']}'),
                    RowWidget(word:'BooK Value / Share' ,api:'${map['BookNavPerShare']}'),
                    RowWidget(word:'Price-Earning Ratio(PE)' ,api:'${map['TTMPE']}'),
                    RowWidget(word:'PEG Ratio' ,api:'${map['PEGRatio']}'),
                    RowWidget(word:'Dividend Yield' ,api:'${map['Yield']}'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const[
                        Text("View More",style: TextStyle(color: Color.fromARGB(255, 255, 208, 1),fontSize: 20),)
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const Text("Performance", style: TextStyle(color: Color.fromARGB(255, 27, 93, 146),fontSize: 30),),
                    const Divider(
                      height: 20,
                    ),
                    Container(
                      padding:const EdgeInsets.all(1),
                      height: double.maxFinite,          
                      child: ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (context,index){
                        return LinearPercentIndicatorWidget(
                          performanceModel: PerformanceModel.fromJson(list[index]),
                          //leading:Text('${list[index]['Label']}') ,
                          icon: Icons.arrow_drop_up,
                          //text: '${list[index]['ChangePercent']}%',
                          color: Colors.green,
                          percent:number[index]
                        );
                      }),
                    ),
                    
                    // LinearPercentIndicatorWidget(leading: Text('${list[0]['Label']}'),icon: Icons.arrow_drop_up,text: '9 %',color: Colors.green,percent: 0.015,),
                    // LinearPercentIndicatorWidget(leading: Text('${list[1]['Label']}'),icon: Icons.arrow_drop_up,text: '1.4 %',color: Colors.green,percent:0.02),
                    // LinearPercentIndicatorWidget(leading: Text('${list[2]['Label']}'),icon: Icons.arrow_drop_up,text: '3.9 %',color: Colors.green,percent: 0.02),
                    // LinearPercentIndicatorWidget(leading: Text('${list[3]['Label']}'),icon: Icons.arrow_drop_up,text: '8.1 %',color: Colors.green,percent:0.028 ,),
                    // LinearPercentIndicatorWidget(leading: Text('${list[4]['Label']}'),icon: Icons.arrow_drop_down,text: '6.0 %',color: Colors.red,percent: 0.013,),
                    // LinearPercentIndicatorWidget(leading: Text('${list[5]['Label']}'),icon: Icons.arrow_drop_up,text: '31.0 %',color: Colors.green,percent: 0.1,),
                    // LinearPercentIndicatorWidget(leading: Text('${list[6]['Label']}'),icon: Icons.arrow_drop_up,text: '68.1 %',color: Colors.green,percent: 0.25,),
                    // LinearPercentIndicatorWidget(leading: Text('${list[7]['Label']}'),icon: Icons.arrow_drop_up,text: '399.0 %',color: Colors.green,percent: 1,),
                  ],
                ),
            ),
            ),
    );
  }

  Map map = {};
  void getData(){
    DioHelper.getData(
      url:"https://api.stockedge.com/Api/SecurityDashboardApi/GetCompanyEquityInfoForSecurity/5051",
      query: {}).then((value){
      //print(value.data['Security']);
      map.addAll(value.data);
    }).catchError((error){
      print("===============================");
    });
  }
  List list = [];
  void getData2(){
    DioHelper.getData(
      url:"https://api.stockedge.com/Api/SecurityDashboardApi/GetTechnicalPerformanceBenchmarkForSecurity/5051",
      query: {}).then((value){
      //print(value.data[0]['Label']);
      list.addAll(value.data);
    }).catchError((error){
      print("===============================");
    });
  }
}
