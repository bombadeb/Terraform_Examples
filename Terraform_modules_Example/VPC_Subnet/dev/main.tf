module "my_vpc" {
  source = "../modules/vpc"
}

module "subnets" {
  source = "../modules/subnets"
  vpc_id = "${module.my_vpc.my_vpc_id}"
}
