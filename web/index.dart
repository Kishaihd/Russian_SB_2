library russian_study_buddy.web.index;

import 'package:polymer_elements/iron_flex_layout/classes/iron_flex_layout.dart';
import 'package:polymer/polymer.dart';

import 'package:russian_study_buddy/views/main_app/main_app.dart';
import 'package:russian_study_buddy/services/logger.dart' as Logger;

const String APP_NAME = "russian_study_buddy";

/// Uses [MainApp]
main() async {
  Logger.log = Logger.initLog(APP_NAME);
  await initPolymer();
}
