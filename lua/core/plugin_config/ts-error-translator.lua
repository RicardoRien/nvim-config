local status_ok, ts_error_translator = pcall(require,  "ts-error-translator")
if not status_ok then
  return
end

ts_error_translator.setup {
  auto_override_publish_diagnostics = true,
}
