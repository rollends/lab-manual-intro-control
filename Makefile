BUILD=build
DOCUMENT=ECE380-S2020-Lab-Manual.pdf
SECTIONS=Appendix-Simulink.tex Introduction.tex Lab-1.tex

all: $(BUILD) $(DOCUMENT)

clean:
	rm -rf $(BUILD)
	rm $(DOCUMENT)

# Make the build directory
$(BUILD):
	mkdir $(BUILD)

# PDF Build
ECE380-S2020-Lab-Manual.pdf: ECE380-S2020-Lab-Manual.tex Math.sty $(SECTIONS) images/
	cp -R $^ $(BUILD)/
	cd $(BUILD) && xelatex $<
	cd $(BUILD) && xelatex $<
	cd $(BUILD) && xelatex $<
	cp $(BUILD)/ECE380-S2020-Lab-Manual.pdf .

.PHONY: all clean
