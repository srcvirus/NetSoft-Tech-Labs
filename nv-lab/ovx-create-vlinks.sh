#!/bin/bash
export OVX_HOME="$HOME/OpenVirteX"
python $OVX_HOME/utils/ovxctl.py -n connectLink 1 00:a4:23:05:00:00:00:01 1 00:a4:23:05:00:00:00:02 2 spf 0
python $OVX_HOME/utils/ovxctl.py -n connectLink 1 00:a4:23:05:00:00:00:01 2 00:a4:23:05:00:00:00:03 2 spf 0

