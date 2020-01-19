variable "aws-profile" {

}

variable "s3_bucket_name" {
  type = "list"
  default = ["bankbranchimage", "dingi-documentation", "dingimap-sdk",
    "dingitiles", "dingitraffic", "enterprisevts-new", "fleet.dingi.tech.new",
    "hajjapp", "handyxfiles-new", "dingiuserprofileimage",
  "dingiweb", "serviceandshopimage", "verifiedpoiimage"]
}
