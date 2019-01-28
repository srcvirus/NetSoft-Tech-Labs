#!/bin/bash
export OVX_HOME="$HOME/OpenVirteX"
python $OVX_HOME/utils/ovxctl.py -n createPort 1 00:00:00:00:00:00:00:01 1
python $OVX_HOME/utils/ovxctl.py -n createPort 1 00:00:00:00:00:00:00:01 2
python $OVX_HOME/utils/ovxctl.py -n createPort 1 00:00:00:00:00:00:00:03 1
python $OVX_HOME/utils/ovxctl.py -n createPort 1 00:00:00:00:00:00:00:03 3
python $OVX_HOME/utils/ovxctl.py -n createPort 1 00:00:00:00:00:00:00:06 1
python $OVX_HOME/utils/ovxctl.py -n createPort 1 00:00:00:00:00:00:00:06 3
