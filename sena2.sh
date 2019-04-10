#!/bin/bash
#cat mega.txt | grep -A 2 "Prêmio" > mega2
echo -e "\n\n Software MEGA SENA \n"
#cat mega | grep -A 2 "Prêmio" | grep '^[123456789]' > mega2
cat resultados | cut -d " " -f3-8 > mega2
cat mega2 | cut -d ' ' -f1 > numero_1 #separei os numeros
cat numero_1 > log1
cat numero_1 | sort | uniq -c > qtd_num1 #separei_quantidade_numeros
s1=$(cat qtd_num1 | sort -h | tail -n 1 | cut -d " " -f5) #qtd
s2=$(cat qtd_num1 | sort -h | tail -n 1 | cut -d " " -f6) #numero
xx2=$(wc -l log1 | cut -d ' ' -f1)
xx3=$(echo "scale=4;($s1*100)/$xx2" | bc)
echo -e "[1] Numero: Foi encontrada o numero $s2    $s1 vezes totalizando: $xx3 %"
cat qtd_num1 | cut -c 6-8  >qtd_1    #separei a qtd
cat qtd_num1 | cut -c 9-11 > numero_1            #separei o numero

cat mega2 | cut -d ' ' -f2 > numero_2 #separei os numeros
cat numero_2 > log2
cat numero_2 | sort | uniq -c > qtd_num2 #separei_quantidade_numeros
s1=$(cat qtd_num2 | sort -h | tail -n 1 | cut -d " " -f5) #qtd
s2=$(cat qtd_num2 | sort -h | tail -n 1 | cut -d " " -f6) #numero
xx2=$(wc -l log2 | cut -d ' ' -f1)
xx3=$(echo "scale=4;($s1*100)/$xx2" | bc)
echo -e "[2] Numero: Foi encontrada o numero $s2    $s1 vezes totalizando: $xx3 %"
cat qtd_num2 | cut -c 6-8  >qtd_2    #separei a qtd
cat qtd_num2 | cut -c 9-11 > numero_2            #separei o numero

cat mega2 | cut -d ' ' -f3 > numero_3 #separei os numeros
cat numero_3 > log3
cat numero_3 | sort | uniq -c > qtd_num3 #separei_quantidade_numeros
s1=$(cat qtd_num3 | sort -h | tail -n 1 | cut -d " " -f5) #qtd
s2=$(cat qtd_num3 | sort -h | tail -n 1 | cut -d " " -f6) #numero
xx2=$(wc -l log3 | cut -d ' ' -f1)
xx3=$(echo "scale=4;($s1*100)/$xx2" | bc)
echo -e "[3] Numero: Foi encontrada o numero $s2    $s1 vezes totalizando: $xx3 %"
cat qtd_num3 | cut -c 6-8  >qtd_3    #separei a qtd
cat qtd_num3 | cut -c 9-11 > numero_3            #separei o numero

cat mega2 | cut -d ' ' -f4 > numero_4 #separei os numeros
cat numero_4 > log4
cat numero_4 | sort | uniq -c > qtd_num4 #separei_quantidade_numeros
s1=$(cat qtd_num4 | sort -h | tail -n 1 | cut -d " " -f5) #qtd
s2=$(cat qtd_num4 | sort -h | tail -n 1 | cut -d " " -f6) #numero
xx2=$(wc -l log4 | cut -d ' ' -f1)
xx3=$(echo "scale=4;($s1*100)/$xx2" | bc)
echo -e "[4] Numero: Foi encontrada o numero $s2    $s1 vezes totalizando: $xx3 %"
cat qtd_num4 | cut -c 6-8  >qtd_4    #separei a qtd
cat qtd_num4 | cut -c 9-11 > numero_4            #separei o numero

cat mega2 | cut -d ' ' -f5 > numero_5 #separei os numeros
cat numero_5 > log5
cat numero_5 | sort | uniq -c > qtd_num5 #separei_quantidade_numeros
s1=$(cat qtd_num5 | sort -h | tail -n 1 | cut -d " " -f5) #qtd
s2=$(cat qtd_num5 | sort -h | tail -n 1 | cut -d " " -f6) #numero
xx2=$(wc -l log5 | cut -d ' ' -f1)
xx3=$(echo "scale=4;($s1*100)/$xx2" | bc)
echo -e "[5] Numero: Foi encontrada o numero $s2    $s1 vezes totalizando: $xx3 %"
cat qtd_num5 | cut -c 6-8  >qtd_5    #separei a qtd
cat qtd_num5 | cut -c 9-11 > numero_5            #separei o numero

