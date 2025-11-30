import 'package:retrogate_server/generated/installer/proto/v1/installer_event_model.pb.dart';
import 'package:retrogate_server/modules/installer/domain/repository/installer_repository.dart';
import 'package:retrogate_server/modules/installer/domain/usecases/subscribe_events_usecase.dart';

class SubscribeEventsUsecaseImpl implements SubscribeEventsUsecase {
  final InstallerRepository repository;
  SubscribeEventsUsecaseImpl(this.repository);

  @override
  Stream<InstallerEventModel> call() => repository.subscribeEvents();
}
