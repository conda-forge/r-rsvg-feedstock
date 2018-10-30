#!/bin/bash

mv DESCRIPTION DESCRIPTION.old
grep -v '^Priority: ' DESCRIPTION.old > DESCRIPTION

export PKG_CONFIG_PATH=${PREFIX}/lib/pkgconfig
$R CMD INSTALL --build .
