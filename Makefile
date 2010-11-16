RM=rm -rf
TARGET=main




.PHONY:	clean clean-all



clean:
	$(RM) *.out *.aux *.log *.toc *.dvi *~
	$(RM) _region_.* *.prv/ auto/

clean-all: clean
	$(RM) $(TARGET).pdf