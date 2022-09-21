
import 'dart:convert';

import 'package:http/http.dart' as http;
class OverviewModel {
  int? iD;
  String? security;
  int? industryID;
  String? industry;
  int? sectorID;
  String? sector;
  double? mCAP;
  Null? eV;
  Null? eVDateEnd;
  double? bookNavPerShare;
  double? tTMPE;
  int? tTMYearEnd;
  double? yield;
  int? yearEnd;
  String? sectorSlug;
  String? industrySlug;
  String? securitySlug;
  double? pEGRatio;

  OverviewModel(
      {this.iD,
      this.security,
      this.industryID,
      this.industry,
      this.sectorID,
      this.sector,
      this.mCAP,
      this.eV,
      this.eVDateEnd,
      this.bookNavPerShare,
      this.tTMPE,
      this.tTMYearEnd,
      this.yield,
      this.yearEnd,
      this.sectorSlug,
      this.industrySlug,
      this.securitySlug,
      this.pEGRatio});

  OverviewModel.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    security = json['Security'];
    industryID = json['IndustryID'];
    industry = json['Industry'];
    sectorID = json['SectorID'];
    sector = json['Sector'];
    mCAP = json['MCAP'];
    eV = json['EV'];
    eVDateEnd = json['EVDateEnd'];
    bookNavPerShare = json['BookNavPerShare'];
    tTMPE = json['TTMPE'];
    tTMYearEnd = json['TTMYearEnd'];
    yield = json['Yield'];
    yearEnd = json['YearEnd'];
    sectorSlug = json['SectorSlug'];
    industrySlug = json['IndustrySlug'];
    securitySlug = json['SecuritySlug'];
    pEGRatio = json['PEGRatio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['ID'] = iD;
    data['Security'] = security;
    data['IndustryID'] = industryID;
    data['Industry'] = industry;
    data['SectorID'] = sectorID;
    data['Sector'] = sector;
    data['MCAP'] = mCAP;
    data['EV'] = eV;
    data['EVDateEnd'] = eVDateEnd;
    data['BookNavPerShare'] = bookNavPerShare;
    data['TTMPE'] = tTMPE;
    data['TTMYearEnd'] = tTMYearEnd;
    data['Yield'] = yield;
    data['YearEnd'] = yearEnd;
    data['SectorSlug'] = sectorSlug;
    data['IndustrySlug'] = industrySlug;
    data['SecuritySlug'] = securitySlug;
    data['PEGRatio'] = pEGRatio;
    return data;
  }
}
