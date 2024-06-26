<!-- insert
---
title: "Hugo APT Repository"
type: "_default"
layout: "single"
---
end_insert -->
<!-- Powered by https://cj.rs/riss -->
<!-- remove -->
# Hugo APT Repository
<!-- end_remove -->

[![Build and Deploy Pages](https://github.com/8hobbies/hugo-apt/actions/workflows/pages.yml/badge.svg)](https://github.com/8hobbies/hugo-apt/actions/workflows/pages.yml)
[![GitLab Mirror](https://img.shields.io/badge/GitLab-mirror-blue?logo=gitlab)](https://gitlab.com/8hobbies/hugo-apt)
[![](https://img.shields.io/badge/powered%20by-riss-lightgrey)](https://cj.rs/riss)

[Homepage](https://hugo-apt.8hob.io) | [GitHub](https://github.com/8hobbies/hugo-apt)

An unofficial [APT][] repository that contains the latest [Hugo][] for [Debian][], [Ubuntu][], and
other [Debian derivatives][].

This APT repository, while unofficial, hosts the official extended deb files available from the
[Hugo release page][]. This APT repository refreshes daily around 1am UTC time. It supports [AMD64][]
and [ARM64][].

## Usage

1. Install the APT repository:

```bash
echo 'deb [signed-by=/etc/apt/keyrings/hugo.gpg] https://hugo-apt.8hob.io latest main' | sudo tee /etc/apt/sources.list.d/hugo.list
```

2. Trust the signing key:

```bash
sudo mkdir -p /etc/apt/keyrings && sudo wget -O /etc/apt/keyrings/hugo.gpg https://hugo-apt.8hob.io/signing-key
```

3. Install the latest official Hugo:

```bash
sudo apt update && sudo apt install hugo
```

## How is this Repository Built?

The scripts that generate the APT repository are available on [GitHub][]. The execution of the
scripts is defined in a [GitHub Workflow][], which regularly deploys the APT repository to [GitHub
Pages][].

## Contributing

Source code is available on [GitHub][].

To report a bug, visit the [issue tracker][]. To send your contribution, open a [pull request][].

## License

This license applies to this project, not the Hugo project.

```
Copyright 2024 8 Hobbies, LLC <hong@8hobbies.com>

Licensed under the Apache License, Version 2.0(the "License");
you may not use files in this project except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

This APT repository redistributes Hugo under the same license as the Hugo project. Unless required
by applicable law or agreed to in writing, this APT repository distributes Hugo on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See [Hugo's License][] the
specific language governing permissions and limitations under the License.

[AMD64]: https://en.wikipedia.org/wiki/X86-64
[APT]: https://wiki.debian.org/Apt
[ARM64]: https://en.wikipedia.org/wiki/AArch64
[Debian derivatives]: https://www.debian.org/derivatives/
[Debian]: https://www.debian.org/
[GitHub Pages]: https://pages.github.com/
[GitHub Workflow]: https://github.com/8hobbies/hugo-apt/blob/master/.github/workflows/pages.yml
[GitHub]: https://github.com/8hobbies/hugo-apt
[Hugo release page]: https://github.com/gohugoio/hugo/releases
[Hugo's License]: https://github.com/gohugoio/hugo/blob/master/LICENSE
[Hugo]: https://gohugo.io
[Ubuntu]: https://ubuntu.com/
[issue tracker]: https://github.com/8hobbies/hugo-apt/issues
[pull request]: https://github.com/8hobbies/hugo-apt/pulls
