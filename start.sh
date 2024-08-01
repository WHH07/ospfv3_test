#run frr
for((i=0;i<5;i++)); do
	docker exec -i t"${i}" /usr/lib/frr/frrinit.sh start
done
