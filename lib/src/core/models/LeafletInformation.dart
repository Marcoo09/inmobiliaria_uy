import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class LeafletInformation extends Equatable {
  // MARK - First section
  String modality;
  String ownerName;
  String phone;
  String email;
  String propertyType;
  String address;
  String neighborhood;
  String census;
  String type;
  int salePrice;
  int rentalPrice;

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
  String houseState;
  int yearOfConstruction;
  String houseLayout;
  String houseOrientation;

  // MARK - Fourth section
  int buildingFloors;
  double commonExpenses;
  double taxes;
  double contribution;
  double primaryTaxes;
  double domiciliaryTaxes;
  double sanitationFee;

  // MARK - Fifth section
  String others;

  LeafletInformation({
    this.modality = '',
    this.ownerName = '',
    this.phone = '',
    this.email = '',
    this.propertyType = '',
    this.address = '',
    this.neighborhood = '',
    this.census = '',
    this.type = '',
    this.salePrice = 0,
    this.rentalPrice = 0,
    this.m2Ground = 0,
    this.m2Built = 0,
    this.quantityOfBedrooms = 0,
    this.m2OfBedrooms,
    this.quantityOfBathrooms = 0,
    this.m2OfBathrooms,
    this.m2OfLiving = 0,
    this.m2OfDinningRoom = 0,
    this.typeOfKitchen = '',
    this.m2OfKitchen = 0,
    this.quantityOfFloors = 0,
    this.m2OfGarage = 0,
    this.m2OfFrontGarden = 0,
    this.m2OfBackGarden = 0,
    this.houseState = '',
    this.yearOfConstruction = 0,
    this.houseLayout = '',
    this.houseOrientation = '',
    this.buildingFloors = 0,
    this.commonExpenses = 0.0,
    this.taxes = 0.0,
    this.contribution = 0.0,
    this.primaryTaxes = 0.0,
    this.domiciliaryTaxes = 0.0,
    this.sanitationFee = 0.0,
    this.others = '',
  });

  @override
  List<Object> get props => [ownerName];
}
