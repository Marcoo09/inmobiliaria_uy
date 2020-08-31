import 'package:inmobiliariauy/src/core/services/navigation_service.dart';
import 'package:inmobiliariauy/src/locator.dart';
import 'package:stacked/stacked.dart';

class NewRegisterViewModel extends BaseViewModel {
  // MARK: - Variables
  // MARK - First section
  String modality = "Alquiler";
  String ownerName = "";
  String phone = "";
  String email = "";
  String propertyType = "Casa";
  String address = "";
  String neighborhood = "";
  String census = "";
  String type = "PH";
  int salePrice = 0;
  int rentalPrice = 0;

  final NavigationService _navigationService = locator<NavigationService>();

  // MARK: - Busy keys
  static const BusyModalityComboBox = "busy_modality";
  static const BusyOwnerField = "busy_owner_field";
  static const BusyPhoneField = "busy_phone_field";
  static const BusyEmailField = "busy_email_field";
  static const BusyPropertyTypeComboBox = "busy_property_type";
  static const BusyAddress = "busy_address";
  static const BusyNeighborhood = "busy_neighborhood";
  static const BusyCensus = "busy_census";
  static const BusyTypeComboBox = "busy_type";
  static const BusySalePrice = "busy_sale_price";
  static const BusyRentalPrice = "busy_rental_price";

  void onSearchChanged() {}

  void setModality(String newValue) {
    setBusyForObject(BusyModalityComboBox, true);
    modality = newValue;
    setBusyForObject(BusyModalityComboBox, false);
  }

  void setOwnerName(String newValue) {
    setBusyForObject(BusyOwnerField, true);
    ownerName = newValue;
    setBusyForObject(BusyOwnerField, false);
  }

  void setPhone(String newValue) {
    setBusyForObject(BusyPhoneField, true);
    phone = newValue;
    setBusyForObject(BusyPhoneField, false);
  }

  void setEmail(String newValue) {
    setBusyForObject(BusyEmailField, true);
    email = newValue;
    setBusyForObject(BusyEmailField, false);
  }

  void setPropertyType(String newValue) {
    setBusyForObject(BusyPropertyTypeComboBox, true);
    propertyType = newValue;
    setBusyForObject(BusyPropertyTypeComboBox, false);
  }

  void setAddress(String newValue) {
    setBusyForObject(BusyAddress, true);
    address = newValue;
    setBusyForObject(BusyAddress, false);
  }

  void setNeighborhood(String newValue) {
    setBusyForObject(BusyNeighborhood, true);
    neighborhood = newValue;
    setBusyForObject(BusyNeighborhood, false);
  }

  void setCensus(String newValue) {
    setBusyForObject(BusyCensus, true);
    census = newValue;
    setBusyForObject(BusyCensus, false);
  }

  void setType(String newValue) {
    setBusyForObject(BusyTypeComboBox, true);
    type = newValue;
    setBusyForObject(BusyTypeComboBox, false);
  }

  void setSalePrice(int newValue) {
    setBusyForObject(BusySalePrice, true);
    salePrice = newValue;
    setBusyForObject(BusySalePrice, false);
  }

  void setRentalPrice(int newValue) {
    setBusyForObject(BusyRentalPrice, true);
    rentalPrice = newValue;
    setBusyForObject(BusyRentalPrice, false);
  }

  void onTapCancel() {
    // clearViewModel();
  }
}
