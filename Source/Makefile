OBJS=Benchmark.o UART.o DFT.o Radix2FFT.o Main.o

LDFLAGS = -lm -lc -L/usr/lib/gcc/arm-linux-gnueabihf/6.3.0 -lgcc
CFLAGS = -DBUILD_APP -DUSE_UART -DUSE_FFT -mcpu=arm1176jzf-s -mfloat-abi=hard -mfpu=vfp -O2

all: MCAPI_App

clean:
	rm $(OBJS) MCAPI_App

MCAPI_App: $(OBJS)
	$(LD) $(LDFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

