tag: terminal
-
yarn prod install <phrase>:
    insert("yarn add {phrase}")
yarn install <phrase>:
    insert("yarn add --dev {phrase}")
yarn install$:
    insert("yarn add --dev ")
yarn remove <phrase>:
    insert("yarn remove {phrase}")
yarn remove$:
    insert("yarn remove")
yarn run <phrase>:
    insert("yarn run ")
    insert(phrase)