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
yarn test:
    insert("yarn test\n")
yarn pretty:
    insert("yarn prettier:fix\n")
yarn lint:
    insert("yarn eslint\n")
yarn pretty lint:
    insert("yarn eslint && yarn prettier:fix\n")
yarn story:
    insert("yarn storybook\n")