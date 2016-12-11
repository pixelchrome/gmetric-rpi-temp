
#!/bin/sh
TEMPERATURE=`vcgencmd measure_temp|grep -o '[0-9]\+.[0-9]'`
gmetric  --units C --name CPU-Temperature --type float --value ${TEMPERATURE}
