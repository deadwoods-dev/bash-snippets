declare -a UNWIND

defer() {
    UNWIND=("$*" "${UNWIND[@]}")
}
setup_unwind() {
    trap 'for i in "${UNWIND[@]}"; do eval "$i"; done' EXIT
}
