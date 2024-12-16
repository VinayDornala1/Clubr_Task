part of 'whatsup_dashboard_bloc.dart';

sealed class WhatsupDashboardState extends Equatable {
  const WhatsupDashboardState();
}

final class WhatsupDashboardInitial extends WhatsupDashboardState {
  @override
  List<Object> get props => [];
}