cat mega2 | cut -d ' ' -f6 > numero_6 #separei os numeros
cat numero_6 > log6
cat numero_6 | sort | uniq -c > qtd_num6 #separei_quantidade_numeros
s1=$(cat qtd_num6 | sort -h | tail -n 1 | cut -d " " -f5) #qtd
s2=$(cat qtd_num6 | sort -h | tail -n 1 | cut -d " " -f6) #numero
xx2=$(wc -l log6 | cut -d ' ' -f1)
xx3=$(echo "scale=4;($s1*100)/$xx2" | bc)
echo -e "[6] Numero: Foi encontrada o numero $s2    $s1 vezes totalizando: $xx3 %"
cat qtd_num6 | cut -c 6-8  >qtd_6    #separei a qtd
cat qtd_num6 | cut -c 9-11 > numero_6            #separei o numero


#_______________________________________________________________________________________________

echo -e "\nDigite o numero para pesquisar seguido de espaço:"
echo -e "Exemplo: 00 00 00 00 00 00\n"
read entrada

read1=$(echo "$entrada" | cut -d ' ' -f 1)
read2=$(echo "$entrada" | cut -d ' ' -f 2)
read3=$(echo "$entrada" | cut -d ' ' -f 3)
read4=$(echo "$entrada" | cut -d ' ' -f 4)
read5=$(echo "$entrada" | cut -d ' ' -f 5)
read6=$(echo "$entrada" | cut -d ' ' -f 6)
#echo $read1

if grep -xq "$read1" -n numero_1; then
            echo -e "\nNumero $read1 encontrado"
            z1=$(cat numero_1 | egrep -x $read1 -n | cut -d ':' -f 1)
            xx=$(sed -n $z1' p' qtd_1)
            echo "Quantidade de vezes: $xx"
            xx2=$(wc -l log1 | cut -d ' ' -f1)
            xx3=$(echo "scale=4;($xx*100)/$xx2" | bc)
            echo $xx3 % de acerto
    else
                echo -e "Numero $read1 não encontrado"
fi

if grep -xq "$read2" numero_2; then
            echo -e "\nNumero $read2 encontrado"
            z1=$(cat numero_2 | egrep -x $read2 -n | cut -d ':' -f 1)
            xx=$(sed -n $z1' p' qtd_2)
            echo "Quantidade de vezes: $xx"
            xx2=$(wc -l log2 | cut -d ' ' -f1)
            xx3=$(echo "scale=4;($xx*100)/$xx2" | bc)
            echo $xx3 % de acerto
    else
                echo -e "\nNumero $read2 não encontrado"
fi

if grep -xq "$read3" numero_3; then
            echo -e "\nNumero $read3 encontrado"
            z1=$(cat numero_3 | egrep -x $read3 -n | cut -d ':' -f 1)
            xx=$(sed -n $z1' p' qtd_3)
            echo "Quantidade de vezes: $xx"
            xx2=$(wc -l log3 | cut -d ' ' -f1)
            xx3=$(echo "scale=4;($xx*100)/$xx2" | bc)
            echo $xx3 % de acerto
    else
            echo -e "\nNumero $read3 não encontrado"
fi

if grep -xq "$read4" numero_4; then
            echo -e "\nNumero $read4 encontrado"
            z1=$(cat numero_4 | egrep -x $read4 -n | cut -d ':' -f 1)
            xx=$(sed -n $z1' p' qtd_4)
            echo "Quantidade de vezes: $xx"
            xx2=$(wc -l log4 | cut -d ' ' -f1)
            xx3=$(echo "scale=4;($xx*100)/$xx2" | bc)
            echo $xx3 % de acerto
    else
            echo -e "\nNumero $read4 não encontrado"
fi

if grep -xq "$read5" numero_5; then
            echo -e "\nNumero $read5 encontrado"
            z1=$(cat numero_5 | egrep -x $read5 -n | cut -d ':' -f 1)
            xx=$(sed -n $z1' p' qtd_5)
            echo "Quantidade de vezes: $xx"
            xx2=$(wc -l log5 | cut -d ' ' -f1)
            xx3=$(echo "scale=4;($xx*100)/$xx2" | bc)
            echo $xx3 % de acerto
    else
            echo -e "\nNumero $read5 não encontrado"
fi


if grep -xq "$read6" numero_6; then
            echo -e "\nNumero $read6 encontrado"
            z1=$(cat numero_6 | egrep -x $read6 -n | cut -d ':' -f 1)
            xx=$(sed -n $z1' p' qtd_6)
            echo "Quantidade de vezes: $xx"
            xx2=$(wc -l log6 | cut -d ' ' -f1)
            xx3=$(echo "scale=4;($xx*100)/$xx2" | bc)
            echo $xx3 % de acerto
    else
            echo -e "\nNumero $read6 não encontrado"
fi
