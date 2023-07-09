import 'package:as_games/widgets/ContainerPadding.dart';
import 'package:flutter/material.dart';

class CreateGameScreen extends StatefulWidget {
  static const routeName = '/create-game';
  const CreateGameScreen({super.key});

  @override
  State<CreateGameScreen> createState() => _CreateGameScreenState();
}

class _CreateGameScreenState extends State<CreateGameScreen> {
  late String field;
  late String mode;
  late String club;

  List<DropdownMenuItem> fields = const [
    DropdownMenuItem(
      value: 'Dolianova',
      child: Text('Dolianova'),
    ),
    DropdownMenuItem(
      value: 'Maracalagonis',
      child: Text('Maracalagonis'),
    ),
    DropdownMenuItem(
      value: 'Militibus',
      child: Text('Militibus'),
    ),
  ];

  List<DropdownMenuItem> modes = const [
    DropdownMenuItem(
      value: 'Con medico',
      child: Text('Con medico'),
    ),
    DropdownMenuItem(
      value: 'Cattura bandiera',
      child: Text('Cattura bandiera'),
    ),
    DropdownMenuItem(
      value: 'Death match',
      child: Text('Death match'),
    ),
    DropdownMenuItem(
      value: 'Bomba',
      child: Text('Bomba'),
    ),
  ];

  List<DropdownMenuItem> clubs = const [
    DropdownMenuItem(
      value: 'Ares',
      child: Text('Ares'),
    ),
    DropdownMenuItem(
      value: 'Bears',
      child: Text('Bears'),
    ),
    DropdownMenuItem(
      value: 'Scutum',
      child: Text('Scutum'),
    ),
  ];

  TimeOfDay? selectedTime;
  DateTime? selectedDate;

  void selectTime() async {
    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      cancelText: 'Indietro',
      confirmText: 'Ok',
      initialEntryMode: TimePickerEntryMode.dial,
      orientation: Orientation.portrait,
      builder: (context, child) {
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              alwaysUse24HourFormat: true,
            ),
            child: child!);
      },
    );
    setState(() {
      if (time == null) return;
      selectedTime = time;
    });
  }

  void selectDate() async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    );
    if (date == null) return;
    setState(() {
      selectedDate = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crea game'),
      ),
      body: SingleChildScrollView(
        child: ContainerPadding(
          yPadding: 10,
          widget: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: DropdownButtonFormField(
                    // icon: const Icon(Icons.map),
                    items: fields,
                    decoration: InputDecoration(
                      hintText: 'Scegli il campo',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey[700]!,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: Icon(
                        Icons.map,
                        color: Colors.grey[700],
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey[700]!,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onChanged: (value) => field = value.toString(),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 10, top: 10, bottom: 10),
                        child: OutlinedButton.icon(
                          onPressed: () {
                            selectTime();
                          },
                          icon: const Icon(Icons.access_time),
                          label: Text(selectedTime == null
                              ? 'Ora'
                              : '${selectedTime!.hour}:${selectedTime!.minute}'),
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.grey[700]),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, bottom: 10),
                        child: OutlinedButton.icon(
                          onPressed: () {
                            selectDate();
                          },
                          icon: const Icon(Icons.calendar_today),
                          label: Text(selectedDate == null
                              ? 'Giorno'
                              : '${selectedDate!.day}/${selectedDate!.month}'),
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.grey[700]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      hintText: 'Modalita gioco',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey[700]!,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: Icon(
                        Icons.settings,
                        color: Colors.grey[700],
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey[700]!,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    items: modes,
                    onChanged: (value) => mode = value.toString(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Corta descrizione',
                    ),
                    maxLines: 3,
                    minLines: 1,
                    // maxLength: 200,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      hintText: 'Invita un\'altro club',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey[700]!,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: Icon(
                        Icons.group,
                        color: Colors.grey[700],
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey[700]!,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    items: clubs,
                    onChanged: (value) => club = value.toString(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Crea il game'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
