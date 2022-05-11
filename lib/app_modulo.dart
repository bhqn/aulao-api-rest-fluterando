import 'package:flutter_modular/flutter_modular.dart';
import 'package:playground/services/dio_client.dart';
import 'package:playground/services/http_client_interface.dart';
import 'package:playground/views/home_page.dart';

import 'controllers/home_controller.dart';
import 'services/json_placeholder_service.dart';

class AppModule extends Module {
//HomeController(JsonPlaceholderService(Dioclient()));
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton<IHttpClient>((i) => Dioclient()),
        Bind.singleton((i) => JsonPlaceholderService(i())),
        Bind.singleton((i) => HomeController(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => HomePage()),
      ];
}
