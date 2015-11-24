import 'package:redstone/redstone.dart';
import 'package:redstone/redstone.dart' as app;
import 'package:redstone_mapper/plugin.dart';
import 'package:redstone_mapper_mongo/manager.dart';
import 'package:server_shelf/app.dart';

main() {
  var dbManager = new MongoDbManager("mongodb://localhost/myapp", poolSize: 3);

  app.addPlugin(getMapperPlugin(dbManager));

  app.setupConsoleLog();

  app.start();
}

MongoDb get mongoDb => app.request.attributes.dbConn;
