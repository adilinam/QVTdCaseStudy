#!/bin/bash
#*******************************************************************************
# Copyright (c) 2013, 2015 Willink Transformations, University of York and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
#
# Contributors:
#     Adolfo Sanchez-Barbudo Herrera (Univerisity of York) - Initial API and implementation
#*******************************************************************************
if [ $# -ne 1 ]
then
   echo "usage example: ./renameMD5.sh RC1"
   exit;
fi

for i in *.md5
do
  iContent=`cat $i`
  newName=${i/$1/}
  newContent=${iContent/$1/}
  echo "Introducing $newContent into $newName"
  echo "$newContent" > "$newName"
  rm $i
done
