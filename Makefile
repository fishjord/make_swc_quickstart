example.txt: data.txt
	./run_analysis data.txt > example.txt

data.txt: data.txt.gz
	gzip -d -c data.txt.gz > data.txt 

clean:
	rm data.txt example.txt