# Readme
This code-snippet allows to monitor the CPU-Temperature via the *Ganglia Metric Tool* (gmetric)

# Installation
Repeat this for all of your Raspberry Pi Nodes
* Check if `vcgencmd` is installed
* Copy the script to a directory (e.g. /opt/bin) on your Raspberry Pi Ganglia Nodes
* Make it executable
  ```
  # chmod 755 /opt/bin/gmetric_rpi_temp.sh
  ```
* Add the following line to `/etc/crontab`
  ```
  **/1 * * * *	pi	/opt/bin/gmetric_rpi_temp.sh
  ```

# Check
The graph should be visible after some minutes in your Ganglia Webfrontend
* Select a Raspberry Pi node
* Check if a 'no_group metrics' exist

![no_metrics group](https://pixelchrome.org/images/ganglia_group.png)

# Aggregate Graphs
You can combine the all of the Graphs in the 'Aggregate Graphs' Tab

![aggregate graphs](https://pixelchrome.org/images/ganglia_aggregate_graphs.png)
