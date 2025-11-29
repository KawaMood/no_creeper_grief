# **No Creeper Grief**

**No blocks griefing & Still damage entities**

Creepers will still damage entities when they blast, but won't break blocks anymore.

> [!WARNING]  
> **This presentation concerns the latest available version of the data pack for Minecraft 1.21.9 to 1.21.10.**  
> To find the most recent version, check the [main](https://github.com/KawaMood/no_creeper_grief) branch.  
> For other versions, check other [branches](https://github.com/KawaMood/no_creeper_grief/branches/all).

# 🪄Introduction

## What is No Creeper Grief?

This is my shot among very popular no-mob-grief-like data packs you can find on the web.
Difference with this one is that creepers will still damage entities when they blast, but won't break blocks anymore. Most of other data packs just completely cancel creepers explosions.

# ⚙️Settings

No Creeper Grief involves two modes:

- The **Safe** mode which is the mode enabled by default. This mode will guarantee creepers to not grief blocks, since it detects the explosion itself. Only constraint is that creepers will emit black particles when they blast.
- The **Proper** mode, that use creepers behavior rules to predict when they explode, are killed, or just despawn. This mode can be considered safe enough in normal playing condition, it can only fail in very rare contexts, like, people igniting the creeper just before changing dimension. With this mode, the advantage is that creepers won't emit black particles when they blast.

You can use this command to set a mode:

```
/function pk_no_cr:settings/mode/set {mode:"<mode>"}
```

Where `<mode>` can be either `safe` or `proper`:

```
/function pk_no_cr:settings/mode/set {mode:"safe"}
/function pk_no_cr:settings/mode/set {mode:"proper"}
```

You can also check which mode is currently used with this command:

```
/function pk_no_cr:settings/mode/get
```

# 🧹 Uninstall

Waystones comes with an automatic uninstallation process. Running it will:

- Remove all waystones that have been placed in your world, in every dimensions
- Remove all scores and storage specific to the No Creeper Grief data pack
- If there is no more KawaMood data packs installed, also remove all common scores and storages

The uninstalling process may take some seconds to complete. Be sure to wait for the message telling you that you can safely remove the data pack from your world's folder before doing it.

The command to start the uninstalling process is the following one:

```
/function pk_no_cr:cmd/uninstall
```

# 🪠 Report an issue

If you encountered an issue with this data pack, preferably join the [Discord server](https://discord.com/invite/w8s9XWgN6v), and open a post in the dedicated **#data-pack-issues** channel to describe your problem. Please, don't forget to provide all necessary informations including:

- The Minecraft version you're using.
- The version of the concerned data pack you're using.
- If you're using any modified version like Forge, Paper or Spigot.
- If you do, the plugins or mods you're using that may alter the functioning of data packs.
- The list of other data packs you're using, if you have others.
- A clear description of your issue, and a way to reproduce it.
- If necessary, a video or a screenshot of the issue in game.

Before doing that, please read the F.A.Q. section just above. The issue you're facing may be a common one, and a way to fix it may already have been provided in it.

# 📌 Other links

Thank you for using Anti Creeper Grief! It makes me happy to know people are enjoying it.
If you want to support its development and the development of other data packs, you can support me on my other social networks:

- [Youtube](https://www.youtube.com/@KawaMood/)
- [Modrinth](https://modrinth.com/user/KawaMood/)
- [Planet Minecraft](https://www.planetminecraft.com/member/kawamood/)
- Or if you're in a generous mood, I accept donation on [paypal](https://paypal.me/KawaMood) or [buy me a kawa](https://www.buymeacoffee.com/kawamood) (slang term for "coffee")!
