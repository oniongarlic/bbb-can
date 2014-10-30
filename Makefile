all: BB-DCAN1-00A0.dtbo BB-DCAN0-00A0.dtbo

BB-DCAN1-00A0.dtbo: BB-DCAN1-00A0.dts
	dtc -O dtb -o BB-DCAN1-00A0.dtbo -b 0 -@ BB-DCAN1-00A0.dts

BB-DCAN0-00A0.dtbo: BB-DCAN0-00A0.dts
	dtc -O dtb -o BB-DCAN0-00A0.dtbo -b 0 -@ BB-DCAN0-00A0.dts

install: BB-DCAN1-00A0.dtbo BB-DCAN0-00A0.dtbo
	install -m 644 -o root -g root BB-DCAN1-00A0.dtbo /lib/firmware/
	install -m 644 -o root -g root BB-DCAN0-00A0.dtbo /lib/firmware/

clean:
	rm -f *.dtbo
