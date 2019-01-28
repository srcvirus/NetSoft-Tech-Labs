#!/bin/bash
export OVX_HOME="$HOME/OpenVirteX"
python $OVX_HOME/utils/ovxctl.py -n createNetwork tcp:localhost:7000 10.0.0.0 16
