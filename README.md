# Augur NEW Release v0.43.9
[![first-timers-only](https://img.shields.io/badge/first--timers--only-friendly-blue.svg?style=flat-square)](https://www.firsttimersonly.com/) We follow the [First Timers Only](https://www.firsttimersonly.com/) philosophy of tagging issues for first timers only, and walking one newcomer through the resolution process weekly. [You can find these issues tagged with "first timers only" on our issues list.](https://github.com/chaoss/augur/labels/first-timers-only).


### Design Description:
* Display and Sort by Number of Repos on Groups Page: https://github.com/CadenHicks/Group_1_Semester_Project/issues/7

* Add Filter Functionality to Table on Repos Page: https://github.com/CadenHicks/Group_1_Semester_Project/issues/5

Augur is now releasing a dramatically improved new version to the main branch. It is also available here: https://github.com/chaoss/augur/releases/tag/v0.43.9
- The `main` branch is a stable version of our new architecture, which features:
  - Dramatic improvement in the speed of large scale data collection (10,000+ repos). All data is obtained for 10k+ repos within a week
  - A new job management architecture that uses Celery and Redis to manage queues, and enables users to run a Flower job monitoring dashboard
  - Materialized views to increase the snappiness of API’s and Frontends on large scale data
  - Changes to primary keys, which now employ a UUID strategy that ensures unique keys across all Augur instances
  - Support for https://github.com/chaoss/sandiego-rh dashboards (view a sample here: https://eightknot.osci.io/). (beautification coming soon!)
  - Data collection completeness assurance enabled by a structured, relational data set that is easily compared with platform API Endpoints
- The next release of the new version will include a hosted version of Augur where anyone can create an account and add repos “they care about”. If the hosted instance already has a requested organization or repository it will be added to a user’s view. If its a new repository or organization, the user will be notified that collection will take (time required for the scale of repositories added). 

* Add Project Health Description to Repos Page: https://github.com/CadenHicks/Group_1_Semester_Project/issues/4

* Add Project Health Description to Insights Page: https://github.com/CadenHicks/Group_1_Semester_Project/issues/3

* Adding Trending Tab: https://github.com/CadenHicks/Group_1_Semester_Project/issues/1

We gather trace data for a group of repositories, normalize it into our data model, and provide a variety of metrics about said data. The structure of our data model enables us to synthesize data across various platforms to provide meaningful context for meaningful questions about the way these communities evolve.
Augur’s main focus is to measure the overall health and sustainability of open source projects, as these types of projects are system critical for nearly every software organization or company. We do this by gathering data about project repositories and normalizing that into our data model to provide useful metrics about your project’s health. For example, one of our metrics is Burstiness. Burstiness – how are short timeframes of intense activity, followed by a corresponding return to a typical pattern of activity, observed in a project?

This can paint a picture of a project’s focus and gain insight into the potential stability of a project and how its typical cycle of updates occurs. 

We are a [CHAOSS](https://chaoss.community) project, and many of our
metrics are implementations of the metrics defined by our awesome community. You can find a full list of them [here](https://chaoss.community/metrics/).

For more information on [how to get involved on the CHAOSS website](https://chaoss.community/participate/).

## Collecting Data

Augur supports Python3.6 through Python3.9 on all platforms. Python3.10 and above do not yet work because of machine learning worker dependencies. On OSX, you can create a Python 3.9 environment this way: `python3.9 -m venv path/to/venv`.

Augur's main focus is to measure the overall health and sustainability of open source projects.

Augur collects more data about open source software projects than any other available software. Augur's main focus is to measure the overall health and sustainability of open source projects.
One of Augur's core tenets is a desire to openly gather data that people can trust, and then provide useful and well-defined metrics that help give important context to the larger stories being told by that data. We do this in a variety of ways, one of which is doing all our own data collection in house. We currently collect data from a few main sources:

1. Raw Git commit logs (commits, contributors)
2. GitHub's API (issues, pull requests, contributors, releases, repository metadata)
3. The Linux Foundation's [Core Infrastructure Initiative](https://www.coreinfrastructure.org/) API (repository metadata)
4. [Succinct Code Counter](https://github.com/boyter/scc), a blazingly fast Sloc, Cloc, and Code tool that also performs COCOMO calculations

This data is collected by dedicated data collection workers controlled by Augur, each of which is responsible for querying some subset of these data sources. We are also hard at work building workers for new data sources. If you have an idea for a new one, [please tell us](https://github.com/chaoss/augur/issues/new?template=feature_request.md) - we'd love your input!


## Getting Started

If you're interested in collecting data with our tool, the Augur team has worked hard to develop a detailed guide to get started with our project which can be found [in our documentation](https://oss-augur.readthedocs.io/en/main/getting-started/toc.html).

If you're looking to contribute to Augur's code, you can find installation instructions, development guides, architecture references (coming soon), best practices and more in our [developer documentation](https://oss-augur.readthedocs.io/en/main/development-guide/toc.html). Please know that while it's still rather sparse right now,
but we are actively adding to it all the time. If you get stuck, please feel free to [ask for help](https://github.com/chaoss/augur/issues/new)!

## Contributing

To contribute to Augur, please follow the guidelines found in our [CONTRIBUTING.md](CONTRIBUTING.md) and our [Code of Conduct](CODE_OF_CONDUCT.md). Augur is a welcoming community that is open to all, regardless if you're working on your 1000th contribution to open source or your 1st. We strongly believe that much of what makes open source so great is the incredible communities it brings together, so we invite you to join us!

## License, Copyright, and Funding

Copyright © 2023 University of Nebraska at Omaha, University of Missouri, Brian Warner, and the CHAOSS Project.

Augur is free software: you can redistribute it and/or modify it under the terms of the MIT License as published by the Open Source Initiative. See the [LICENSE](LICENSE) file for more details.

This work has been funded through the Alfred P. Sloan Foundation, Mozilla, The Reynolds Journalism Institute, contributions from VMWare, Red Hat Software, Grace Hopper's Open Source Day, GitHub, Microsoft, Twitter, Adobe, the Gluster Project, Open Source Summit (NA/Europe), and the Linux Foundation Compliance Summit. Significant design contributors include Kate Stewart, Dawn Foster, Duane O'Brien, Remy Decausemaker, others omitted due to the  memory limitations of project maintainers, and 15 Google Summer of Code Students.
