.class public Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$General;
.super Ljava/lang/Object;
.source "PreferencesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "General"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoRotate(Landroid/content/Context;Z)Z
    .locals 3
    .parameter "context"
    .parameter "def"

    .prologue
    .line 150
    const-string v1, "com.cyanogenmod.trebuchet_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "ui_general_orientation"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method
