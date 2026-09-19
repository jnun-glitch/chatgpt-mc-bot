package dev.theobot.ui;

import net.minecraft.client.MinecraftClient;
import net.minecraft.client.gui.DrawContext;
import net.minecraft.client.gui.screen.Screen;
import net.minecraft.client.gui.widget.ButtonWidget;
import net.minecraft.text.Text;

public final class TheoBotScreen extends Screen {
    private static final int BG = 0xE90B1018;
    private static final int PANEL = 0xF0171D28;
    private static final int SIDEBAR = 0xFF202938;
    private static final int ACCENT = 0xFF56C8FF;
    private static final int TEXT = 0xFFF3F6FA;
    private static final int MUTED = 0xFF9AA8B8;

    private final Screen parent;
    private Page page = Page.HOME;

    public TheoBotScreen(Screen parent) {
        super(Text.literal("TheoBot"));
        this.parent = parent;
    }

    private enum Page {
        HOME,
        BOTS,
        MODES,
        DIFFICULTY,
        PROFILES,
        DEBUG
    }

    @Override
    protected void init() {
        clearChildren();

        int panelWidth = Math.min(840, width - 24);
        int panelHeight = Math.min(440, height - 36);
        int panelX = Math.max(12, width / 2 - panelWidth / 2);
        int panelY = Math.max(18, height / 2 - panelHeight / 2);

        int sidebarWidth = 142;
        int contentX = panelX + sidebarWidth + 24;
        int contentY = panelY + 58;
        int contentWidth = panelWidth - sidebarWidth - 42;
        int buttonWidth = Math.min(235, Math.max(175, (contentWidth - 12) / 2));

        addNavButton("Bots", panelX + 10, panelY + 54, sidebarWidth - 20, Page.BOTS);
        addNavButton("Modes", panelX + 10, panelY + 88, sidebarWidth - 20, Page.MODES);
        addNavButton("Difficulty", panelX + 10, panelY + 122, sidebarWidth - 20, Page.DIFFICULTY);
        addNavButton("Profiles", panelX + 10, panelY + 156, sidebarWidth - 20, Page.PROFILES);
        addNavButton("Debug", panelX + 10, panelY + 190, sidebarWidth - 20, Page.DEBUG);

        addDrawableChild(
            ButtonWidget.builder(Text.literal("Close"), button -> close())
                .dimensions(panelX + 10, panelY + panelHeight - 34, sidebarWidth - 20, 24)
                .build()
        );

        buildPage(contentX, contentY, buttonWidth);
    }

    private void addNavButton(String text, int x, int y, int width, Page target) {
        addDrawableChild(
            ButtonWidget.builder(Text.literal(text), button -> {
                page = target;
                clearAndInit();
            }).dimensions(x, y, width, 26).build()
        );
    }

    private void addAction(String text, int x, int y, int width, String command) {
        addDrawableChild(
            ButtonWidget.builder(Text.literal(text), button -> execute(command))
                .dimensions(x, y, width, 28)
                .build()
        );
    }

