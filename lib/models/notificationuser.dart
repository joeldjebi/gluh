class ChatModel {
  final String name;
  final String datetime;
  final String message;

  ChatModel(
      {required this.name, required this.datetime, required this.message});

  static final List<ChatModel> dummyData = [
    ChatModel(
      name: "Pharmacie",
      datetime: "20:18",
      message: "Votre commande a été valider veuillez proceder au paiement",
    ),
    ChatModel(
      name: "Livreur",
      datetime: "19:22",
      message: "Livreur sera là dans 10 min",
    ),
    ChatModel(
      name: "Claire",
      datetime: "14:34",
      message:
          "I wasn't aware of that. Let me check I wasn't aware of that. Let me check",
    ),
    ChatModel(
      name: "Joe",
      datetime: "11:05",
      message: "Flutter just release 1.0 officially. Should I go for it?",
    ),
    ChatModel(
      name: "Mark",
      datetime: "09:46",
      message: "It totally makes sense to get some extra day-off.",
    ),
    ChatModel(
      name: "Williams",
      datetime: "08:15",
      message: "It has been re-scheduled to next Saturday 7.30pm",
    ),
  ];
}
