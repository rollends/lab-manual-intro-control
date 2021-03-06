BUILD=build
DOCUMENT=ECE380-Lab-Manual.pdf
SECTIONS=Appendix-Simulink.tex Introduction.tex Lab-1.tex Lab-2.tex Lab-3.tex Lab-4.tex Lab-5.tex

all: $(BUILD) $(DOCUMENT)

clean:
	rm -rf $(BUILD)
	rm $(DOCUMENT)

# Make the build directory
$(BUILD):
	mkdir $(BUILD)

# PDF Build
ECE380-Lab-Manual.pdf: ECE380-Lab-Manual.tex Math.sty $(SECTIONS) images/*
	cp -R $^ $(BUILD)/
	cd $(BUILD) && texfot xelatex -shell-escape $<
	cd $(BUILD) && texfot xelatex -shell-escape $<
	cd $(BUILD) && texfot xelatex -shell-escape $<
	cp $(BUILD)/ECE380-Lab-Manual.pdf .

.PHONY: all clean
