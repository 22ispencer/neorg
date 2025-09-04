return {
	"eraserhd/parinfer-rust",
	enabled = not os.getenv("WORK_NVIM"),
	build = "cargo build --release",
}
