BUILD=build
DOCUMENT=ECE380-S2020-Lab-Manual.pdf

all: $(BUILD) $(DOCUMENT)

clean:
	rm -rf $(BUILD)
	rm $(DOCUMENT)

# Make the build directory
$(BUILD):
	mkdir $(BUILD)

# PDF Build
$(BUILD)/ECE380-S2020-Lab-Manual.pdf: ECE380-S2020-Lab-Manual.tex images/
	cp -R $^ $(BUILD)/
	cd $(BUILD) && xelatex $<
	cd $(BUILD) && xelatex $<
	cd $(BUILD) && xelatex $<

# Copy build out if successful.
%.pdf: $(BUILD)/%.pdf
	cp $< $@


.PHONY: all clean
