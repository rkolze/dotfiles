-- For LOMBOK to work, you need to execute these commands:
-- mkdir -p ~/.local/share/java
-- curl -L -o ~/.local/share/java/lombok.jar https://projectlombok.org/downloads/lombok.jar

local ok, jdtls = pcall(require, "jdtls")
if not ok then
	return
end

local root_dir = require("jdtls.setup").find_root({
	".git",
	"mvnw",
	"gradlew",
	"pom.xml",
	"build.gradle",
	"settings.gradle",
	"settings.gradle.kts",
	"build.gradle.kts",
})

if not root_dir then
	return
end

local project_name = vim.fn.fnamemodify(root_dir, ":p:h:t")
local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspace/" .. project_name

local jdtls_bin = vim.fn.stdpath("data") .. "/mason/bin/jdtls"
local lombok_path = vim.fn.expand("~/.local/share/java/lombok.jar")

jdtls.start_or_attach({
	cmd = {
		jdtls_bin,

		"--jvm-arg=-javaagent:" .. lombok_path,
		"--jvm-arg=-Xbootclasspath/a:" .. lombok_path,

		"-data",
		workspace_dir,
	},

	root_dir = root_dir,

	settings = {
		java = {
			configuration = {
				updateBuildConfiguration = "interactive",
			},
			import = {
				maven = {
					enabled = true,
				},
				gradle = {
					enabled = true,
				},
			},
			maven = {
				downloadSources = true,
			},
		},
	},
})
