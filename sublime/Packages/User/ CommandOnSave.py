import sublime
import sublime_plugin
import subprocess


class CommandOnSaveListener(sublime_plugin.EventListener):

    def on_post_save(self, view):
        window = view.window()
        settings = view.settings().get('command_on_save', None)

        if settings is None:
            return

        command = []

        for cmd in settings:
            command.append(
                sublime.expand_variables(cmd, window.extract_variables()))

        try:
            subprocess.run(args=command)
        except Exception as e:
            sublime.error_message(e)