    private void buildPage(int x, int y, int buttonWidth) {
        int gap = 12;
        int right = x + buttonWidth + gap;

        switch (page) {
            case HOME -> {
                addAction("Spawn TheoBot", x, y + 18, buttonWidth, "function theobot:bot/spawn");
                addAction("Spawn 5 Bots", right, y + 18, buttonWidth, "function theobot:bot/spawn_all");
                addAction("Training Bot", x, y + 54, buttonWidth, "function theobot:bot/spawn_training");
                addAction("Training x5", right, y + 54, buttonWidth, "function theobot:bot/spawn_training_all");
                addAction("Follow Mode", x, y + 108, buttonWidth, "function theobot:config/mode/follow");
                addAction("Wander Mode", right, y + 108, buttonWidth, "function theobot:config/mode/wander");
            }
            case BOTS -> {
                addAction("Spawn 1", x, y + 18, buttonWidth, "function theobot:bot/spawn");
                addAction("Spawn 5", right, y + 18, buttonWidth, "function theobot:bot/spawn_all");
                addAction("Training 1", x, y + 54, buttonWidth, "function theobot:bot/spawn_training");
                addAction("Training 5", right, y + 54, buttonWidth, "function theobot:bot/spawn_training_all");
                addAction("Reset Bots", x, y + 108, buttonWidth, "function theobot:bot/reset");
                addAction("Remove Bots", right, y + 108, buttonWidth, "function theobot:bot/remove_all");
            }
            case MODES -> {
                addAction("AUTO", x, y + 18, buttonWidth, "function theobot:config/mode/auto");
                addAction("FOLLOW", right, y + 18, buttonWidth, "function theobot:config/mode/follow");
                addAction("TRAINING", x, y + 54, buttonWidth, "function theobot:config/mode/training");
                addAction("WANDER", right, y + 54, buttonWidth, "function theobot:config/mode/wander");
                addAction("STOP", x, y + 90, buttonWidth, "function theobot:config/mode/stop");
            }
            case DIFFICULTY -> {
                addAction("EASY", x, y + 18, buttonWidth, "function theobot:config/difficulty/easy");
                addAction("NORMAL", right, y + 18, buttonWidth, "function theobot:config/difficulty/normal");
                addAction("HARD", x, y + 54, buttonWidth, "function theobot:config/difficulty/hard");
                addAction("CUSTOM", right, y + 54, buttonWidth, "function theobot:config/difficulty/custom");
            }
            case PROFILES -> {
                addAction("BALANCED", x, y + 18, buttonWidth, "function theobot:config/profile/balanced");
                addAction("AGGRESSIVE", right, y + 18, buttonWidth, "function theobot:config/profile/aggressive");
                addAction("DEFENSIVE", x, y + 54, buttonWidth, "function theobot:config/profile/defensive");
                addAction("MOBILE", right, y + 54, buttonWidth, "function theobot:config/profile/mobile");
                addAction("PASSIVE", x, y + 90, buttonWidth, "function theobot:config/profile/passive");
            }
            case DEBUG -> {
                addAction("Status", x, y + 18, buttonWidth, "function theobot:debug/status");
                addAction("State", right, y + 18, buttonWidth, "function theobot:debug/state");
                addAction("Target", x, y + 54, buttonWidth, "function theobot:debug/target");
                addAction("Path", right, y + 54, buttonWidth, "function theobot:debug/path");
                addAction("Clear", x, y + 90, buttonWidth, "function theobot:debug/clear");
            }
        }
    }

    private void execute(String command) {
        if (client != null && client.getNetworkHandler() != null) {
            client.getNetworkHandler().sendCommand(command);
        }
    }

    @Override
    public void render(DrawContext context, int mouseX, int mouseY, float delta) {
        context.fill(0, 0, width, height, BG);

        int panelWidth = Math.min(840, width - 24);
        int panelHeight = Math.min(440, height - 36);
        int panelX = Math.max(12, width / 2 - panelWidth / 2);
        int panelY = Math.max(18, height / 2 - panelHeight / 2);
        int sidebarWidth = 142;

        context.fill(panelX, panelY, panelX + panelWidth, panelY + panelHeight, PANEL);
        context.fill(panelX, panelY, panelX + 4, panelY + panelHeight, ACCENT);
        context.fill(panelX + 4, panelY, panelX + sidebarWidth, panelY + panelHeight, SIDEBAR);

        context.drawTextWithShadow(textRenderer, "TheoBot Control Center",
            panelX + sidebarWidth + 20, panelY + 15, TEXT);
        context.drawTextWithShadow(textRenderer, pageLabel(),
            panelX + sidebarWidth + 20, panelY + 31, ACCENT);
        context.drawTextWithShadow(textRenderer,
            "1.21.11 • HeroBot datapack controller",
            panelX + sidebarWidth + 20, panelY + 45, MUTED);

        super.render(context, mouseX, mouseY, delta);
    }

    private String pageLabel() {
        return switch (page) {
            case HOME -> "Overview";
            case BOTS -> "Bot Management";
            case MODES -> "Behaviour Modes";
            case DIFFICULTY -> "Difficulty";
            case PROFILES -> "Profiles";
            case DEBUG -> "Diagnostics";
        };
    }

    @Override
    public void close() {
        MinecraftClient.getInstance().setScreen(parent);
    }

    @Override
    public boolean shouldPause() {
        return false;
    }
}
