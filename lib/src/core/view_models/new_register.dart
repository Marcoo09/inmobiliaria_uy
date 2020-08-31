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

  // MARK - Second section
  int m2Ground;
  int m2Built;
  int quantityOfBedrooms;
  List<int> m2OfBedrooms;
  int quantityOfBathrooms;
  List<int> m2OfBathrooms;
  int m2OfLiving;
  int m2OfDinningRoom;
  String typeOfKitchen;
  int m2OfKitchen;
  int quantityOfFloors;
  int m2OfGarage;
  int m2OfFrontGarden;
  int m2OfBackGarden;

  // MARK - Third section
  String houseState = 'Reciclar';
  int yearOfConstruction;
  String houseLayout = 'Frente';
  String houseOrientation = 'Norte';

  // MARK - Fourth section
  int buildingFloors;
  double commonExpenses;
  double taxes;
  double contribution;
  double primaryTaxes;
  double domiciliaryTaxes;
  double sanitationFee;

  // MARK - Fifth section
  String others = "";

  final NavigationService _navigationService = locator<NavigationService>();

  // MARK: - Busy keys

  // MARK - --Busy-- Firts section
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

  // MARK - --Busy-- Third section

  // MARK - --Busy-- Third section
  static const BusyHouseStateComboBox = "busy_house_state";
  static const BusyYearOfConstruction = "busy_year_of_construction";
  static const BusyHouseLayoutComboBox = "busy_house_layout";
  static const BusyHouseOrientationComboBox = "busy_house_orientation";

  // MARK - --Busy-- Fourth section

  // MARK - --Busy-- Fifth section
  static const BusyOthers = "busy_others";

// MARK - --Modifiers-- First section
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

// MARK - --Modifiers-- Second section

// MARK - --Modifiers-- Third section
  void setHouseState(String newValue) {
    print(newValue);
    setBusyForObject(BusyHouseStateComboBox, true);
    houseState = newValue;
    setBusyForObject(BusyHouseStateComboBox, false);
  }

  void setYearOfConstruction(int newValue) {
    print(newValue);
    setBusyForObject(BusyYearOfConstruction, true);
    yearOfConstruction = newValue;
    setBusyForObject(BusyYearOfConstruction, false);
  }

  void setHouseLayout(String newValue) {
    print(newValue);
    setBusyForObject(BusyHouseLayoutComboBox, true);
    houseLayout = newValue;
    setBusyForObject(BusyHouseLayoutComboBox, false);
  }

  void setHouseOrientation(String newValue) {
    print(newValue);
    setBusyForObject(BusyHouseOrientationComboBox, true);
    houseOrientation = newValue;
    setBusyForObject(BusyHouseOrientationComboBox, false);
  }

// MARK - --Modifiers-- Fourth section

// MARK - --Modifiers-- Fifth section
  void setOthers(String newValue) {
    print(newValue);
    setBusyForObject(BusyOthers, true);
    others = newValue;
    setBusyForObject(BusyOthers, false);
  }

  void onTapCancel() {
    // clearViewModel();
  }
}
