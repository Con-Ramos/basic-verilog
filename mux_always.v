module mux #(parameter integer WIDTH = 1)(  // Modulo mux realiza a selecao dos dados
    input wire [WIDTH-1:0] in_A,            // Entrada 0, in_A = primeira entrada do mux
    input wire [WIDTH-1:0] in_B,            // Entrada 1, in_B = segunda entrada do mux
    input wire SEL,                         // Sinal de selecao, qual das duas entradas sera passada para a saida
    output wire[WIDTH-1:0] mux_output  );   // A saida do mux

  always (*) 
    if (SEL == 1)              //Se SEL for 1(true) a saida sera igual a in_B
      mux_output <= in_B;
    else                       //Se nao, (false) a saida sera igual a in_A
      mux_output <= in_A;
endmodule                      //Indica o final do modulo
