#!/usr/bin/env bash

# visual studio code. a la `subl`
function code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCodeInsiders" --args $*; }
