#!/bin/bash
export OVX_HOME="$HOME/OpenVirteX"
python $OVX_HOME/utils/ovxctl.py -n createSwitch 1 00:00:00:00:00:00:00:01
python $OVX_HOME/utils/ovxctl.py -n createSwitch 1 00:00:00:00:00:00:00:03
python $OVX_HOME/utils/ovxctl.py -n createSwitch 1 00:00:00:00:00:00:00:06
