package main

import (
	// github.com/docker/machine
	"github.com/docker/machine/libmachine/drivers/plugin"
	"github.com/xom4ek/DockerMachineDriver/otc"
)

func main() {
	plugin.RegisterDriver(otc.NewDriver("", ""))
}
