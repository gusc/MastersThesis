OBJS=DFT.o MCAPI_DFT_Core0.o

LDFLAGS = -lm -lc -L/usr/lib/gcc/arm-linux-gnueabihf/6.3.0 -lgcc
CFLAGS = -DBUILD_APP -DLOCAL_DFT -mcpu=arm1176jzf-s -mfloat-abi=hard -mfpu=vfp -O2

all: MCAPI_App

clean:
	rm $(OBJS) MCAPI_App

MCAPI_App: $(OBJS)
	$(LD) $(LDFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

