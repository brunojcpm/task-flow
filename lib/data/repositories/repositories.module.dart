import 'package:projects2/app/app.services.dart';
import 'package:projects2/data/repositories/auth/auth_local.repository.dart';
import 'package:projects2/data/repositories/home/home_local.repository.dart';
import 'package:provider/provider.dart';

List<Provider> repositoriesModule({AppServices? appServices}) {
  return [
    Provider(
      create: (_) => HomeLocalRepository(),
    ),
    Provider(
      create: (_) => AuthLocalRepository(),
    ),
  ];
}
