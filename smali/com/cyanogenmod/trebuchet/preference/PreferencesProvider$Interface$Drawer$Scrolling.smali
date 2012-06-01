.class public Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Drawer$Scrolling;
.super Ljava/lang/Object;
.source "PreferencesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Drawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Scrolling"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFadeInAdjacentScreens(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 124
    const-string v1, "com.cyanogenmod.trebuchet_preferences"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "ui_drawer_scrolling_fade_adjacent_screens"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getTransitionEffect(Landroid/content/Context;Ljava/lang/String;)Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;
    .locals 3
    .parameter "context"
    .parameter "def"

    .prologue
    .line 119
    const-string v1, "com.cyanogenmod.trebuchet_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "ui_drawer_scrolling_transition_effect"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->valueOf(Ljava/lang/String;)Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    move-result-object v1

    return-object v1
.end method
