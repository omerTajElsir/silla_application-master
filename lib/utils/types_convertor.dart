//TypesConverter
class TypesConverter {
  static String getBodyTypeForAdd(String selected) {
    switch (selected) {
      case "Compact":
        return "compact";
        break;
      case "Convertible":
        return "convertible";
        break;
      case "Coupe":
        return "coupe";
        break;
      case "Off-Road":
        return "offRoad";
        break;
      case "Sadans":
        return "sadans";
      case "Transporter":
        return "transporter";
      case "Van":
        return "van";
      case "Other":
        return "other";
        break;
      default:
        return "compact";
    }
  }

  static String getHomeTypes(String selected) {
    switch (selected) {
      case "House":
        return "house";
        break;
      case "Apartment":
        return "apartment";
        break;
      case "Cando":
        return "cando";
        break;
      case "Town House":
        return "town_house";
        break;
      case "Multi Family":
        return "multi_family";
      //multi_family
      case "Other":
        return "other";
    }
  }

  static String getHomeTypesFromKey(String selected) {
    switch (selected) {
      case "house":
        return "House";
        break;

      case "apartment":
        return "Apartment";
        break;

      case "cando":
        return "Cando";
        break;

      case "town_house":
        return "Town House";
        break;

      case "multi_family":
        return "Multi Family";
      //multi_family

      case "other":
        return "Other";
    }
  }
}
