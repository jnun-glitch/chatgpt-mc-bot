package dev.theobot.ui;

import com.mojang.blaze3d.platform.InputConstants;
import net.fabricmc.api.ClientModInitializer;
import net.fabricmc.fabric.api.client.command.v2.ClientCommandManager;
import net.fabricmc.fabric.api.client.command.v2.ClientCommandRegistrationCallback;
import net.fabricmc.fabric.api.client.event.lifecycle.v1.ClientTickEvents;
import net.fabricmc.fabric.api.client.keybinding.v1.KeyBindingHelper;
import net.minecraft.client.MinecraftClient;
import net.minecraft.client.option.KeyBinding;
import net.minecraft.client.util.InputUtil;
import net.minecraft.text.Text;
import net.minecraft.util.Identifier;

public final class TheoBotUiClient implements ClientModInitializer {
    public static final String MOD_ID = "theobot-ui";

    private static final KeyBinding OPEN_MENU = KeyBindingHelper.registerKeyBinding(
        new KeyBinding(
            "key.theobot-ui.open_menu",
            InputUtil.Type.KEYSYM,
            InputConstants.KEY_O,
            KeyBinding.Category.create(Identifier.of(MOD_ID, "main"))
        )
    );

    @Override
    public void onInitializeClient() {
        ClientTickEvents.END_CLIENT_TICK.register(client -> {
            while (OPEN_MENU.wasPressed()) {
                open(client);
            }
        });

        ClientCommandRegistrationCallback.EVENT.register((dispatcher, registryAccess) ->
            dispatcher.register(
                ClientCommandManager.literal("theobotui").executes(context -> {
                    open(MinecraftClient.getInstance());
                    return 1;
                })
            )
        );
    }

    private static void open(MinecraftClient client) {
        if (client.player == null) {
            return;
        }

        client.setScreen(new TheoBotScreen(client.currentScreen));
        client.player.sendMessage(Text.literal("TheoBot UI geöffnet."), true);
    }
}
