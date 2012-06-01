.class public Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Drawer;
.super Ljava/lang/Object;
.source "PreferencesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Drawer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Drawer$Indicator;,
        Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Drawer$Scrolling;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public static getJoinWidgetsApps(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 114
    const-string v1, "com.cyanogenmod.trebuchet_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "ui_drawer_widgets_join_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method
