package test

import (
	"fmt"

	"testing"
	"time"

	http_helper "github.com/gruntwork-io/terratest/modules/http-helper"
	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestAlbShouldGet404ByDefault(t *testing.T) {

	t.Parallel()

	opts := &terraform.Options{
		TerraformDir: "../examples/alb",

		Vars: map[string]interface{}{
			"alb_name": fmt.Sprintf("test-%s", random.UniqueId()),
		},
	}

	defer terraform.Destroy(t, opts)

	terraform.InitAndApply(t, opts)

	albDnsName := terraform.OutputRequired(t, opts, "alb_dns_name")
	http_helper.HttpGetWithRetry(
		t,
		fmt.Sprintf("http://%s", albDnsName),
		nil,
		404,
		"404: Not Found",
		30,
		300*time.Second,
	)

}
