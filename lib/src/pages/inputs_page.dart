import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget{
   @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputsPage>{

   String _name = '';
   String _email = '';
   String _date = '';

   TextEditingController _inputDateController = new TextEditingController();

   @override
   Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar(title: Text('Inputs')),
         body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 11.0, vertical: 19.0),
            children: [
               _getInput(),
               Divider(),
               _getName(),
               Divider(),
               _getInputEmail(),
               Divider(),
               _getInputPass(),
               Divider(),
               _getInputDate(context)
            ],
         ),
      );
   }

   Widget _getInput(){
      return TextField(
         // autofocus: true,
         textCapitalization: TextCapitalization.sentences,
         decoration: InputDecoration(
            border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(19.0)
            ),
            counter: Text('Letras ${ _name.length }'),
            hintText: 'Nombre de usuario',
            labelText: 'NOMBRE',
            helperText: 'solo letras',
            suffixIcon: Icon( Icons.assignment_ind_sharp ),
            icon: Icon( Icons.supervised_user_circle )
         ),
         onChanged: (value) => setState(() =>_name = value),
      );
   }

   Widget _getName(){
      return ListTile(
         title: Text('EL nombre es: $_name'),
      );
   }

   Widget _getInputEmail(){
      return TextField(
         keyboardType: TextInputType.emailAddress,
         decoration: InputDecoration(
            border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(19.0)
            ),
            hintText: 'Correo electronico',
            labelText: 'CORREO',
            suffixIcon: Icon( Icons.mark_email_unread_outlined ),
            icon: Icon( Icons.email )
         ),
         onChanged: (value) => setState(() => _email = value),
      );
   }

   Widget _getInputPass(){
      return TextField(
         obscureText: true,
         decoration: InputDecoration(
            border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(19.0)
            ),
            hintText: 'Crea una contraseña',
            labelText: 'CONTRASEÑA',
            suffixIcon: Icon( Icons.password ),
            icon: Icon( Icons.lock )
         ),
      );
   }

   Widget _getInputDate(BuildContext context){
      return TextField(
         controller: _inputDateController,
         enableInteractiveSelection: false,
         keyboardType: TextInputType.datetime,
         decoration: InputDecoration(
            border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(19.0)
            ),
            hintText: 'Fecha de nacimiento',
            labelText: 'Fecha de nacimiento',
            suffixIcon: Icon( Icons.calendar_today_outlined ),
            icon: Icon( Icons.calendar_today_outlined )
         ),
         onTap: (){
            FocusScope.of(context).requestFocus(new FocusNode());
            _selectDate(context);
         },
      );
   }

   _selectDate(BuildContext context) async{

      DateTime? picked = await showDatePicker(
         context: context, 
         initialDate: DateTime.now(), 
         firstDate: DateTime(2019), 
         lastDate: DateTime(2030),
         locale: Locale('es', 'ES')
      );

      if(picked != null){
         setState(() {
            _date = picked.toString();
            _inputDateController.text = _date;
         });
      }
   }
}