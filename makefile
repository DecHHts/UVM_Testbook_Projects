#!/bin/csh
all: clean run

run:
	vcs -sverilog $(UVM_HOME)/src/dpi/uvm_dpi.cc -CFLAGS -DVCS -timescale=1ns/1ps -f ./filelist.f
	./simv

clean:
	rm -rf /home/ICer/heyuxuan_prjs/simple_prjs/csrc
	rm -rf /home/ICer/heyuxuan_prjs/simple_prjs/simv.daidir
	rm -rf /home/ICer/heyuxuan_prjs/simple_prjs/vc_hdrs.h
	rm -rf /home/ICer/heyuxuan_prjs/simple_prjs/ucli.key
	rm -rf /home/ICer/heyuxuan_prjs/simple_prjs/simv
	rm -rf /home/ICer/heyuxuan_prjs/simple_prjs/top_tb.vcs*
	rm -rf /home/ICer/heyuxuan_prjs/simple_prjssimv.vdb
