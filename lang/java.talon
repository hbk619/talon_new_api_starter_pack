code.language: java
-
variadic: insert("...")
logical and: insert(" && ")
logical or: insert(" || ")
state comment: insert("// ")
[line] comment <phrase>:
    edit.line_end()
    insert(" // ")
    insert(user.formatted_text(phrase, "sentence"))

private <phrase> [over]:
    insert("private ")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))
    insert("(")
    sleep(100ms)

public <phrase> name <phrase> [over]:
    insert("public ")
    insert(user.formatted_text(phrase_1, "PRIVATE_CAMEL_CASE"))
    insert(" ")
    insert(user.formatted_text(phrase_2, "PRIVATE_CAMEL_CASE"))
    insert("(")
    sleep(100ms)

protected <phrase> name <phrase> [over]:
    insert("protected ")
    insert(user.formatted_text(phrase_1, "PRIVATE_CAMEL_CASE"))
    insert(" ")
    insert(user.formatted_text(phrase_2, "PRIVATE_CAMEL_CASE"))
    insert("(")
    sleep(100ms)

state var: insert("var ")
variable <phrase> [over]:
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))
    sleep(100ms)

create variable <phrase> [over]:
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))
    insert(" = ")
    sleep(100ms)

assign <phrase> [over]:
    insert(" = ")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))
    sleep(100ms)

type <phrase> [over]:
    insert(user.formatted_text(phrase, "PUBLIC_CAMEL_CASE"))
    insert(" ")

state break: insert("break;")
state if: insert("if (")
if <phrase> [over]:
  insert("if (")
  insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))
state else if: insert("else if (")
else if <phrase> [over]:
    insert("else if (")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))

state else: insert("else {")
else <phrase> [over]:
    insert("else {")
    key("enter")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))

state while: insert("while (")
while <phrase> [over]:
    insert("while (")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))

state for: insert("for (")
for <phrase> [over]:
    insert("for (")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))

state switch: insert("switch (")
switch <phrase> [over]:
    insert("switch (")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))

state (const | constant): insert("const ")
constant <phrase> [over]:
    insert("const ")
    insert(user.formatted_text(phrase, "PUBLIC_CAMEL_CASE"))

state case: insert("case ")
state default: insert("default:")
case <phrase> [over]:
    insert("case ")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))
    insert(":")
state true: insert(" true ")
state false: insert(" false ")

state string: insert(" String ")
[state] (int | integer | ant): insert("int")
state slice: insert(" []")
slice of: insert("[]")
[state] (no | nil | null): insert("null")
state (int | integer | ant) 64: insert(" int64 ")

state return: insert(" return ")
return  <phrase> [over]:
    insert("return ")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))

state (air | err): insert("err")
error: insert(" err ")

item <phrase> [over]:
  insert(", ")
  insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))

value <phrase> [over]:
    insert(": ")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))
