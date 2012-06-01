.class public Lcom/cyanogenmod/trebuchet/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# instance fields
.field private final mCoordinates:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/InstallShortcutReceiver;->mCoordinates:[I

    return-void
.end method

.method private static findEmptyCell(Landroid/content/Context;[II)Z
    .locals 19
    .parameter "context"
    .parameter "xy"
    .parameter "screen"

    .prologue
    .line 91
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getCellCountX()I

    move-result v4

    .line 92
    .local v4, xCount:I
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getCellCountY()I

    move-result v5

    .line 93
    .local v5, yCount:I
    filled-new-array {v4, v5}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    .line 95
    .local v6, occupied:[[Z
    invoke-static/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v12

    .line 98
    .local v12, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ItemInfo;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 99
    .local v11, item1:Lcom/cyanogenmod/trebuchet/ItemInfo;
    move-object v10, v11

    .line 100
    .local v10, item:Lcom/cyanogenmod/trebuchet/ItemInfo;
    iget-wide v1, v10, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    const-wide/16 v17, -0x64

    cmp-long v1, v1, v17

    if-nez v1, :cond_0

    .line 101
    iget v1, v10, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    move/from16 v0, p2

    if-ne v1, v0, :cond_0

    .line 102
    iget v7, v10, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    .line 103
    .local v7, cellX:I
    iget v8, v10, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    .line 104
    .local v8, cellY:I
    iget v13, v10, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanX:I

    .line 105
    .local v13, spanX:I
    iget v14, v10, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanY:I

    .line 106
    .local v14, spanY:I
    move v15, v7

    .local v15, x:I
    :goto_0
    add-int v1, v7, v13

    if-ge v15, v1, :cond_0

    if-ge v15, v4, :cond_0

    .line 107
    move/from16 v16, v8

    .local v16, y:I
    :goto_1
    add-int v1, v8, v14

    move/from16 v0, v16

    if-ge v0, v1, :cond_1

    move/from16 v0, v16

    if-ge v0, v5, :cond_1

    .line 108
    aget-object v1, v6, v15

    const/4 v2, 0x1

    aput-boolean v2, v1, v16

    .line 107
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 106
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 115
    .end local v7           #cellX:I
    .end local v8           #cellY:I
    .end local v10           #item:Lcom/cyanogenmod/trebuchet/ItemInfo;
    .end local v11           #item1:Lcom/cyanogenmod/trebuchet/ItemInfo;
    .end local v13           #spanX:I
    .end local v14           #spanY:I
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v1

    return v1
.end method

.method private installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 16
    .parameter "context"
    .parameter "data"
    .parameter "screen"

    .prologue
    .line 52
    const-string v2, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 54
    .local v15, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/InstallShortcutReceiver;->mCoordinates:[I

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v2, v1}, Lcom/cyanogenmod/trebuchet/InstallShortcutReceiver;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 55
    const-string v2, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    .line 56
    .local v14, intent:Landroid/content/Intent;
    if-eqz v14, :cond_5

    .line 57
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 58
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    :cond_0
    const-string v2, "duplicate"

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 64
    .local v12, duplicate:Z
    if-nez v12, :cond_1

    move-object/from16 v0, p1

    invoke-static {v0, v15, v14}, Lcom/cyanogenmod/trebuchet/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 65
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/cyanogenmod/trebuchet/LauncherApplication;

    .line 66
    .local v11, app:Lcom/cyanogenmod/trebuchet/LauncherApplication;
    invoke-virtual {v11}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->getModel()Lcom/cyanogenmod/trebuchet/LauncherModel;

    move-result-object v2

    const-wide/16 v5, -0x64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v4, 0x0

    aget v8, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v4, 0x1

    aget v9, v3, v4

    const/4 v10, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v10}, Lcom/cyanogenmod/trebuchet/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    move-result-object v13

    .line 69
    .local v13, info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    if-eqz v13, :cond_2

    .line 70
    const v2, 0x7f09001e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 80
    .end local v11           #app:Lcom/cyanogenmod/trebuchet/LauncherApplication;
    .end local v13           #info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :goto_0
    const/4 v2, 0x1

    .line 87
    .end local v12           #duplicate:Z
    .end local v14           #intent:Landroid/content/Intent;
    :goto_1
    return v2

    .line 73
    .restart local v11       #app:Lcom/cyanogenmod/trebuchet/LauncherApplication;
    .restart local v12       #duplicate:Z
    .restart local v13       #info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .restart local v14       #intent:Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 76
    .end local v11           #app:Lcom/cyanogenmod/trebuchet/LauncherApplication;
    .end local v13           #info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :cond_3
    const v2, 0x7f090020

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 83
    .end local v12           #duplicate:Z
    .end local v14           #intent:Landroid/content/Intent;
    :cond_4
    const v2, 0x7f09001c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 87
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "data"

    .prologue
    .line 37
    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    :cond_0
    return-void

    .line 41
    :cond_1
    invoke-static {}, Lcom/cyanogenmod/trebuchet/Launcher;->getScreen()I

    move-result v1

    .line 43
    .local v1, screen:I
    invoke-direct {p0, p1, p2, v1}, Lcom/cyanogenmod/trebuchet/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    .line 46
    if-eq v0, v1, :cond_2

    invoke-direct {p0, p1, p2, v0}, Lcom/cyanogenmod/trebuchet/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
