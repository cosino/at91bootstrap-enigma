gcc_cortexa5=$(shell $(CC) --target-help | grep cortex-a5)

ifeq (, $(findstring cortex-a5,$(gcc_cortexa5)))
CPPFLAGS += -DCONFIG_ENIGMA

ASFLAGS += \
	-DCONFIG_ENIGMA
else
CPPFLAGS += \
	-DCONFIG_ENIGMA \
	-mcpu=cortex-a5 \
	-mtune=cortex-a5

ASFLAGS += \
	-DCONFIG_ENIGMA \
	-mcpu=cortex-a5
endif
