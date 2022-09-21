class PerformanceModel {
  int? iD;
  String? label;
  String? chartPeriodCode;
  double? changePercent;

  PerformanceModel(
      {this.iD, this.label, this.chartPeriodCode, this.changePercent});

  PerformanceModel.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    label = json['Label'];
    chartPeriodCode = json['ChartPeriodCode'];
    changePercent = json['ChangePercent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data ={};
    data['ID'] = iD;
    data['Label'] = label;
    data['ChartPeriodCode'] = chartPeriodCode;
    data['ChangePercent'] = changePercent;
    return data;
  }
}