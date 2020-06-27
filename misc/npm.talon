tag: terminal
-
node prod install <phrase>:
    insert("npm install --save {phrase}")
node install <phrase>:
    insert("npm install --save-dev {phrase}")
node install$:
    insert("npm install --save-dev ")
node remove <phrase>:
    insert("npm remove {phrase}")
node remove$:
    insert("npm remove")
node run <phrase>:
    insert("npm run ")
    insert(phrase)