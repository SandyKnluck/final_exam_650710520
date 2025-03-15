import 'package:flutter/material.dart';

class Answer2 extends StatefulWidget {
  const Answer2({super.key});

  @override
  State<Answer2> createState() => _Answer2State();
}

class _Answer2State extends State<Answer2> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _productWeight = TextEditingController();
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  String? _selectedItem;
  String? _shipping;
  String _result = '';

  void _calculateShipping() {
    if (_formKey.currentState!.validate()) {
      double productweight = double.parse(_productWeight.text);
      String? where = _selectedItem;
      String? ship = _shipping;
      double x = 0;
      double sum = 0;

      if (_selectedItem == "ในเมือง") {
        x = 10;
      } else if (_selectedItem == "ต่างจังหวัด") {
        x = 15;
      } else if (_selectedItem == "ต่างประเทศ") {
        x = 50;
      }
      // print(x);
      sum = productweight * x;
      //print(sum);

      if (_isChecked1) {
        sum += 20;
      }
      if (_isChecked2) {
        sum += 50;
      }

      if (_shipping == "ปกติ") {
        sum += 0;
      } else if (_shipping == "ด่วน") {
        sum += 30;
      } else if (_shipping == "ด่วนพิเศษ") {
        sum += 50;
      }

      //print(sum);

      setState(() {
        _result = 'ค่าจัดส่งทั้งหมด: ฿$sum';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('คำนวนค่าจัดส่ง'),
        ),
        body: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'น้ำหนักสินค้า(กก.):',
                  ),
                  TextFormField(
                    controller: _productWeight,
                    decoration: const InputDecoration(
                      label: Text(
                        'น้ำหนักสินค้า(กก.)',
                        style: TextStyle(color: Color.fromARGB(92, 0, 0, 0)),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      // floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'โปรดระบุน้ำหนักสินค้า(กก.)';
                      }
                      if (double.tryParse(value) == null) {
                        return 'Please enter';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('เลือกระยะทาง:'),
                  SizedBox(
                    width: 150,
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: 'ระยะทาง',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                      ),
                      value: _selectedItem,
                      items: ['ในเมือง', 'ต่างจังหวัด', 'ต่างประเทศ']
                          .map((item) =>
                              DropdownMenuItem(value: item, child: Text(item)))
                          .toList(),
                      onChanged: (value) {
                        _selectedItem = value;
                      },
                      validator: (value) =>
                          value == null ? 'โปรดเลือกระยะทาง' : null,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('บริการเสริม:'),
                  CheckboxListTile(
                    title: const Text('แพ็คกิ้งพิเศษ (+20 บาท)'),
                    value: _isChecked1,
                    onChanged: (value) {
                      setState(() {
                        _isChecked1 = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('ประกันพัสดุ (+50 บาท)'),
                    value: _isChecked2,
                    onChanged: (value) {
                      setState(() {
                        _isChecked2 = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('เลือกความเร่งด่วน:'),
                  RadioListTile(
                    title: const Text('ปกติ'),
                    value: 'ปกติ',
                    groupValue: _shipping,
                    onChanged: (value) {
                      setState(() {
                        _shipping = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text('ด่วน'),
                    value: 'ด่วน',
                    groupValue: _shipping,
                    onChanged: (value) {
                      setState(() {
                        _shipping = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text('ด่วนพิเศษ'),
                    value: 'ด่วนพิเศษ',
                    groupValue: _shipping,
                    onChanged: (value) {
                      setState(() {
                        _shipping = value.toString();
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    ElevatedButton(
                      onPressed: _calculateShipping,
                      child: const Text('คำนวณเวลา'),
                    ),
                  ]),
                  const SizedBox(height: 20),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              _result,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            )));
  }
}
