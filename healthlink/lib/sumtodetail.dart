import 'package:healthlink/models/Medicine.dart';
import 'package:healthlink/models/detailed_summary.dart';
import 'package:healthlink/models/prescription.dart';
import 'package:healthlink/models/summary.dart';

DetailedSummary generateDetailedSummary(Summary summary) {
  // Dummy data
  String doctorName = "Dr. John Doe";
  String patientName = "Patient";
  String summaryText = summary.summaryText;

  List<Medicine> dummyMedicines = [
    Medicine(name: "Medicine A", dosage: "1 tablet", frequency: "Once a day"),
    Medicine(name: "Medicine B", dosage: "2 tablets", frequency: "Twice a day"),
  ];

  // Dummy prescription
  Prescription dummyPrescription = Prescription(
    doctorId: "789",
    patientId: "456",
    medicines: dummyMedicines,
    generalHabits: "Follow a healthy diet and exercise regularly.",
  );

  // Create and return a detailed summary
  return DetailedSummary(
    doctorName: doctorName,
    patientName: patientName,
    timestamp: summary.timestamp,
    summaryText: summaryText,
    prescription: dummyPrescription,
  );
}
