from talon import Module, Context, actions, ui, imgui, settings

ctx = Context()
ctx.matches = r"""
mode: user.ruby
mode: command 
and code.language: ruby
"""

mod = Module()
@mod.action_class
class Actions:

    def code_private_function_with_args(text: str):
        """Inserts function declaration with arguments"""

    def code_private_function_question(text: str):
        """Inserts function declaration with question"""

    def code_private_function_with_args_question(text: str):
        """Inserts function declaration with args and question"""


@ctx.action_class("user")
class user_actions:
    def code_insert_function(text: str, selection: str):
        if selection:
            text = text + "({})".format(selection)
        else:
            text = text + "()"

        actions.user.paste(text)
        actions.edit.left()

    def code_private_function(text: str):
        """Inserts private function declaration"""
        print("i am a ruby func")
        result = "def {}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_private_function_formatter")
            )
        )

        actions.user.paste(result)

    def code_private_function_question(text: str):
        """Inserts private function declaration"""
        print("i am a ruby func")
        result = "def {}?".format(
            actions.user.formatted_text(
                text, settings.get("user.code_private_function_formatter")
            )
        )

        actions.user.paste(result)

    def code_private_function_with_args(text: str):
        actions.user.code_private_function(text)
        actions.insert("(")

    def code_private_function_with_args_question(text: str):
        actions.user.code_private_function_question(text)
        actions.insert("(")
        actions.key("end enter up end left")
