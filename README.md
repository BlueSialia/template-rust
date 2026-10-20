# [Project name]

[![Hippocratic License HL3-BOD-CL-ECO-FFD-LAW-MEDIA-MIL-MY-SV-TAL-USTA-XUAR](https://img.shields.io/static/v1?label=Hippocratic%20License&message=HL3-BOD-CL-ECO-FFD-LAW-MEDIA-MIL-MY-SV-TAL-USTA-XUAR&labelColor=5e2751&color=bc8c3d)](https://firstdonoharm.dev/version/3/0/bod-cl-eco-ffd-law-media-mil-my-sv-tal-usta-xuar.html)

---

[One-sentence description of the project.]

For more details on the project structure and design, see the [ADR](ADR.md) document.

## Feature Coverage

<details>
<summary>Feature checklist</summary>

Test functions are tagged with `#feature <ID>`.

> `[x]` tested &nbsp; `[ ]` supported, no test yet &nbsp; `[-]` not supported

### Category 1

- [ ] `[CAT1-ShortName]` — [Name]

</details>

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See [Install](#install) for notes on how to install the project on a live system.

### Prerequisites

- Rust 1.99.1 ([rustup](https://rustup.rs) or [mise](https://mise.jdx.dev))
- Nix with flakes enabled (optional, for the reproducible development shell)

### Setup

Clone the repository, enable the local Git hooks, and build:

```sh
git clone git@github.com:BlueSialia/[repository name]
cd [repository name]
./setup-hooks.sh
cargo build
```

In the repository settings, enable **Settings → Actions → General → Workflow permissions → “Allow GitHub Actions to create and approve pull requests”** so the release workflow can open its automated pull request.

With Nix and direnv:

```sh
direnv allow
```

Otherwise, enter the development shell with `nix develop`.

### Running

```sh
cargo run
```

Or run the built binary directly:

```sh
./target/release/[package name]
```

## Running the Tests

### Unit Tests

You can run the unit tests with:

```bash
cargo test --workspace --lib --bins
```

Unit tests are located in each source file (inline `#[cfg(test)]` modules).

### Integration Tests

You can run the integration tests with:

```sh
cargo test --workspace --test integration
```

Integration tests live in the `tests/` directory.

### E2E Tests

You can run the E2E tests with:

```sh
[command to run E2E tests]
```

[Explanation of their location]

### Linting

On top of it you should also periodically run the linter with:

```sh
cargo clippy --all-targets --all-features -- -D warnings
```

And verify that the documentation builds without warnings:

```sh
RUSTDOCFLAGS="-D warnings" cargo doc --all-features --no-deps
```

### Coding Style

In order to maintain a similar style over the codebase we use:

```sh
cargo fmt --all -- --check
```

## Install

[Describe how to install or deploy the project, if applicable.]

## Built With

| Dependency | Purpose |
|---|---|
| [Rust](https://rust-lang.org/) | Application language |
| [Cargo](https://doc.rust-lang.org/cargo/) | The Rust package manager |

## Automations

Local Git hooks enforce Conventional Commits. CI runs formatting, Clippy, tests, documentation, unused-dependency, and security checks. Binary size reporting and release publishing are also automated.

See [AUTOMATIONS.md](AUTOMATIONS.md) for more information and details.

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](https://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/BlueSialia/[repository name]/tags).

## Authors

* **Jorge Domínguez** - *Initial work* - [BlueSialia](https://github.com/BlueSialia)

See also the list of [contributors](https://github.com/BlueSialia/[repository name]/contributors) who participated in this project.

## License

This project is licensed under the Hippocratic License 3.0 - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

None yet.
