CFLAGS= `pkg-config --cflags Wand` -Wall -O2 -march=pentium4
LDFLAGS= `pkg-config --libs Wand` -lpthread -lm -ldl -s
apophnia: apophnia.o mongoose/mongoose.o cjson/cJSON.o 

package:
	make clean
	cd ../ && tar czf apophnia.tgz apophnia
clean:
	rm -rf *.o */*.o apophnia *~ */*.so */*.a
install:
	install image /usr/local/bin/
