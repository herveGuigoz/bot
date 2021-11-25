# bot

Command Line Interface for Dart

---

## Install

```sh
dart pub global activate --overwrite --source git https://github.com/herveGuigoz/bot.git
```

---

## Uninstall

```sh
dart pub global deactivate bot
```

---

## Commands

### `bot release`

Upgrade versioning and commit changes.

This command will edit :
- `version` field in `pubspec.yaml` file
- `CHANGELOG.md` file with last commits
- `lib/version.dart` file.

```sh
Usage: bot release [arguments]
-h, --help       Print this usage information.
-v, --version    Define the next release number
-p, --path       Define the path to the project
-f, --force      Force updates
                 (defaults to "false")
    --commit     Commit changes
                 (defaults to "true")
```

### `bot tag`

Take the current version from pubspec file and create the new tag.

```sh
Usage: bot tag [arguments]
-h, --help    Print this usage information.
-p, --path    Define the path to the project
```
