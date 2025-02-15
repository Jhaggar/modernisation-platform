locals {
  # GitHub usernames for the Modernisation Platform team maintainers
  # NB: Terraform shows a perputal difference in roles if someone is an organisation owner
  # and will attempt to change them from `maintainer` to `member`, so owners should go in here.
  maintainers = [
    "ewastempel",
    "jakemulley",
    "gfou-al", # George Fountopoulos
    "SteveMarshall",
    "davidkelliott"
  ]

  # GitHub usernames for CI users
  ci_users = [
    "modernisation-platform-ci"
  ]

  # All GitHub team maintainers
  all_maintainers = concat(local.maintainers, local.ci_users)

  # GitHub usernames for team members who don't need full AWS access
  general_members = [
    "ewastempel",
    "kcbotsh",
    "seanprivett",
    "SteveMarshall",
    "christine-elliott",
    "ScottSeaward",
  ]

  # GitHub usernames for engineers who need full AWS access
  engineers = [
    "davidkelliott",
    "ezman", # Fasih
    "jackstockley89",
    "jakemulley",
    "zuriguardiola",
    "stevelinden",
    "sobostion", # Seb Norris
    "pete-j-g",  # Piotr Grzeskowiak
    "adeweetman-al",
    "gfou-al", # George Fountopoulos,
    "dms1981"  # David Sibley
  ]

  # All members
  all_members = concat(local.general_members, local.engineers)

  # Everyone
  everyone = concat(local.all_maintainers, local.all_members)

  # Modernisation platform application teams (need to give access to environments repo as needed for github environments)
  # Hopefully we can get rid of this if this issue is resolved - https://github.com/ministryofjustice/operations-engineering/issues/139
  # But if not we will need to automate the updating of this list based on slugs in the environment json files.
  application_teams = [
    "all-org-members",
    "operations-engineering",
    "performance-hub-developers",
    "studio-webops",
    "cica",
    "xhibit-portal-dev",
    "ppud-replacement-devs"
  ]
}
