for i in `seq 1 20`; do	
	rm -f saidas/output-$i.out
done
for i in `seq 1 20`; do
	echo -e "Rodando Teste: $i"
	./main < in/entradas/input-$i.in > saidas/output-$i.out
done
for i in `seq 1 20`; do
    echo -e "Comparing: $i"
    diff saidas/output-$i.out resultado/$i.out
done
