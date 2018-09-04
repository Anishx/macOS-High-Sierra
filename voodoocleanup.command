#!/bin/bash

//kcrebuild.bash

echo "So, I am guessing that Voodoo is gone?"
echo "Last step..."

sudo chown root:admin /
sudo kextcache -system-prelinked-kernel
sudo kextcache -system-caches

echo "Rebuild attempt complete."
echo "Bye!"

exit
 