VERILOG = iverilog
TARGET = test0519.vcd

$(TARGET) : test0519.vvp
	vvp test0519.vvp

test0519.vvp: test0519_tb.v test0519.v
	$(VERILOG) -o test0519.vvp test0519_tb.v test0519.v

clean:
	-del $(TARGET)