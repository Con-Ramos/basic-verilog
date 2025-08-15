//abreviação de multiplexador, é um componente digital que seleciona um dos vários sinais de entrada e o
//transmite para uma única saída, com base em um sinal de seleção
module mux_assign #(parameter integer WIDTH = 1)(  //modulo mux realiza a selecao dos dados
    input wire [WIDTH-1:0] in_A,            //entrada 0, in_A = primeira entrada do mux
    input wire [WIDTH-1:0] in_B,            //entrada 1, in_B = segunda entrada do mux
    input wire sel,                         //sinal de selecao, qual das duas entradas sera passada para a saida
    output wire[WIDTH-1:0] mux_output  );   //saida do mux

    assign mux_output =  sel ? in_B : in_A; //se SEL for 1(true) a saida = in_B, se sel for 0 (false) a saida = in_A
endmodule                                   //final do modulo
