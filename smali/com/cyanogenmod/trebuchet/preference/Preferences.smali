.class public Lcom/cyanogenmod/trebuchet/preference/Preferences;
.super Landroid/preference/PreferenceActivity;
.source "Preferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v5, 0x7f050001

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/preference/Preferences;->addPreferencesFromResource(I)V

    .line 39
    const-string v5, "com.cyanogenmod.trebuchet_preferences"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/cyanogenmod/trebuchet/preference/Preferences;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 41
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 42
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "preferences_changed"

    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 47
    const-string v5, "ui_homescreen"

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/preference/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 48
    .local v2, homescreen:Landroid/preference/PreferenceGroup;
    const-string v5, "ui_homescreen_grid"

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/preference/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 49
    const-string v5, "ui_homescreen_screen_padding_vertical"

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/preference/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 50
    const-string v5, "ui_homescreen_screen_padding_horizontal"

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/preference/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 51
    const-string v5, "ui_homescreen_indicator"

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/preference/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 53
    const-string v5, "ui_drawer"

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/preference/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 54
    .local v0, drawer:Landroid/preference/PreferenceGroup;
    const-string v5, "ui_drawer_indicator"

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/preference/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 57
    .end local v0           #drawer:Landroid/preference/PreferenceGroup;
    .end local v2           #homescreen:Landroid/preference/PreferenceGroup;
    :cond_0
    const-string v5, "application_version"

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/preference/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 58
    .local v4, version:Landroid/preference/Preference;
    const v5, 0x7f090002

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/preference/Preferences;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method
