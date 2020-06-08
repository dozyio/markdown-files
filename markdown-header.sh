#!/bin/bash

cd markdown-files || exit 0
for f in *; do echo "---" > /tmp/tmpout; echo "title: $f" >> /tmp/tmpout; echo "published: true" >> /tmp/tmpout; echo "---" >> /tmp/tmpout; cat $f >> /tmp/tmpout; mv /tmp/tmpout $f; done
