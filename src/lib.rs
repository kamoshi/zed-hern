use zed_extension_api::{self as zed, LanguageServerId, Result};

struct HernExtension;

impl zed::Extension for HernExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        let path = worktree
            .which("hern")
            .ok_or_else(|| "hern not found in PATH".to_string())?;

        Ok(zed::Command {
            command: path,
            args: vec!["lsp".to_string()],
            env: vec![],
        })
    }
}

zed::register_extension!(HernExtension);
