.class Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private mMaxId:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, -0x1

    .line 211
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 208
    iput-wide v3, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 212
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 213
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 217
    iget-wide v0, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mMaxId:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 220
    :cond_0
    return-void
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J
    .locals 14
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "intent"

    .prologue
    .line 834
    const-wide/16 v4, -0x1

    .line 836
    .local v4, id:J
    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 837
    .local v8, packageName:Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 841
    .local v1, className:Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v8, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    .local v2, cn:Landroid/content/ComponentName;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 849
    .local v6, info:Landroid/content/pm/ActivityInfo;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v4

    .line 850
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 851
    const/high16 v10, 0x1020

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 853
    const-string v10, "intent"

    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v10, "title"

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v10, "itemType"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    const-string v10, "spanX"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 857
    const-string v10, "spanY"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 858
    const-string v10, "_id"

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 859
    const-string v10, "favorites"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    #calls: Lcom/cyanogenmod/trebuchet/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {p1, v10, v11, v0}, Lcom/cyanogenmod/trebuchet/LauncherProvider;->access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    .line 860
    const-wide/16 v10, -0x1

    .line 866
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v6           #info:Landroid/content/pm/ActivityInfo;
    :goto_1
    return-wide v10

    .line 843
    :catch_0
    move-exception v7

    .line 844
    .local v7, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 846
    .local v9, packages:[Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-direct {v2, v10, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    .restart local v2       #cn:Landroid/content/ComponentName;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .restart local v6       #info:Landroid/content/pm/ActivityInfo;
    goto/16 :goto_0

    .line 862
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v6           #info:Landroid/content/pm/ActivityInfo;
    .end local v7           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9           #packages:[Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 863
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "Launcher.LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to add favorite: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-wide v10, v4

    .line 866
    goto :goto_1
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z
    .locals 7
    .parameter "db"
    .parameter "values"
    .parameter "cn"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 954
    const/4 v0, 0x0

    .line 955
    .local v0, allocatedAppWidgets:Z
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 958
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :try_start_0
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 960
    .local v1, appWidgetId:I
    const-string v4, "itemType"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 961
    const-string v4, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 962
    const-string v4, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 963
    const-string v4, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 964
    const-string v4, "_id"

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 965
    const-string v4, "favorites"

    const/4 v5, 0x0

    #calls: Lcom/cyanogenmod/trebuchet/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {p1, v4, v5, p2}, Lcom/cyanogenmod/trebuchet/LauncherProvider;->access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 967
    const/4 v0, 0x1

    .line 969
    invoke-virtual {v2, v1, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    .end local v1           #appWidgetId:I
    :goto_0
    return v0

    .line 970
    :catch_0
    move-exception v3

    .line 971
    .local v3, ex:Ljava/lang/RuntimeException;
    const-string v4, "Launcher.LauncherProvider"

    const-string v5, "Problem allocating appWidgetId"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z
    .locals 13
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"

    .prologue
    .line 921
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 922
    .local v11, packageName:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 924
    .local v7, className:Ljava/lang/String;
    if-eqz v11, :cond_0

    if-nez v7, :cond_1

    .line 925
    :cond_0
    const/4 v1, 0x0

    .line 949
    :goto_0
    return v1

    .line 928
    :cond_1
    const/4 v10, 0x1

    .line 929
    .local v10, hasPackage:Z
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v11, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    .local v4, cn:Landroid/content/ComponentName;
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    :goto_1
    if-eqz v10, :cond_2

    .line 944
    const/4 v1, 0x6

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 945
    .local v5, spanX:I
    const/4 v1, 0x7

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .local v6, spanY:I
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 946
    invoke-direct/range {v1 .. v6}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v1

    goto :goto_0

    .line 932
    .end local v5           #spanX:I
    .end local v6           #spanY:I
    :catch_0
    move-exception v8

    .line 933
    .local v8, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 935
    .local v12, packages:[Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    .end local v4           #cn:Landroid/content/ComponentName;
    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-direct {v4, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    .restart local v4       #cn:Landroid/content/ComponentName;
    const/4 v1, 0x0

    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 938
    :catch_1
    move-exception v9

    .line 939
    .local v9, e1:Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_1

    .line 949
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #e1:Ljava/lang/Exception;
    .end local v12           #packages:[Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 6
    .parameter "db"
    .parameter "values"

    .prologue
    const/4 v4, 0x2

    .line 913
    new-instance v3, Landroid/content/ComponentName;

    const-string v0, "com.android.alarmclock"

    const-string v1, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, cn:Landroid/content/ComponentName;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    .line 915
    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method private addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 6
    .parameter "db"
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    .line 870
    const-string v2, "itemType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 871
    const-string v2, "spanX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 872
    const-string v2, "spanY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 873
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v0

    .line 874
    .local v0, id:J
    const-string v2, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 875
    const-string v2, "favorites"

    const/4 v3, 0x0

    #calls: Lcom/cyanogenmod/trebuchet/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {p1, v2, v3, p2}, Lcom/cyanogenmod/trebuchet/LauncherProvider;->access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 876
    const-wide/16 v0, -0x1

    .line 878
    .end local v0           #id:J
    :cond_0
    return-wide v0
.end method

.method private addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 6
    .parameter "db"
    .parameter "values"

    .prologue
    .line 908
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v3

    .line 909
    .local v3, cn:Landroid/content/ComponentName;
    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method private addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J
    .locals 12
    .parameter "db"
    .parameter "values"
    .parameter "a"

    .prologue
    .line 979
    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 981
    .local v5, r:Landroid/content/res/Resources;
    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 982
    .local v1, iconResId:I
    const/16 v8, 0x9

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 985
    .local v6, titleResId:I
    const/4 v7, 0x0

    .line 987
    .local v7, uri:Ljava/lang/String;
    const/16 v8, 0xa

    :try_start_0
    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 988
    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 994
    .local v4, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    if-nez v6, :cond_2

    .line 995
    :cond_0
    const-string v8, "Launcher.LauncherProvider"

    const-string v9, "Shortcut is missing title or icon resource ID"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-wide/16 v2, -0x1

    .line 1014
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-wide v2

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v8, "Launcher.LauncherProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Shortcut has malformed uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 999
    .end local v0           #e:Ljava/net/URISyntaxException;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v2

    .line 1000
    .local v2, id:J
    const/high16 v8, 0x1000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1001
    const-string v8, "intent"

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v8, "title"

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v8, "itemType"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1004
    const-string v8, "spanX"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1005
    const-string v8, "spanY"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1006
    const-string v8, "iconType"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1007
    const-string v8, "iconPackage"

    iget-object v9, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const-string v8, "iconResource"

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string v8, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1011
    const-string v8, "favorites"

    const/4 v9, 0x0

    #calls: Lcom/cyanogenmod/trebuchet/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {p1, v8, v9, p2}, Lcom/cyanogenmod/trebuchet/LauncherProvider;->access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 1012
    const-wide/16 v2, -0x1

    goto/16 :goto_0
.end method

.method private convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9
    .parameter "db"

    .prologue
    const/4 v8, 0x0

    .line 274
    const/4 v6, 0x0

    .line 276
    .local v6, converted:Z
    const-string v2, "content://settings/old_favorites?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 278
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 282
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 288
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 290
    :try_start_1
    invoke-direct {p0, p1, v7}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-lez v2, :cond_2

    const/4 v6, 0x1

    .line 292
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 295
    if-eqz v6, :cond_0

    .line 296
    invoke-virtual {v0, v1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 300
    :cond_0
    if-eqz v6, :cond_1

    .line 303
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 306
    :cond_1
    return v6

    .line 290
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 292
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 283
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 21
    .parameter "db"

    .prologue
    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v12

    .line 619
    .local v12, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v3, 0x3

    new-array v13, v3, [I

    fill-array-data v13, :array_0

    .line 625
    .local v13, bindSources:[I
    const-string v3, "itemType"

    invoke-static {v3, v13}, Lcom/cyanogenmod/trebuchet/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v6

    .line 627
    .local v6, selectWhere:Ljava/lang/String;
    const/4 v14, 0x0

    .line 629
    .local v14, c:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 632
    :try_start_0
    const-string v4, "favorites"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "itemType"

    aput-object v7, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 637
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 638
    .local v20, values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 639
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 640
    .local v16, favoriteId:J
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    .line 644
    .local v18, favoriteType:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v11

    .line 650
    .local v11, appWidgetId:I
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->clear()V

    .line 651
    const-string v3, "itemType"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 652
    const-string v3, "appWidgetId"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    const/16 v3, 0x3e9

    move/from16 v0, v18

    if-ne v0, v3, :cond_2

    .line 656
    const-string v3, "spanX"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    const-string v3, "spanY"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 664
    .local v19, updateWhere:Ljava/lang/String;
    const-string v3, "favorites"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 666
    const/16 v3, 0x3e8

    move/from16 v0, v18

    if-ne v0, v3, :cond_4

    .line 667
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.alarmclock"

    const-string v5, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 678
    .end local v11           #appWidgetId:I
    .end local v19           #updateWhere:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 679
    .local v15, ex:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem allocating appWidgetId"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 684
    .end local v15           #ex:Ljava/lang/RuntimeException;
    .end local v16           #favoriteId:J
    .end local v18           #favoriteType:I
    .end local v20           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v15

    .line 685
    .local v15, ex:Landroid/database/SQLException;
    :try_start_3
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 687
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 688
    if-eqz v14, :cond_1

    .line 689
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 692
    .end local v15           #ex:Landroid/database/SQLException;
    :cond_1
    :goto_2
    return-void

    .line 659
    .restart local v11       #appWidgetId:I
    .restart local v16       #favoriteId:J
    .restart local v18       #favoriteType:I
    .restart local v20       #values:Landroid/content/ContentValues;
    :cond_2
    :try_start_4
    const-string v3, "spanX"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 660
    const-string v3, "spanY"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 687
    .end local v11           #appWidgetId:I
    .end local v16           #favoriteId:J
    .end local v18           #favoriteType:I
    .end local v20           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 688
    if-eqz v14, :cond_3

    .line 689
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3

    .line 670
    .restart local v11       #appWidgetId:I
    .restart local v16       #favoriteId:J
    .restart local v18       #favoriteType:I
    .restart local v19       #updateWhere:Ljava/lang/String;
    .restart local v20       #values:Landroid/content/ContentValues;
    :cond_4
    const/16 v3, 0x3ea

    move/from16 v0, v18

    if-ne v0, v3, :cond_5

    .line 671
    :try_start_5
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.camera"

    const-string v5, "com.android.camera.PhotoAppWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 674
    :cond_5
    const/16 v3, 0x3e9

    move/from16 v0, v18

    if-ne v0, v3, :cond_0

    .line 675
    invoke-direct/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v12, v11, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 683
    .end local v11           #appWidgetId:I
    .end local v16           #favoriteId:J
    .end local v18           #favoriteType:I
    .end local v19           #updateWhere:Ljava/lang/String;
    :cond_6
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    .line 687
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 688
    if-eqz v14, :cond_1

    .line 689
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 619
    :array_0
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
        0xe9t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 28
    .parameter "db"
    .parameter "c"

    .prologue
    .line 310
    const-string v24, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 311
    .local v14, idIndex:I
    const-string v24, "intent"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 312
    .local v15, intentIndex:I
    const-string v24, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 313
    .local v20, titleIndex:I
    const-string v24, "iconType"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 314
    .local v13, iconTypeIndex:I
    const-string v24, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 315
    .local v10, iconIndex:I
    const-string v24, "iconPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 316
    .local v11, iconPackageIndex:I
    const-string v24, "iconResource"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 317
    .local v12, iconResourceIndex:I
    const-string v24, "container"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 318
    .local v6, containerIndex:I
    const-string v24, "itemType"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 319
    .local v16, itemTypeIndex:I
    const-string v24, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 320
    .local v19, screenIndex:I
    const-string v24, "cellX"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 321
    .local v4, cellXIndex:I
    const-string v24, "cellY"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 322
    .local v5, cellYIndex:I
    const-string v24, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 323
    .local v22, uriIndex:I
    const-string v24, "displayMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 325
    .local v7, displayModeIndex:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v18, v0

    .line 326
    .local v18, rows:[Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 327
    .local v8, i:I
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 328
    new-instance v23, Landroid/content/ContentValues;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/content/ContentValues;-><init>(I)V

    .line 329
    .local v23, values:Landroid/content/ContentValues;
    const-string v24, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 330
    const-string v24, "intent"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v24, "title"

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v24, "iconType"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string v24, "icon"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 334
    const-string v24, "iconPackage"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v24, "iconResource"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v24, "container"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string v24, "itemType"

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v24, "appWidgetId"

    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    const-string v24, "screen"

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    const-string v24, "cellX"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    const-string v24, "cellY"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    const-string v24, "uri"

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v24, "displayMode"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    aput-object v23, v18, v8

    move v8, v9

    .line 345
    .end local v9           #i:I
    .restart local v8       #i:I
    goto/16 :goto_0

    .line 347
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 348
    const/16 v21, 0x0

    .line 350
    .local v21, total:I
    :try_start_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v17, v0

    .line 351
    .local v17, numValues:I
    const/4 v8, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    .line 352
    const-string v24, "favorites"

    const/16 v25, 0x0

    aget-object v26, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    #calls: Lcom/cyanogenmod/trebuchet/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {v0, v1, v2, v3}, Lcom/cyanogenmod/trebuchet/LauncherProvider;->access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-gez v24, :cond_1

    .line 353
    const/16 v21, 0x0

    .line 360
    .end local v21           #total:I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 363
    :goto_2
    return v21

    .line 355
    .restart local v21       #total:I
    :cond_1
    add-int/lit8 v21, v21, 0x1

    .line 351
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 358
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    .end local v17           #numValues:I
    :catchall_0
    move-exception v24

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v24
.end method

.method private getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    .line 895
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 896
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    .line 897
    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez v4, :cond_0

    move-object v2, v5

    .line 904
    :goto_0
    return-object v2

    .line 898
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 899
    .local v3, provider1:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v2, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 900
    .local v2, provider:Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .end local v2           #provider:Landroid/content/ComponentName;
    .end local v3           #provider1:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    move-object v2, v5

    .line 904
    goto :goto_0
.end method

.method private getSearchWidgetProvider()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 883
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 885
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 886
    .local v0, searchComponent:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 887
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_0
.end method

.method private initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 6
    .parameter "db"

    .prologue
    .line 594
    const-string v4, "SELECT MAX(_id) FROM favorites"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 597
    .local v0, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 598
    .local v3, maxIdIndex:I
    const-wide/16 v1, -0x1

    .line 599
    .local v1, id:J
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 600
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 602
    :cond_0
    if-eqz v0, :cond_1

    .line 603
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 606
    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_2

    .line 607
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error: could not query max id"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 610
    :cond_2
    return-wide v1
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 37
    .parameter "db"
    .parameter "workspaceResourceId"

    .prologue
    .line 701
    new-instance v8, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v8, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 702
    .local v8, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 705
    .local v5, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 706
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    const/16 v26, 0x0

    .line 708
    .local v26, i:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v30

    .line 709
    .local v30, parser:Landroid/content/res/XmlResourceParser;
    invoke-static/range {v30 .. v30}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v16

    .line 710
    .local v16, attrs:Landroid/util/AttributeSet;
    const-string v3, "favorites"

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 712
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v19

    .line 716
    .local v19, depth:I
    :cond_0
    :goto_0
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v34

    .local v34, type:I
    const/4 v3, 0x3

    move/from16 v0, v34

    if-ne v0, v3, :cond_1

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move/from16 v0, v19

    if-le v3, v0, :cond_3

    :cond_1
    const/4 v3, 0x1

    move/from16 v0, v34

    if-eq v0, v3, :cond_3

    .line 718
    const/4 v3, 0x2

    move/from16 v0, v34

    if-ne v0, v3, :cond_0

    .line 722
    const/4 v15, 0x0

    .line 723
    .local v15, added:Z
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v29

    .line 725
    .local v29, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/cyanogenmod/trebuchet/R$styleable;->Favorite:[I

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 727
    .local v6, a:Landroid/content/res/TypedArray;
    const-wide/16 v17, -0x64

    .line 728
    .local v17, container:J
    const/4 v3, 0x2

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 729
    const/4 v3, 0x2

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 732
    :cond_2
    const/4 v3, 0x3

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 733
    .local v31, screen:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 734
    .local v35, x:Ljava/lang/String;
    const/4 v3, 0x5

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 739
    .local v36, y:Ljava/lang/String;
    const-wide/16 v3, -0x65

    cmp-long v3, v17, v3

    if-nez v3, :cond_4

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 741
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Invalid screen position for hotseat item"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 821
    .end local v6           #a:Landroid/content/res/TypedArray;
    .end local v15           #added:Z
    .end local v16           #attrs:Landroid/util/AttributeSet;
    .end local v17           #container:J
    .end local v19           #depth:I
    .end local v29           #name:Ljava/lang/String;
    .end local v30           #parser:Landroid/content/res/XmlResourceParser;
    .end local v31           #screen:Ljava/lang/String;
    .end local v34           #type:I
    .end local v35           #x:Ljava/lang/String;
    .end local v36           #y:Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 822
    .local v20, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Got exception parsing favorites."

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 829
    .end local v20           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    :goto_1
    return v26

    .line 744
    .restart local v6       #a:Landroid/content/res/TypedArray;
    .restart local v15       #added:Z
    .restart local v16       #attrs:Landroid/util/AttributeSet;
    .restart local v17       #container:J
    .restart local v19       #depth:I
    .restart local v29       #name:Ljava/lang/String;
    .restart local v30       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v31       #screen:Ljava/lang/String;
    .restart local v34       #type:I
    .restart local v35       #x:Ljava/lang/String;
    .restart local v36       #y:Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 745
    const-string v3, "container"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 746
    const-string v3, "screen"

    move-object/from16 v0, v31

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v3, "cellX"

    move-object/from16 v0, v35

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v3, "cellY"

    move-object/from16 v0, v36

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v3, "favorite"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 751
    invoke-direct/range {v3 .. v8}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v27

    .line 752
    .local v27, id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v27, v3

    if-ltz v3, :cond_7

    const/4 v15, 0x1

    .line 818
    .end local v27           #id:J
    :cond_5
    :goto_2
    if-eqz v15, :cond_6

    add-int/lit8 v26, v26, 0x1

    .line 819
    :cond_6
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 823
    .end local v6           #a:Landroid/content/res/TypedArray;
    .end local v15           #added:Z
    .end local v16           #attrs:Landroid/util/AttributeSet;
    .end local v17           #container:J
    .end local v19           #depth:I
    .end local v29           #name:Ljava/lang/String;
    .end local v30           #parser:Landroid/content/res/XmlResourceParser;
    .end local v31           #screen:Ljava/lang/String;
    .end local v34           #type:I
    .end local v35           #x:Ljava/lang/String;
    .end local v36           #y:Ljava/lang/String;
    :catch_1
    move-exception v20

    .line 824
    .local v20, e:Ljava/io/IOException;
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Got exception parsing favorites."

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 752
    .end local v20           #e:Ljava/io/IOException;
    .restart local v6       #a:Landroid/content/res/TypedArray;
    .restart local v15       #added:Z
    .restart local v16       #attrs:Landroid/util/AttributeSet;
    .restart local v17       #container:J
    .restart local v19       #depth:I
    .restart local v27       #id:J
    .restart local v29       #name:Ljava/lang/String;
    .restart local v30       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v31       #screen:Ljava/lang/String;
    .restart local v34       #type:I
    .restart local v35       #x:Ljava/lang/String;
    .restart local v36       #y:Ljava/lang/String;
    :cond_7
    const/4 v15, 0x0

    goto :goto_2

    .line 753
    .end local v27           #id:J
    :cond_8
    :try_start_2
    const-string v3, "search"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 754
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v15

    goto :goto_2

    .line 755
    :cond_9
    const-string v3, "clock"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 756
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v15

    goto :goto_2

    .line 757
    :cond_a
    const-string v3, "appwidget"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 758
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z

    move-result v15

    goto :goto_2

    .line 759
    :cond_b
    const-string v3, "shortcut"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 760
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J

    move-result-wide v27

    .line 761
    .restart local v27       #id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v27, v3

    if-ltz v3, :cond_c

    const/4 v15, 0x1

    .line 762
    :goto_3
    goto :goto_2

    .line 761
    :cond_c
    const/4 v15, 0x0

    goto :goto_3

    .line 762
    .end local v27           #id:J
    :cond_d
    const-string v3, "folder"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 764
    const/16 v3, 0x9

    const/4 v4, -0x1

    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v33

    .line 765
    .local v33, titleResId:I
    const/4 v3, -0x1

    move/from16 v0, v33

    if-eq v0, v3, :cond_11

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 770
    .local v32, title:Ljava/lang/String;
    :goto_4
    const-string v3, "title"

    move-object/from16 v0, v32

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v22

    .line 772
    .local v22, folderId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v22, v3

    if-ltz v3, :cond_12

    const/4 v15, 0x1

    .line 774
    :goto_5
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 776
    .local v24, folderItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v21

    .line 778
    .local v21, folderDepth:I
    :cond_e
    :goto_6
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v34

    const/4 v3, 0x3

    move/from16 v0, v34

    if-ne v0, v3, :cond_f

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move/from16 v0, v21

    if-le v3, v0, :cond_15

    .line 779
    :cond_f
    const/4 v3, 0x2

    move/from16 v0, v34

    if-ne v0, v3, :cond_e

    .line 782
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v25

    .line 784
    .local v25, folder_item_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/cyanogenmod/trebuchet/R$styleable;->Favorite:[I

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 786
    .local v12, ar:Landroid/content/res/TypedArray;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 787
    const-string v3, "container"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 789
    const-string v3, "favorite"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-wide/16 v3, 0x0

    cmp-long v3, v22, v3

    if-ltz v3, :cond_13

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v5

    move-object v13, v7

    move-object v14, v8

    .line 790
    invoke-direct/range {v9 .. v14}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v27

    .line 792
    .restart local v27       #id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v27, v3

    if-ltz v3, :cond_10

    .line 793
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_10
    :goto_7
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    .line 825
    .end local v6           #a:Landroid/content/res/TypedArray;
    .end local v12           #ar:Landroid/content/res/TypedArray;
    .end local v15           #added:Z
    .end local v16           #attrs:Landroid/util/AttributeSet;
    .end local v17           #container:J
    .end local v19           #depth:I
    .end local v21           #folderDepth:I
    .end local v22           #folderId:J
    .end local v24           #folderItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v25           #folder_item_name:Ljava/lang/String;
    .end local v27           #id:J
    .end local v29           #name:Ljava/lang/String;
    .end local v30           #parser:Landroid/content/res/XmlResourceParser;
    .end local v31           #screen:Ljava/lang/String;
    .end local v32           #title:Ljava/lang/String;
    .end local v33           #titleResId:I
    .end local v34           #type:I
    .end local v35           #x:Ljava/lang/String;
    .end local v36           #y:Ljava/lang/String;
    :catch_2
    move-exception v20

    .line 826
    .local v20, e:Ljava/lang/RuntimeException;
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Got exception parsing favorites."

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 768
    .end local v20           #e:Ljava/lang/RuntimeException;
    .restart local v6       #a:Landroid/content/res/TypedArray;
    .restart local v15       #added:Z
    .restart local v16       #attrs:Landroid/util/AttributeSet;
    .restart local v17       #container:J
    .restart local v19       #depth:I
    .restart local v29       #name:Ljava/lang/String;
    .restart local v30       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v31       #screen:Ljava/lang/String;
    .restart local v33       #titleResId:I
    .restart local v34       #type:I
    .restart local v35       #x:Ljava/lang/String;
    .restart local v36       #y:Ljava/lang/String;
    :cond_11
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    .restart local v32       #title:Ljava/lang/String;
    goto/16 :goto_4

    .line 772
    .restart local v22       #folderId:J
    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 795
    .restart local v12       #ar:Landroid/content/res/TypedArray;
    .restart local v21       #folderDepth:I
    .restart local v24       #folderItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v25       #folder_item_name:Ljava/lang/String;
    :cond_13
    const-string v3, "shortcut"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-wide/16 v3, 0x0

    cmp-long v3, v22, v3

    if-ltz v3, :cond_14

    .line 796
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v12}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J

    move-result-wide v27

    .line 797
    .restart local v27       #id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v27, v3

    if-ltz v3, :cond_10

    .line 798
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 801
    .end local v27           #id:J
    :cond_14
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Folders can contain only shortcuts"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 809
    .end local v12           #ar:Landroid/content/res/TypedArray;
    .end local v25           #folder_item_name:Ljava/lang/String;
    :cond_15
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    const-wide/16 v3, 0x0

    cmp-long v3, v22, v3

    if-ltz v3, :cond_5

    .line 811
    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    #calls: Lcom/cyanogenmod/trebuchet/LauncherProvider;->deleteId(Landroid/database/sqlite/SQLiteDatabase;J)V
    invoke-static {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/LauncherProvider;->access$100(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 812
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_16

    .line 813
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, p1

    #calls: Lcom/cyanogenmod/trebuchet/LauncherProvider;->deleteId(Landroid/database/sqlite/SQLiteDatabase;J)V
    invoke-static {v0, v3, v4}, Lcom/cyanogenmod/trebuchet/LauncherProvider;->access$100(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 815
    :cond_16
    const/4 v15, 0x0

    goto/16 :goto_2
.end method

.method private normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    .line 525
    const-string v11, "Launcher.LauncherProvider"

    const-string v12, "normalizing icons"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 528
    const/4 v1, 0x0

    .line 529
    .local v1, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 531
    .local v10, update:Landroid/database/sqlite/SQLiteStatement;
    const/4 v9, 0x0

    .line 532
    .local v9, logged:Z
    :try_start_0
    const-string v11, "UPDATE favorites SET icon=? WHERE _id=?"

    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 535
    const-string v11, "SELECT _id, icon FROM favorites WHERE iconType=1"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 538
    const-string v11, "_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 539
    .local v8, idIndex:I
    const-string v11, "icon"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 541
    .local v5, iconIndex:I
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 542
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 543
    .local v6, id:J
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 545
    .local v2, data:[B
    const/4 v11, 0x0

    :try_start_1
    array-length v12, v2

    invoke-static {v2, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v12, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/cyanogenmod/trebuchet/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 548
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 549
    const/4 v11, 0x1

    invoke-virtual {v10, v11, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 550
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 551
    if-eqz v2, :cond_1

    .line 552
    const/4 v11, 0x2

    invoke-virtual {v10, v11, v2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 553
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 555
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 557
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 558
    .local v3, e:Ljava/lang/Exception;
    if-nez v9, :cond_2

    .line 559
    :try_start_2
    const-string v11, "Launcher.LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 561
    :cond_2
    const-string v11, "Launcher.LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Also failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 567
    .end local v2           #data:[B
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #iconIndex:I
    .end local v6           #id:J
    .end local v8           #idIndex:I
    :catch_1
    move-exception v4

    .line 568
    .local v4, ex:Landroid/database/SQLException;
    :try_start_3
    const-string v11, "Launcher.LauncherProvider"

    const-string v12, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 570
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 571
    if-eqz v10, :cond_3

    .line 572
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 574
    :cond_3
    if-eqz v1, :cond_4

    .line 575
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 578
    .end local v4           #ex:Landroid/database/SQLException;
    :cond_4
    :goto_2
    return-void

    .line 566
    .restart local v5       #iconIndex:I
    .restart local v8       #idIndex:I
    :cond_5
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 570
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 571
    if-eqz v10, :cond_6

    .line 572
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 574
    :cond_6
    if-eqz v1, :cond_4

    .line 575
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 570
    .end local v5           #iconIndex:I
    .end local v8           #idIndex:I
    :catchall_0
    move-exception v11

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 571
    if-eqz v10, :cond_7

    .line 572
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 574
    :cond_7
    if-eqz v1, :cond_8

    .line 575
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v11
.end method

.method private sendAppWidgetResetNotify()V
    .locals 3

    .prologue
    .line 229
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 230
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/cyanogenmod/trebuchet/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 231
    return-void
.end method

.method private updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 24
    .parameter "db"

    .prologue
    .line 458
    const/4 v11, 0x0

    .line 459
    .local v11, c:Landroid/database/Cursor;
    const-string v3, "itemType"

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v7, 0x1

    aput v7, v4, v5

    invoke-static {v3, v4}, Lcom/cyanogenmod/trebuchet/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, selectWhere:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 465
    :try_start_0
    const-string v4, "favorites"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "intent"

    aput-object v7, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 470
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 471
    .local v23, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 472
    .local v17, idIndex:I
    const-string v3, "intent"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 474
    .local v19, intentIndex:I
    :cond_0
    :goto_0
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 475
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 476
    .local v15, favoriteId:J
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v20

    .line 477
    .local v20, intentUri:Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 479
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v20

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v18

    .line 480
    .local v18, intent:Landroid/content/Intent;
    const-string v3, "Home"

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 482
    .local v22, uri:Landroid/net/Uri;
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 483
    .local v12, data:Ljava/lang/String;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "content://contacts/people/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "content://com.android.contacts/contacts/lookup/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    :cond_1
    new-instance v18, Landroid/content/Intent;

    .end local v18           #intent:Landroid/content/Intent;
    const-string v3, "com.android.contacts.action.QUICK_CONTACT"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .restart local v18       #intent:Landroid/content/Intent;
    const/high16 v3, 0x1420

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 492
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 493
    const-string v3, "mode"

    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    const-string v4, "exclude_mimes"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 497
    const-string v3, "intent"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, v15

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 500
    .local v21, updateWhere:Ljava/lang/String;
    const-string v3, "favorites"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 502
    .end local v12           #data:Ljava/lang/String;
    .end local v18           #intent:Landroid/content/Intent;
    .end local v21           #updateWhere:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v14

    .line 503
    .local v14, ex:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem upgrading shortcut"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 511
    .end local v14           #ex:Ljava/lang/RuntimeException;
    .end local v15           #favoriteId:J
    .end local v17           #idIndex:I
    .end local v19           #intentIndex:I
    .end local v20           #intentUri:Ljava/lang/String;
    .end local v23           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v14

    .line 512
    .local v14, ex:Landroid/database/SQLException;
    :try_start_3
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem while upgrading contacts"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 513
    const/4 v3, 0x0

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 516
    if-eqz v11, :cond_2

    .line 517
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 521
    .end local v14           #ex:Landroid/database/SQLException;
    :cond_2
    :goto_1
    return v3

    .line 504
    .restart local v15       #favoriteId:J
    .restart local v17       #idIndex:I
    .restart local v19       #intentIndex:I
    .restart local v20       #intentUri:Ljava/lang/String;
    .restart local v23       #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v13

    .line 505
    .local v13, e:Ljava/net/URISyntaxException;
    :try_start_4
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem upgrading shortcut"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 515
    .end local v13           #e:Ljava/net/URISyntaxException;
    .end local v15           #favoriteId:J
    .end local v17           #idIndex:I
    .end local v19           #intentIndex:I
    .end local v20           #intentUri:Ljava/lang/String;
    .end local v23           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 516
    if-eqz v11, :cond_3

    .line 517
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3

    .line 510
    .restart local v17       #idIndex:I
    .restart local v19       #intentIndex:I
    .restart local v23       #values:Landroid/content/ContentValues;
    :cond_4
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 516
    if-eqz v11, :cond_5

    .line 517
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 521
    :cond_5
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public generateNewId()J
    .locals 4

    .prologue
    .line 586
    iget-wide v0, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mMaxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_0
    iget-wide v0, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mMaxId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 590
    iget-wide v0, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mMaxId:J

    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 237
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 239
    const-string v0, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 263
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 266
    :cond_0
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    const/high16 v0, 0x7f05

    invoke-direct {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 270
    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v6, 0x9

    const/4 v4, 0x3

    .line 370
    move v1, p2

    .line 371
    .local v1, version:I
    if-ge v1, v4, :cond_0

    .line 373
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 376
    :try_start_0
    const-string v2, "ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    const/4 v1, 0x3

    .line 384
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 388
    :goto_0
    if-ne v1, v4, :cond_0

    .line 389
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 393
    :cond_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 394
    const/4 v1, 0x4

    .line 405
    :cond_1
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 407
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 409
    :try_start_1
    const-string v2, "UPDATE favorites SET screen=(screen + 1);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 415
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 419
    :goto_1
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    const/4 v1, 0x6

    .line 424
    :cond_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_3

    .line 426
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 427
    const/4 v1, 0x7

    .line 430
    :cond_3
    const/16 v2, 0x8

    if-ge v1, v2, :cond_4

    .line 434
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 435
    const/16 v1, 0x8

    .line 438
    :cond_4
    if-ge v1, v6, :cond_6

    .line 441
    iget-wide v2, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mMaxId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 442
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 446
    :cond_5
    const v2, 0x7f050002

    invoke-direct {p0, p1, v2}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 447
    const/16 v1, 0x9

    .line 450
    :cond_6
    if-eq v1, v6, :cond_7

    .line 451
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Destroying all old data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v2, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 455
    :cond_7
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 382
    .local v0, ex:Landroid/database/SQLException;
    :try_start_2
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 384
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 411
    :catch_1
    move-exception v0

    .line 413
    .restart local v0       #ex:Landroid/database/SQLException;
    :try_start_3
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 415
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_1
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
