import 'package:pedometer/pedometer.dart';

class FitnessService {

  Stream<StepCount> getStepStream() {
    return Pedometer.stepCountStream;
  }

}