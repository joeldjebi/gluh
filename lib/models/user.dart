class UserModel {
  final String name;
  final String datetime;
  final String message;

  UserModel(
      {required this.name, required this.datetime, required this.message});

  static final List<UserModel> dummyData = [
    UserModel(
      name: "Pharmacie",
      datetime: "20:18",
      message: "Votre commande a été valider veuillez proceder au paiement",
    ),
    UserModel(
      name: "Livreur",
      datetime: "19:22",
      message: "Livreur sera là dans 10 min",
    ),
    UserModel(
      name: "Claire",
      datetime: "14:34",
      message:
          "I wasn't aware of that. Let me check I wasn't aware of that. Let me check",
    ),
    UserModel(
      name: "Joe",
      datetime: "11:05",
      message: "Flutter just release 1.0 officially. Should I go for it?",
    ),
    UserModel(
      name: "Mark",
      datetime: "09:46",
      message: "It totally makes sense to get some extra day-off.",
    ),
    UserModel(
      name: "Williams",
      datetime: "08:15",
      message: "It has been re-scheduled to next Saturday 7.30pm",
    ),
  ];
}
