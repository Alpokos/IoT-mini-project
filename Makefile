APPLICATION = pressure_data_app

BOARD ?= iotlab-m3
RIOTBASE ?= $(CURDIR)/../RIOT

USEMODULE += periph_i2c
USEMODULE += lps331ap
USEMODULE += xtimer
# Add any other flags, settings, etc. needed for compilation
#CFLAGS += -std=c11

include $(RIOTBASE)/Makefile.include
