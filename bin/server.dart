// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_static/shelf_static.dart';

void main(List<String> args) {
  var handler = createStaticHandler('example/files',
      defaultDocument: 'index.html');

  io.serve(handler, '0.0.0.0', 8080);
}
