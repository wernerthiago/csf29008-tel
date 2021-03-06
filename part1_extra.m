%% Iniciando o sistema
clc;clear all;close all;
municipios = [  1 303.30 202.14;
    2 518.50 595.97;
    3 211.86 136.97;
    4 283.22 372.51;
    5 626.06 293.15;
    6 799.88 85.79;
    7 235.70 815.87;
    8 948.74 39.79;
    9 547.85 63.07;
    10 115.41 157.17;
    11 386.78 149.91;
    12 117.19 110.93;
    13 217.33 97.73;
    14 529.45 270.28;
    15 1126.11 457.58;
    16 405.23 11.65;
    17 2631.50 59.56;
    18 336.40 116.77;
    19 259.88 40.16;
    20 374.08 39.23;
    21 113.03 540.56;
    22 548.79 38.98;
    23 548.79 38.98;
    24 907.31 43.92;
    25 344.05 57.62;
    26 234.06 155.12;
    27 350.04 7.09;
    28 384.52 124.09;
    29 377.76 116.81];
%% Dados Iniciais
for u = 1:length(municipios)
    Municipio = municipios(u,:);
    Densidade = Municipio(3);
    Area_cidade = Municipio(2);
    Habitantes = Densidade*Area_cidade;
    if(Habitantes > 100e3)
        Rc = 600/1000; %quilometros
        n = 5; %fator ambiente
    else
        Rc = 1000/1000; %quilometros
        n = 3; %fator ambiente
    end
    SIR(u) = part1_ex(Area_cidade,Rc,n);            %Garantindo SIR
    pop(u) = part2_ex(Area_cidade,Densidade,Rc,n);  %Garantindo Tr�fego
end


