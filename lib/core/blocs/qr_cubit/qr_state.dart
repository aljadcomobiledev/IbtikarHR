part of 'qr_cubit.dart';

abstract class QrState extends Equatable {
  final String code;
  const QrState(this.code);
}

class QrInitial extends QrState {
  const QrInitial() : super("");

  @override
  List<Object> get props => [code];
}

class QrUpdated extends QrState {
  const QrUpdated(String code) : super(code);

  @override
  List<Object> get props => [code];
}
