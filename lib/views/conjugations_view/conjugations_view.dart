@HtmlImport('conjugations_view.html')
library my_project.lib.conjugations_view;

import 'dart:html';

import 'package:polymer_elements/iron_flex_layout/classes/iron_flex_layout.dart';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

import '../../services/logger.dart';

@PolymerRegister('conjugations-view')
class ConjugationsView extends PolymerElement {

  ConjugationsView.created() : super.created();

  void ready() {
    log.info("$runtimeType::ready()");
  }
}