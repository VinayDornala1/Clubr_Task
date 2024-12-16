import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'whatsup_dashboard_event.dart';
part 'whatsup_dashboard_state.dart';

class WhatsupDashboardBloc extends Bloc<WhatsupDashboardEvent, WhatsupDashboardState> {
  WhatsupDashboardBloc() : super(WhatsupDashboardInitial()) {
    on<WhatsupDashboardEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
