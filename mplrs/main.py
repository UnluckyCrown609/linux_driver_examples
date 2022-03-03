import os
import click


@click.command()
@click.option('--reads', '--r', prompt='Number of readings',  default=1, help='Number of readings.')
def hello(reads):

    for x in range(reads):
        pressure = file_read('in_pressure_input')
        temp = file_read('in_temp_input')
        humidity = file_read('in_humidityrelative_input')
        resistance = file_read('in_resistance_input')

        click.echo('\n' + 'pressure: ' + str(pressure))
        click.echo('temp: ' + str(temp))
        click.echo('humidity: ' + str(humidity))
        click.echo('resistance: ' + str(resistance))


def file_read(thing):
    with open(r'/sys/bus/i2c/devices/1-0077/iio:device0/' + thing) as files:
        return files.read()


os.system('sudo bash run.sh')
hello()
