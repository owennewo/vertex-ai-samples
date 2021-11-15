#!/bin/bash
set -v
echo "Arguments passed to run.sh are:"
 for i; do 
    echo " - $i" 
 done

sleep 5

# lets have a look at param3 which is an inputPath i.e. the value is stored in the file path
echo "reading param3 from path $6, value is $(cat $6)" 


echo "Writing output1 to path $8, but first we need to create folder $(dirname $8)"
mkdir -p $(dirname $8)
# now echo some content to the output file
echo "This text will be written to path $(dirname $8)" > $8

#echo "output2 is $9"

if [ -n "${10}" ]; then
  echo "Output 2 is set to ${10}!"
  echo -e "field1,field2\n0.1,2.0\n3.1,3.0\n" > ${10}

else
  echo "Output 2 not set."
fi

if [ -n "${12}" ]; then
  echo "Output 3 is set to ${12}!"
  echo -e "<h1>This is a header</h1>\n<div style="color:blue">This is the content</div>" > ${12}

else
  echo "Output 3 not set."
fi

if [ -n "${14}" ]; then
  echo "Output 4 is set to ${14}!"
  echo -e '{"metrics": [{"name": "accuracy-score", "numberValue": 0.9, "format": "PERCENTAGE" }] }' > ${14}

else
  echo "Output 4 not set."
fi

sleep 5
