module mux_always #(parameter integer WIDTH = 1)(  // Modulo mux realiza a selecao dos dados
    input wire [WIDTH-1:0] in_A,            // Entrada 0, in_A = primeira entrada do mux
    input wire [WIDTH-1:0] in_B,            // Entrada 1, in_B = segunda entrada do mux
    input wire sel,                         // Sinal de selecao, qual das duas entradas sera passada para a saida
    output reg[WIDTH-1:0] mux_output  );    // A saida do mux

    always @(*) 
        begin
            if (sel == 1)                   //Se sel for 1(true) a saida sera igual a in_B
                mux_output = in_B;
            else                            //Se nao, (false) a saida sera igual a in_A
                mux_output = in_A;
        end
endmodule                                   //Indica o final do modulo
