function [ n ] = erlangcinv( A,delay )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
b = xlsread('ErlangCTable.xls');

linha = [];
coluna = [];
[l,c] = size(b);
n = [];
for i = 1:c
    if b(1,i) == delay
        for j = 2:l
            if(b(j,i) == A)
                n = j-1;
                break;
            end
        end
    end
end

end

