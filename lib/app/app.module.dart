import 'package:projects2/app/app.services.dart';
import 'package:projects2/data/repositories/repositories.module.dart';
import 'package:provider/provider.dart';

List<Provider> appModule({required AppServices appServices}) {
  return [
    Provider(
      create: (_) => appServices,
    ),
    ...repositoriesModule(
      appServices: appServices,
    ),
  ];
}
