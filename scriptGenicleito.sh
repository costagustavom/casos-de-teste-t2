for i in `seq 1 10`; do
        echo -e "Rodando Teste: $i"
        ../a.out < entradas/input-$i > saidas/genicleito/output-$i
done

for i in `seq 1 10`; do
    echo -e "Comparing: $i"
    diff saidas/genicleito/output-$i saidas/jonathan/output-$i
done
