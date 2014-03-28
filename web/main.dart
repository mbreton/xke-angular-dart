import 'dart:html';

// Temporary, please follow https://github.com/angular/angular.dart/issues/476
@MirrorsUsed(override: '*')
import 'dart:mirrors';

import 'package:angular/angular.dart';
import '../lib/tuto/tuto_module.dart';
import '../lib/workshop/log_controller.dart';
import '../lib/workshop/filters.dart';

class WorkshopModule extends Module {
  WorkshopModule()  {
    type(LogController);
    type(TruncateFilter);
    type(StatusFilter);
    type(MethodFilter);
  }
}

void main() {
  // Write your code here
  ngBootstrap(     module   : new WorkshopModule());
  
  // Don't touch this =====
  tutoBootstrap();
}
