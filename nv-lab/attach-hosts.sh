#!/bin/bash
export OVX_HOME="~/OpenVirteX"
python $OVX_HOME/utils/ovxctl.py -n connectHost 1 00:a4:23:05:00:00:00:02 1 00:00:00:00:00:01
python $OVX_HOME/utils/ovxctl.py -n connectHost 1 00:a4:23:05:00:00:00:03 1 00:00:00:00:00:05
