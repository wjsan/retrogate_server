import 'package:retrogate_server/generated/installer/proto/v1/installer_event_model.pb.dart';

abstract class SubscribeEventsUsecase {
  Stream<InstallerEventModel> call();
}
