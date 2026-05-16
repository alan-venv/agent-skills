#!/usr/bin/env bash

set -euo pipefail

REPO_URL="https://github.com/alan-venv/agent-skills"
BRANCH="main"
DEST_DIR=".agents/skills"

die() {
  printf 'Error: %s\n' "$1" >&2
  exit 1
}

need() {
  command -v "$1" >/dev/null 2>&1 || die "required command not found: $1"
}

open_terminal() {
  if ! { exec 3<>/dev/tty; } 2>/dev/null; then
    die "an interactive terminal is required"
  fi
}

ask() {
  local prompt="$1"
  local answer=""

  printf '%s' "$prompt" >&3
  IFS= read -r answer <&3 || die "could not read from terminal"
  printf '%s' "$answer"
}

load_skills() {
  local skill_file=""
  local skill_dir=""

  skill_names=()
  skill_dirs=()

  while IFS= read -r skill_file; do
    skill_dir="${skill_file%/SKILL.md}"
    skill_names+=("${skill_dir##*/}")
    skill_dirs+=("$skill_dir")
  done < <(find "$extract_dir" -type f -path "*/skills/*/SKILL.md" | sort)

  [ "${#skill_names[@]}" -gt 0 ] || die "no skills were found"
}

choose_skill() {
  local choice=""
  local index=0

  printf '\nAvailable skills:\n' >&3
  for index in "${!skill_names[@]}"; do
    printf '  %d) %s\n' "$((index + 1))" "${skill_names[$index]}" >&3
  done

  while true; do
    choice="$(ask 'Choose a skill number: ')"

    if [[ "$choice" =~ ^[0-9]+$ ]] &&
      [ "$choice" -ge 1 ] &&
      [ "$choice" -le "${#skill_names[@]}" ]; then
      selected_index=$((choice - 1))
      return
    fi

    printf 'Invalid option: %s\n' "$choice" >&3
  done
}

need curl
need find
need mktemp
need tar
open_terminal

tmp_dir="$(mktemp -d)"
archive_file="$tmp_dir/repo.tar.gz"
extract_dir="$tmp_dir/extract"

cleanup() {
  rm -rf "$tmp_dir"
}
trap cleanup EXIT

mkdir -p "$extract_dir"

printf 'Downloading skills from %s...\n' "$REPO_URL"
curl -fsSL "$REPO_URL/archive/$BRANCH.tar.gz" -o "$archive_file" ||
  die "could not download skills"

tar -xzf "$archive_file" -C "$extract_dir" ||
  die "could not extract skills"

load_skills
choose_skill

skill_name="${skill_names[$selected_index]}"
source_dir="${skill_dirs[$selected_index]}"
install_dir="$DEST_DIR/$skill_name"

mkdir -p "$DEST_DIR"
rm -rf "$install_dir"
cp -R "$source_dir" "$install_dir"

printf 'Installed %s into %s\n' "$skill_name" "$install_dir"
