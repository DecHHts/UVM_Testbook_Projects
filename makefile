#!/bin/csh
all: clean run

run:
	vcs -sverilog $(UVM_HOME)/src/dpi/uvm_dpi.cc -CFLAGS -DVCS -timescale=1ns/1ps -f ./filelist.f
	./simv

clean:
	rm -rf /home/ICer/heyuxuan_prjs/UVM_Testbook_Projects/csrc
	rm -rf /home/ICer/heyuxuan_prjs/UVM_Testbook_Projects/simv.daidir
	rm -rf /home/ICer/heyuxuan_prjs/UVM_Testbook_Projects/vc_hdrs.h
	rm -rf /home/ICer/heyuxuan_prjs/UVM_Testbook_Projects/ucli.key
	rm -rf /home/ICer/heyuxuan_prjs/UVM_Testbook_Projects/simv
	rm -rf /home/ICer/heyuxuan_prjs/UVM_Testbook_Projects/top_tb.vcs*
	rm -rf /home/ICer/heyuxuan_prjs/UVM_Testbook_Projects/simv.vdb
