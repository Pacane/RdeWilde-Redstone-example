library app;

import 'dart:async';

import 'package:redstone/redstone.dart' as app;
import 'package:redstone_mapper/mapper.dart';
import 'package:redstone_mapper_mongo/service.dart';
import 'package:redstone_mapper/plugin.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:shelf/shelf.dart';

part 'api/users.dart';
part 'models/user.dart';

const VERSION = "v1";
