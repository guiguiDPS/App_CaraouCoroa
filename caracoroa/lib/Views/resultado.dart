import 'package:caracoroa/Views/jogar.dart';
import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  String valor;
  Resultado(this.valor, {super.key});

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    var caminhoImagem = "";
    if(widget.valor == "cara"){
      caminhoImagem = "imagens/moeda_cara.png";
    }else{
      caminhoImagem = "imagens/moeda_coroa.png"; 
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [],
      ),
      backgroundColor: Colors.green,
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              Image.asset(caminhoImagem),
              SizedBox(height: 20),
              GestureDetector(
                child: 
                Image.asset("imagens/botao_voltar.png"),
                onTap: (){
                  Navigator.pop(context);
                },
              )
            ]
          ),
          
        ),
    );
  }
}