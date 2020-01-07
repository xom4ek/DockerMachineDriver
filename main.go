package main

import (
	"github.com/docker/machine/libmachine/drivers/plugin"
	"github.com/opentelekomcloud/DockerMachineDriver/otc"
)

func main() {
	plugin.RegisterDriver(otc.NewDriver("", ""))
}
