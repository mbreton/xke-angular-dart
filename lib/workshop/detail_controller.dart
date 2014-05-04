library detail_controller;

import 'package:angular/angular.dart';
import 'dart:async';

import 'log.dart';


@Controller(
    selector: '[detail-ctrl]',
    publishAs: 'detailCtrl')
class DetailController {
  
  Log log;
  
  DetailController(Http _http, RouteProvider _routeProvider) {
    Future.wait([_http.get("apache-log.json").then((HttpResponse httpResponse) {
    	for (Map mLog in httpResponse.data) {
        	Log l = new Log.fromJsonMap(mLog);
            if (l.id == _routeProvider.parameters['detailId']) {
              log = l;
              break;
            }
        }
    })]);
  }
  
}

