for i in `seq 1 9`; do
	echo -e "Rodando Teste: $i"
	.././main < entradas/input-$i > resultado/output-$i
done
for i in `seq 1 9`; do
    echo -e "Comparing: $i"
    diff saidas/output-$i resultado/output-$i
done
for i in `seq 1 9`; do	
	rm -f resultado/output-$i
done