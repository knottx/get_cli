import 'dart:io';
import 'package:get_cli/core/structure.dart';
import 'package:get_cli/samples/impl/get_route.dart';
import 'package:recase/recase.dart';
import '../../models/file_model.dart';

Future<void> createRoute() async {
  FileModel _fileModel = Structure.model('', 'route', false);

  ReCase reCase = ReCase(_fileModel.name);

  File _route =
      await File(_fileModel.path + "route.dart").create(recursive: true);
  await _route.writeAsString(RouteSample().file(reCase.pascalCase));

  print(reCase.pascalCase + " route created succesfully.");
}
