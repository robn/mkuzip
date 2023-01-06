PROG = mkuzip

OBJS = mkuzip.o mkuz_blockcache.o mkuz_lzma.o mkuz_zlib.o mkuz_conveyor.o \
       mkuz_blk.o mkuz_fqueue.o mkuz_time.o mkuz_insize.o mkuz_zstd.o

CFLAGS = -Wall -Werror -O2
LDFLAGS = -lbsd -lpthread -lz -llzma -lzstd

all: $(PROG)

$(PROG): $(OBJS)
	$(CC) -o $(PROG) $(OBJS) $(LDFLAGS)

clean:
	rm -f $(PROG) $(OBJS)
