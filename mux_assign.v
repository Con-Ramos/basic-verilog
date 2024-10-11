module mux #(parameter integer WIDTH = 1)(  //modulo mux realiza a selecao dos dados
    input wire [WIDTH-1:0] in_A,            // Entrada 0, in_A = primeira entrada do mux
    input wire [WIDTH-1:0] in_B,            // Entrada 1, in_B = segunda entrada do mux
    input wire SEL,                         // Sinal de selecao, qual das duas entradas sera passada para a saida
    output wire[WIDTH-1:0] mux_output  );   // A saida do mux

    assign mux_output =  SEL ? in_B : in_A; //Se SEL for 1(true) a saida sera igual a in_B, se sel for 0 (false) a saida sera igual a in_A
endmodule                                   //Indica o final do modulo
