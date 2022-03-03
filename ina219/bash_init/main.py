import os
import click


@click.command()
@click.option('--reads', '--r', prompt='Number of readings',  default=1, help='Number of readings.')
def hello(reads):
    """Simple program that shows the power, voltage and current draw of a 5V fan."""
    for x in range(reads):
        voltage = file_read('in1_input')
        current = file_read('curr1_input')
        power = file_read('power1_input')

        # True Voltage reading
        voltage_true = float(voltage) / 1000

        # True Current reading
        current_true = float(current) / 1000

        # True Power reading
        power_true = float(power) / 1000000

        click.echo('\n' + 'Voltage: ' + str(voltage_true))
        click.echo('Current: ' + str(current_true))
        click.echo('Power: ' + str(power_true))
def file_read(thing):
    with open(r'/sys/bus/i2c/devices/i2c-1/1-0040/hwmon/hwmon2/' + thing) as files:
        return files.read()


os.system('sudo bash test.sh')
hello()
