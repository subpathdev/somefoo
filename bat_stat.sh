#!/bin/bash

batstat=$(acpi)
ratpoison -c "echo $batstat"
