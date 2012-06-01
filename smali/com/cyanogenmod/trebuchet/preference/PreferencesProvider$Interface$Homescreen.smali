.class public Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen;
.super Ljava/lang/Object;
.source "PreferencesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Homescreen"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen$Indicator;,
        Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen$Scrolling;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public static getCellCountX(Landroid/content/Context;I)I
    .locals 6
    .parameter "context"
    .parameter "def"

    .prologue
    .line 42
    const-string v3, "com.cyanogenmod.trebuchet_preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 43
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v3, "ui_homescreen_grid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, values:[Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 47
    .end local p1
    :goto_0
    return p1

    .line 46
    .restart local p1
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getCellCountY(Landroid/content/Context;I)I
    .locals 6
    .parameter "context"
    .parameter "def"

    .prologue
    const/4 v4, 0x0

    .line 51
    const-string v3, "com.cyanogenmod.trebuchet_preferences"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v3, "ui_homescreen_grid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, values:[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 56
    .end local p1
    :goto_0
    return p1

    .line 55
    .restart local p1
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getDefaultHomescreen(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "def"

    .prologue
    .line 38
    const-string v1, "com.cyanogenmod.trebuchet_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "ui_homescreen_default_screen"

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public static getHideIconLabels(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 78
    const-string v1, "com.cyanogenmod.trebuchet_preferences"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "ui_homescreen_general_hide_icon_labels"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getNumberHomescreens(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 34
    const-string v1, "com.cyanogenmod.trebuchet_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "ui_homescreen_screens"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getResizeAnyWidget(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 74
    const-string v1, "com.cyanogenmod.trebuchet_preferences"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "ui_homescreen_general_resize_any_widget"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getScreenPaddingHorizontal(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 65
    const-string v1, "com.cyanogenmod.trebuchet_preferences"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "ui_homescreen_screen_padding_horizontal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->getScreenDensity()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getScreenPaddingVertical(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 60
    const-string v1, "com.cyanogenmod.trebuchet_preferences"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "ui_homescreen_screen_padding_vertical"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->getScreenDensity()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getShowSearchBar(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 70
    const-string v1, "com.cyanogenmod.trebuchet_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "ui_homescreen_general_search"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method
