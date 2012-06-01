.class public Lcom/cyanogenmod/trebuchet/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/LauncherModel$WidgetAndShortcutNameComparator;,
        Lcom/cyanogenmod/trebuchet/LauncherModel$ShortcutNameComparator;,
        Lcom/cyanogenmod/trebuchet/LauncherModel$PackageUpdatedTask;,
        Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;,
        Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field public static final APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDGET_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mCellCountX:I

.field private static mCellCountY:I

.field static final sAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCollator:Ljava/text/Collator;

.field static final sDbIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field

.field static final sFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/cyanogenmod/trebuchet/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sItemsIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/cyanogenmod/trebuchet/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;

.field static final sWorkspaceItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllAppsList:Lcom/cyanogenmod/trebuchet/AllAppsList;

.field private mAllAppsLoaded:Z

.field private final mApp:Lcom/cyanogenmod/trebuchet/LauncherApplication;

.field private final mAppsCanBeOnExternalStorage:Z

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mHandler:Lcom/cyanogenmod/trebuchet/DeferredHandler;

.field private mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

.field private mLoaderTask:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field protected mPreviousConfigMcc:I

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 80
    sget-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sFolders:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    .line 1926
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sCollator:Ljava/text/Collator;

    .line 1927
    new-instance v0, Lcom/cyanogenmod/trebuchet/LauncherModel$7;

    invoke-direct {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel$7;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 1937
    new-instance v0, Lcom/cyanogenmod/trebuchet/LauncherModel$8;

    invoke-direct {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel$8;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;

    .line 1945
    new-instance v0, Lcom/cyanogenmod/trebuchet/LauncherModel$9;

    invoke-direct {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel$9;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->WIDGET_NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/cyanogenmod/trebuchet/LauncherApplication;Lcom/cyanogenmod/trebuchet/IconCache;)V
    .locals 3
    .parameter "app"
    .parameter "iconCache"

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 74
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mLock:Ljava/lang/Object;

    .line 75
    new-instance v2, Lcom/cyanogenmod/trebuchet/DeferredHandler;

    invoke-direct {v2}, Lcom/cyanogenmod/trebuchet/DeferredHandler;-><init>()V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mHandler:Lcom/cyanogenmod/trebuchet/DeferredHandler;

    .line 142
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    .line 143
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mApp:Lcom/cyanogenmod/trebuchet/LauncherApplication;

    .line 144
    new-instance v2, Lcom/cyanogenmod/trebuchet/AllAppsList;

    invoke-direct {v2, p2}, Lcom/cyanogenmod/trebuchet/AllAppsList;-><init>(Lcom/cyanogenmod/trebuchet/IconCache;)V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mAllAppsList:Lcom/cyanogenmod/trebuchet/AllAppsList;

    .line 145
    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    .line 147
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/cyanogenmod/trebuchet/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 150
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 151
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 152
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mcc:I

    iput v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mPreviousConfigMcc:I

    .line 153
    return-void

    .line 142
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/cyanogenmod/trebuchet/LauncherModel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/cyanogenmod/trebuchet/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$1000(Ljava/util/HashMap;J)Lcom/cyanogenmod/trebuchet/FolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-static {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/cyanogenmod/trebuchet/FolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/cyanogenmod/trebuchet/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/cyanogenmod/trebuchet/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/cyanogenmod/trebuchet/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mAllAppsLoaded:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/AllAppsList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mAllAppsList:Lcom/cyanogenmod/trebuchet/AllAppsList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/IconCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/LauncherApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mApp:Lcom/cyanogenmod/trebuchet/LauncherApplication;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/DeferredHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mHandler:Lcom/cyanogenmod/trebuchet/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cyanogenmod/trebuchet/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cyanogenmod/trebuchet/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mLoaderTask:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$602(Lcom/cyanogenmod/trebuchet/LauncherModel;Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;)Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mLoaderTask:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mCellCountX:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mCellCountY:I

    return v0
.end method

.method static synthetic access$900(Lcom/cyanogenmod/trebuchet/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p7}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;JIIIZ)V
    .locals 7
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 410
    iput-wide p2, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    .line 411
    iput p5, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    .line 412
    iput p6, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    .line 415
    instance-of v4, p0, Lcom/cyanogenmod/trebuchet/Launcher;

    if-eqz v4, :cond_0

    if-gez p4, :cond_0

    const-wide/16 v4, -0x65

    cmp-long v4, p2, v4

    if-nez v4, :cond_0

    move-object v4, p0

    .line 417
    check-cast v4, Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Lcom/cyanogenmod/trebuchet/Hotseat;->getOrderInHotseat(II)I

    move-result v4

    iput v4, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    .line 422
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 423
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 424
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v3}, Lcom/cyanogenmod/trebuchet/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/LauncherApplication;

    .line 427
    .local v0, app:Lcom/cyanogenmod/trebuchet/LauncherApplication;
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->getLauncherProvider()Lcom/cyanogenmod/trebuchet/LauncherProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/LauncherProvider;->generateNewId()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->id:J

    .line 428
    const-string v4, "_id"

    iget-wide v5, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 429
    iget v4, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    iget v5, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    invoke-virtual {p1, v3, v4, v5}, Lcom/cyanogenmod/trebuchet/ItemInfo;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 431
    new-instance v2, Lcom/cyanogenmod/trebuchet/LauncherModel$4;

    invoke-direct {v2, v1, p7, v3, p1}, Lcom/cyanogenmod/trebuchet/LauncherModel$4;-><init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/cyanogenmod/trebuchet/ItemInfo;)V

    .line 460
    .local v2, r:Ljava/lang/Runnable;
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 461
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 465
    :goto_1
    return-void

    .line 419
    .end local v0           #app:Lcom/cyanogenmod/trebuchet/LauncherApplication;
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #r:Ljava/lang/Runnable;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_0
    iput p4, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    goto :goto_0

    .line 463
    .restart local v0       #app:Lcom/cyanogenmod/trebuchet/LauncherApplication;
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v2       #r:Ljava/lang/Runnable;
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_1
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;JIII)V
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 196
    iget-wide v0, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 198
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/cyanogenmod/trebuchet/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;JIIIZ)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/cyanogenmod/trebuchet/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;JIII)V

    goto :goto_0
.end method

.method static deleteFolderContentsFromDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/FolderInfo;)V
    .locals 4
    .parameter "context"
    .parameter "info"

    .prologue
    .line 532
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 534
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/cyanogenmod/trebuchet/LauncherModel$6;

    invoke-direct {v1, v0, p1}, Lcom/cyanogenmod/trebuchet/LauncherModel$6;-><init>(Landroid/content/ContentResolver;Lcom/cyanogenmod/trebuchet/FolderInfo;)V

    .line 550
    .local v1, r:Ljava/lang/Runnable;
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 551
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;)V
    .locals 6
    .parameter "context"
    .parameter "item"

    .prologue
    .line 499
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 500
    .local v0, cr:Landroid/content/ContentResolver;
    iget-wide v3, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->id:J

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/cyanogenmod/trebuchet/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    .line 501
    .local v2, uriToDelete:Landroid/net/Uri;
    new-instance v1, Lcom/cyanogenmod/trebuchet/LauncherModel$5;

    invoke-direct {v1, v0, v2, p1}, Lcom/cyanogenmod/trebuchet/LauncherModel$5;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/cyanogenmod/trebuchet/ItemInfo;)V

    .line 521
    .local v1, r:Ljava/lang/Runnable;
    sget-object v3, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 522
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 526
    :goto_0
    return-void

    .line 524
    :cond_0
    sget-object v3, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static findOrMakeFolder(Ljava/util/HashMap;J)Lcom/cyanogenmod/trebuchet/FolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/cyanogenmod/trebuchet/FolderInfo;",
            ">;J)",
            "Lcom/cyanogenmod/trebuchet/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 1917
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/cyanogenmod/trebuchet/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/FolderInfo;

    .line 1918
    .local v0, folderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    if-nez v0, :cond_0

    .line 1920
    new-instance v0, Lcom/cyanogenmod/trebuchet/FolderInfo;

    .end local v0           #folderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    invoke-direct {v0}, Lcom/cyanogenmod/trebuchet/FolderInfo;-><init>()V

    .line 1921
    .restart local v0       #folderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1923
    :cond_0
    return-object v0
.end method

.method private forceReload()V
    .locals 2

    .prologue
    .line 646
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 649
    :try_start_0
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->stopLoaderLocked()Z

    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mAllAppsLoaded:Z

    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mWorkspaceLoaded:Z

    .line 652
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->startLoaderFromBackground()V

    .line 657
    return-void

    .line 652
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static getCellCountX()I
    .locals 1

    .prologue
    .line 477
    sget v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mCellCountX:I

    return v0
.end method

.method static getCellCountY()I
    .locals 1

    .prologue
    .line 481
    sget v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mCellCountY:I

    return v0
.end method

.method static getCellLayoutChildId(JIIIII)I
    .locals 2
    .parameter "container"
    .parameter "screen"
    .parameter "localCellX"
    .parameter "localCellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 472
    long-to-int v0, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .parameter "info"

    .prologue
    .line 1952
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 1953
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 18
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v14, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ItemInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 327
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "itemType"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "container"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "screen"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "cellX"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "cellY"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "spanX"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "spanY"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 332
    .local v7, c:Landroid/database/Cursor;
    const-string v2, "itemType"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 333
    .local v13, itemTypeIndex:I
    const-string v2, "container"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 334
    .local v10, containerIndex:I
    const-string v2, "screen"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 335
    .local v15, screenIndex:I
    const-string v2, "cellX"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 336
    .local v8, cellXIndex:I
    const-string v2, "cellY"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 337
    .local v9, cellYIndex:I
    const-string v2, "spanX"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 338
    .local v16, spanXIndex:I
    const-string v2, "spanY"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 341
    .local v17, spanYIndex:I
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    new-instance v12, Lcom/cyanogenmod/trebuchet/ItemInfo;

    invoke-direct {v12}, Lcom/cyanogenmod/trebuchet/ItemInfo;-><init>()V

    .line 343
    .local v12, item:Lcom/cyanogenmod/trebuchet/ItemInfo;
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    .line 344
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    .line 345
    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanX:I

    .line 346
    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanY:I

    .line 347
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v12, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    .line 348
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/cyanogenmod/trebuchet/ItemInfo;->itemType:I

    .line 349
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    .line 351
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    .end local v12           #item:Lcom/cyanogenmod/trebuchet/ItemInfo;
    :catch_0
    move-exception v11

    .line 354
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 359
    .end local v11           #e:Ljava/lang/Exception;
    :goto_1
    return-object v14

    .line 356
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .locals 11
    .parameter "c"
    .parameter "context"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    .line 1683
    const/4 v1, 0x0

    .line 1684
    .local v1, icon:Landroid/graphics/Bitmap;
    new-instance v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    invoke-direct {v4}, Lcom/cyanogenmod/trebuchet/ShortcutInfo;-><init>()V

    .line 1685
    .local v4, info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    const/4 v9, 0x1

    iput v9, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->itemType:I

    .line 1689
    move/from16 v0, p7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1691
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1692
    .local v2, iconType:I
    packed-switch v2, :pswitch_data_0

    .line 1730
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1731
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->usingFallbackIcon:Z

    .line 1732
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->customIcon:Z

    .line 1735
    :cond_0
    :goto_0
    invoke-virtual {v4, v1}, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1736
    return-object v4

    .line 1694
    :pswitch_0
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1695
    .local v6, packageName:Ljava/lang/String;
    move/from16 v0, p5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1696
    .local v7, resourceName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1697
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->customIcon:Z

    .line 1700
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 1701
    .local v8, resources:Landroid/content/res/Resources;
    if-eqz v8, :cond_1

    .line 1702
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1703
    .local v3, id:I
    iget-object v9, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    invoke-virtual {v9, v8, v3}, Lcom/cyanogenmod/trebuchet/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9, p2}, Lcom/cyanogenmod/trebuchet/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1710
    .end local v3           #id:I
    .end local v8           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 1711
    move/from16 v0, p6

    invoke-virtual {p0, p1, v0, p2}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1714
    :cond_2
    if-nez v1, :cond_0

    .line 1715
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1716
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    .line 1720
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v7           #resourceName:Ljava/lang/String;
    :pswitch_1
    move/from16 v0, p6

    invoke-virtual {p0, p1, v0, p2}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1721
    if-nez v1, :cond_3

    .line 1722
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1723
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->customIcon:Z

    .line 1724
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    .line 1726
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->customIcon:Z

    goto :goto_0

    .line 1706
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v6       #packageName:Ljava/lang/String;
    .restart local v7       #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 1692
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;JIII)V
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 250
    iput-wide p2, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    .line 251
    iput p5, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    .line 252
    iput p6, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    .line 256
    instance-of v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;

    if-eqz v1, :cond_0

    if-gez p4, :cond_0

    const-wide/16 v1, -0x65

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    move-object v1, p0

    .line 258
    check-cast v1, Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Lcom/cyanogenmod/trebuchet/Hotseat;->getOrderInHotseat(II)I

    move-result v1

    iput v1, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    .line 263
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 264
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 265
    const-string v1, "cellX"

    iget v2, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    const-string v1, "cellY"

    iget v2, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    const-string v1, "screen"

    iget v2, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    const-string v1, "moveItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/cyanogenmod/trebuchet/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/cyanogenmod/trebuchet/ItemInfo;Ljava/lang/String;)V

    .line 270
    return-void

    .line 260
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    iput p4, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    goto :goto_0
.end method

.method static resizeItemInDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;IIII)V
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 277
    iput p4, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanX:I

    .line 278
    iput p5, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanY:I

    .line 279
    iput p2, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    .line 280
    iput p3, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    .line 282
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 283
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 284
    const-string v1, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string v1, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v1, "cellX"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    const-string v1, "cellY"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    const-string v1, "resizeItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/cyanogenmod/trebuchet/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/cyanogenmod/trebuchet/ItemInfo;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .parameter "context"
    .parameter "title"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 308
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/cyanogenmod/trebuchet/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "intent"

    aput-object v3, v2, v8

    const-string v3, "title=? and intent=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 311
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 313
    .local v7, result:Z
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 315
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 317
    return v7

    .line 315
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private stopLoaderLocked()Z
    .locals 3

    .prologue
    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, isLaunching:Z
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mLoaderTask:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

    .line 686
    .local v1, oldTask:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;
    if-eqz v1, :cond_1

    .line 687
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    const/4 v0, 0x1

    .line 690
    :cond_0
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->stopLocked()V

    .line 692
    :cond_1
    return v0
.end method

.method private unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 174
    .local v1, workspaceItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 175
    .local v0, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ItemInfo;>;"
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mHandler:Lcom/cyanogenmod/trebuchet/DeferredHandler;

    new-instance v3, Lcom/cyanogenmod/trebuchet/LauncherModel$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/cyanogenmod/trebuchet/LauncherModel$2;-><init>(Lcom/cyanogenmod/trebuchet/LauncherModel;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/trebuchet/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 187
    return-object v1
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;)V
    .locals 3
    .parameter "context"
    .parameter "item"

    .prologue
    .line 296
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 297
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {p1, v0}, Lcom/cyanogenmod/trebuchet/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 298
    iget v1, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    iget v2, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/ItemInfo;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 299
    const-string v1, "updateItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/cyanogenmod/trebuchet/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/cyanogenmod/trebuchet/ItemInfo;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method static updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/cyanogenmod/trebuchet/ItemInfo;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "values"
    .parameter "item"
    .parameter "callingFunction"

    .prologue
    .line 207
    iget-wide v4, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->id:J

    .line 208
    .local v4, itemId:J
    const/4 v3, 0x0

    invoke-static {v4, v5, v3}, Lcom/cyanogenmod/trebuchet/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    .line 209
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 211
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/cyanogenmod/trebuchet/LauncherModel$3;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;JLcom/cyanogenmod/trebuchet/ItemInfo;Ljava/lang/String;)V

    .line 239
    .local v0, r:Ljava/lang/Runnable;
    sget-object v3, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 240
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    sget-object v3, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static updateWorkspaceLayoutCells(II)V
    .locals 0
    .parameter "shortAxisCellCount"
    .parameter "longAxisCellCount"

    .prologue
    .line 489
    sput p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mCellCountX:I

    .line 490
    sput p1, Lcom/cyanogenmod/trebuchet/LauncherModel;->mCellCountY:I

    .line 491
    return-void
.end method


# virtual methods
.method addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .locals 8
    .parameter "context"
    .parameter "data"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 1755
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    move-result-object v1

    .line 1756
    .local v1, info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    if-nez v1, :cond_0

    .line 1757
    const/4 v1, 0x0

    .line 1761
    .end local v1           #info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :goto_0
    return-object v1

    .restart local v1       #info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :cond_0
    move-object v0, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 1759
    invoke-static/range {v0 .. v7}, Lcom/cyanogenmod/trebuchet/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;JIIIZ)V

    goto :goto_0
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 2020
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.data"

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mAllAppsList:Lcom/cyanogenmod/trebuchet/AllAppsList;

    iget-object v2, v2, Lcom/cyanogenmod/trebuchet/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2022
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.added"

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mAllAppsList:Lcom/cyanogenmod/trebuchet/AllAppsList;

    iget-object v2, v2, Lcom/cyanogenmod/trebuchet/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2023
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.removed"

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mAllAppsList:Lcom/cyanogenmod/trebuchet/AllAppsList;

    iget-object v2, v2, Lcom/cyanogenmod/trebuchet/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2024
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.modified"

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mAllAppsList:Lcom/cyanogenmod/trebuchet/AllAppsList;

    iget-object v2, v2, Lcom/cyanogenmod/trebuchet/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2025
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mLoaderTask:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mLoaderTask:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->dumpState()V

    .line 2030
    :goto_0
    return-void

    .line 2028
    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "mLoaderTask=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method enqueuePackageUpdated(Lcom/cyanogenmod/trebuchet/LauncherModel$PackageUpdatedTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 1473
    sget-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1474
    return-void
.end method

.method public getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/cyanogenmod/trebuchet/FolderInfo;
    .locals 17
    .parameter "context"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/cyanogenmod/trebuchet/FolderInfo;",
            ">;J)",
            "Lcom/cyanogenmod/trebuchet/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 366
    .local p2, folderList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/cyanogenmod/trebuchet/FolderInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 367
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/cyanogenmod/trebuchet/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id=? and (itemType=? or itemType=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 373
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    const-string v3, "itemType"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 375
    .local v13, itemTypeIndex:I
    const-string v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 376
    .local v15, titleIndex:I
    const-string v3, "container"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 377
    .local v11, containerIndex:I
    const-string v3, "screen"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 378
    .local v14, screenIndex:I
    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 379
    .local v9, cellXIndex:I
    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 381
    .local v10, cellYIndex:I
    const/4 v12, 0x0

    .line 382
    .local v12, folderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 388
    :goto_0
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/cyanogenmod/trebuchet/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 389
    move-wide/from16 v0, p3

    iput-wide v0, v12, Lcom/cyanogenmod/trebuchet/FolderInfo;->id:J

    .line 390
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v12, Lcom/cyanogenmod/trebuchet/FolderInfo;->container:J

    .line 391
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/cyanogenmod/trebuchet/FolderInfo;->screen:I

    .line 392
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/cyanogenmod/trebuchet/FolderInfo;->cellX:I

    .line 393
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/cyanogenmod/trebuchet/FolderInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 401
    .end local v9           #cellXIndex:I
    .end local v10           #cellYIndex:I
    .end local v11           #containerIndex:I
    .end local v12           #folderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    .end local v13           #itemTypeIndex:I
    .end local v14           #screenIndex:I
    .end local v15           #titleIndex:I
    :goto_1
    return-object v12

    .line 384
    .restart local v9       #cellXIndex:I
    .restart local v10       #cellYIndex:I
    .restart local v11       #containerIndex:I
    .restart local v12       #folderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    .restart local v13       #itemTypeIndex:I
    .restart local v14       #screenIndex:I
    .restart local v15       #titleIndex:I
    :pswitch_0
    :try_start_1
    invoke-static/range {p2 .. p4}, Lcom/cyanogenmod/trebuchet/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/cyanogenmod/trebuchet/FolderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    goto :goto_0

    .line 398
    .end local v9           #cellXIndex:I
    .end local v10           #cellYIndex:I
    .end local v11           #containerIndex:I
    .end local v12           #folderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    .end local v13           #itemTypeIndex:I
    .end local v14           #screenIndex:I
    .end local v15           #titleIndex:I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 401
    const/4 v12, 0x0

    goto :goto_1

    .line 398
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "iconIndex"
    .parameter "context"

    .prologue
    .line 1744
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1746
    .local v0, data:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/cyanogenmod/trebuchet/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1749
    :goto_0
    return-object v2

    .line 1748
    :catch_0
    move-exception v1

    .line 1749
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .locals 8
    .parameter "manager"
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 1597
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .locals 11
    .parameter "manager"
    .parameter "intent"
    .parameter "context"
    .parameter "c"
    .parameter "iconIndex"
    .parameter "titleIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/cyanogenmod/trebuchet/ShortcutInfo;"
        }
    .end annotation

    .prologue
    .line 1607
    .local p7, labelCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/CharSequence;>;"
    const/4 v3, 0x0

    .line 1608
    .local v3, icon:Landroid/graphics/Bitmap;
    new-instance v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    invoke-direct {v4}, Lcom/cyanogenmod/trebuchet/ShortcutInfo;-><init>()V

    .line 1610
    .local v4, info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1611
    .local v1, componentName:Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 1612
    const/4 v4, 0x0

    .line 1673
    .end local v4           #info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :goto_0
    return-object v4

    .line 1616
    .restart local v4       #info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 1617
    .local v6, pi:Landroid/content/pm/PackageInfo;
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_1

    .line 1620
    const/4 v4, 0x0

    goto :goto_0

    .line 1622
    .end local v6           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 1623
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPackInfo failed for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p1, p2, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 1634
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_2

    .line 1635
    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    move-object/from16 v0, p7

    invoke-virtual {v8, v1, v7, v0}, Lcom/cyanogenmod/trebuchet/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1638
    :cond_2
    if-nez v3, :cond_3

    .line 1639
    if-eqz p4, :cond_3

    .line 1640
    move/from16 v0, p5

    invoke-virtual {p0, p4, v0, p3}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1644
    :cond_3
    if-nez v3, :cond_4

    .line 1645
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1646
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->usingFallbackIcon:Z

    .line 1648
    :cond_4
    invoke-virtual {v4, v3}, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1651
    if-eqz v7, :cond_5

    .line 1652
    invoke-static {v7}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v5

    .line 1653
    .local v5, key:Landroid/content/ComponentName;
    if-eqz p7, :cond_8

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1654
    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    iput-object v8, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1663
    .end local v5           #key:Landroid/content/ComponentName;
    :cond_5
    :goto_1
    iget-object v8, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v8, :cond_6

    .line 1664
    if-eqz p4, :cond_6

    .line 1665
    move/from16 v0, p6

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1669
    :cond_6
    iget-object v8, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v8, :cond_7

    .line 1670
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1672
    :cond_7
    const/4 v8, 0x0

    iput v8, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->itemType:I

    goto/16 :goto_0

    .line 1656
    .restart local v5       #key:Landroid/content/ComponentName;
    :cond_8
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1657
    if-eqz p7, :cond_5

    .line 1658
    iget-object v8, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p7

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .locals 16
    .parameter "context"
    .parameter "data"
    .parameter "fallbackIcon"

    .prologue
    .line 1818
    const-string v13, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1819
    .local v9, intent:Landroid/content/Intent;
    const-string v13, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1820
    .local v10, name:Ljava/lang/String;
    const-string v13, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 1822
    .local v1, bitmap:Landroid/os/Parcelable;
    if-nez v9, :cond_0

    .line 1824
    const-string v13, "Launcher.Model"

    const-string v14, "Can\'t construct ShorcutInfo with null intent"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const/4 v8, 0x0

    .line 1869
    .end local v1           #bitmap:Landroid/os/Parcelable;
    :goto_0
    return-object v8

    .line 1828
    .restart local v1       #bitmap:Landroid/os/Parcelable;
    :cond_0
    const/4 v5, 0x0

    .line 1829
    .local v5, icon:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 1830
    .local v2, customIcon:Z
    const/4 v6, 0x0

    .line 1832
    .local v6, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v1, :cond_3

    instance-of v13, v1, Landroid/graphics/Bitmap;

    if-eqz v13, :cond_3

    .line 1833
    new-instance v13, Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;

    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1           #bitmap:Landroid/os/Parcelable;
    invoke-direct {v13, v1}, Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/cyanogenmod/trebuchet/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1834
    const/4 v2, 0x1

    .line 1852
    :cond_1
    :goto_1
    new-instance v8, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    invoke-direct {v8}, Lcom/cyanogenmod/trebuchet/ShortcutInfo;-><init>()V

    .line 1854
    .local v8, info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    if-nez v5, :cond_2

    .line 1855
    if-eqz p3, :cond_4

    .line 1856
    move-object/from16 v5, p3

    .line 1862
    :cond_2
    :goto_2
    invoke-virtual {v8, v5}, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1864
    iput-object v10, v8, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1865
    iput-object v9, v8, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1866
    iput-boolean v2, v8, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->customIcon:Z

    .line 1867
    iput-object v6, v8, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    goto :goto_0

    .line 1836
    .end local v8           #info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .restart local v1       #bitmap:Landroid/os/Parcelable;
    :cond_3
    const-string v13, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 1837
    .local v4, extra:Landroid/os/Parcelable;
    if-eqz v4, :cond_1

    instance-of v13, v4, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v13, :cond_1

    .line 1839
    :try_start_0
    move-object v0, v4

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v6, v0

    .line 1840
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1841
    .local v11, packageManager:Landroid/content/pm/PackageManager;
    iget-object v13, v6, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 1843
    .local v12, resources:Landroid/content/res/Resources;
    iget-object v13, v6, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1844
    .local v7, id:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    invoke-virtual {v13, v12, v7}, Lcom/cyanogenmod/trebuchet/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/cyanogenmod/trebuchet/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 1846
    .end local v7           #id:I
    .end local v11           #packageManager:Landroid/content/pm/PackageManager;
    .end local v12           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 1847
    .local v3, e:Ljava/lang/Exception;
    const-string v13, "Launcher.Model"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not load shortcut icon: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1858
    .end local v1           #bitmap:Landroid/os/Parcelable;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #extra:Landroid/os/Parcelable;
    .restart local v8       #info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1859
    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_2
.end method

.method public initialize(Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;)V
    .locals 2
    .parameter "callbacks"

    .prologue
    .line 561
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 562
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 563
    monitor-exit v1

    .line 564
    return-void

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAllAppsLoaded()Z
    .locals 1

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 574
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 579
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, packageName:Ljava/lang/String;
    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 582
    .local v6, replacing:Z
    const/4 v3, 0x0

    .line 584
    .local v3, op:I
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 643
    .end local v3           #op:I
    .end local v4           #packageName:Ljava/lang/String;
    .end local v6           #replacing:Z
    :cond_1
    :goto_0
    return-void

    .line 589
    .restart local v3       #op:I
    .restart local v4       #packageName:Ljava/lang/String;
    .restart local v6       #replacing:Z
    :cond_2
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 590
    const/4 v3, 0x2

    .line 605
    :cond_3
    :goto_1
    if-eqz v3, :cond_1

    .line 606
    new-instance v7, Lcom/cyanogenmod/trebuchet/LauncherModel$PackageUpdatedTask;

    new-array v8, v8, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-direct {v7, p0, v3, v8}, Lcom/cyanogenmod/trebuchet/LauncherModel$PackageUpdatedTask;-><init>(Lcom/cyanogenmod/trebuchet/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/cyanogenmod/trebuchet/LauncherModel;->enqueuePackageUpdated(Lcom/cyanogenmod/trebuchet/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 591
    :cond_4
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 592
    if-nez v6, :cond_3

    .line 593
    const/4 v3, 0x3

    goto :goto_1

    .line 597
    :cond_5
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 598
    if-nez v6, :cond_6

    .line 599
    const/4 v3, 0x1

    goto :goto_1

    .line 601
    :cond_6
    const/4 v3, 0x2

    goto :goto_1

    .line 609
    .end local v3           #op:I
    .end local v4           #packageName:Ljava/lang/String;
    .end local v6           #replacing:Z
    :cond_7
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 611
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 612
    .local v5, packages:[Ljava/lang/String;
    new-instance v7, Lcom/cyanogenmod/trebuchet/LauncherModel$PackageUpdatedTask;

    invoke-direct {v7, p0, v8, v5}, Lcom/cyanogenmod/trebuchet/LauncherModel$PackageUpdatedTask;-><init>(Lcom/cyanogenmod/trebuchet/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/cyanogenmod/trebuchet/LauncherModel;->enqueuePackageUpdated(Lcom/cyanogenmod/trebuchet/LauncherModel$PackageUpdatedTask;)V

    .line 614
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->startLoaderFromBackground()V

    goto :goto_0

    .line 615
    .end local v5           #packages:[Ljava/lang/String;
    :cond_8
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 616
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 617
    .restart local v5       #packages:[Ljava/lang/String;
    new-instance v7, Lcom/cyanogenmod/trebuchet/LauncherModel$PackageUpdatedTask;

    const/4 v8, 0x4

    invoke-direct {v7, p0, v8, v5}, Lcom/cyanogenmod/trebuchet/LauncherModel$PackageUpdatedTask;-><init>(Lcom/cyanogenmod/trebuchet/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/cyanogenmod/trebuchet/LauncherModel;->enqueuePackageUpdated(Lcom/cyanogenmod/trebuchet/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 619
    .end local v5           #packages:[Ljava/lang/String;
    :cond_9
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 621
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->forceReload()V

    goto :goto_0

    .line 622
    :cond_a
    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 626
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 627
    .local v2, currentConfig:Landroid/content/res/Configuration;
    iget v7, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mPreviousConfigMcc:I

    iget v8, v2, Landroid/content/res/Configuration;->mcc:I

    if-eq v7, v8, :cond_b

    .line 628
    const-string v7, "Launcher.Model"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reload apps on config change. curr_mcc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " prevmcc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mPreviousConfigMcc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->forceReload()V

    .line 633
    :cond_b
    iget v7, v2, Landroid/content/res/Configuration;->mcc:I

    iput v7, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mPreviousConfigMcc:I

    goto/16 :goto_0

    .line 634
    .end local v2           #currentConfig:Landroid/content/res/Configuration;
    :cond_c
    const-string v7, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 636
    :cond_d
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_1

    .line 637
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;

    .line 638
    .local v1, callbacks:Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;
    if-eqz v1, :cond_1

    .line 639
    invoke-interface {v1}, Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;->bindSearchablesChanged()V

    goto/16 :goto_0
.end method

.method queueIconToBeChecked(Ljava/util/HashMap;Lcom/cyanogenmod/trebuchet/ShortcutInfo;Landroid/database/Cursor;I)Z
    .locals 2
    .parameter
    .parameter "info"
    .parameter "c"
    .parameter "iconIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;",
            "Lcom/cyanogenmod/trebuchet/ShortcutInfo;",
            "Landroid/database/Cursor;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;[B>;"
    const/4 v0, 0x0

    .line 1875
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    if-nez v1, :cond_1

    .line 1888
    :cond_0
    :goto_0
    return v0

    .line 1884
    :cond_1
    iget-boolean v1, p2, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->customIcon:Z

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v1, :cond_0

    .line 1885
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    const/4 v0, 0x1

    goto :goto_0
.end method

.method resolveWidgetsForMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "context"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cyanogenmod/trebuchet/InstallWidgetReceiver$WidgetMimeTypeHandlerData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1783
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1784
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1787
    .local v7, supportedConfigurationActivities:Ljava/util/List;,"Ljava/util/List<Lcom/cyanogenmod/trebuchet/InstallWidgetReceiver$WidgetMimeTypeHandlerData;>;"
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.android.launcher.action.SUPPORTS_CLIPDATA_MIMETYPE"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1789
    .local v8, supportsIntent:Landroid/content/Intent;
    invoke-virtual {v8, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1792
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v9

    .line 1794
    .local v9, widgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1796
    .local v2, configurationComponentToWidget:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1797
    .local v4, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v10, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1802
    .end local v4           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    const/high16 v10, 0x1

    invoke-virtual {v6, v8, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1804
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1805
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1806
    .local v1, activityInfo:Landroid/content/pm/ActivityInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    .local v5, infoComponent:Landroid/content/ComponentName;
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1809
    new-instance v11, Lcom/cyanogenmod/trebuchet/InstallWidgetReceiver$WidgetMimeTypeHandlerData;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v11, v4, v10}, Lcom/cyanogenmod/trebuchet/InstallWidgetReceiver$WidgetMimeTypeHandlerData;-><init>(Landroid/content/pm/ResolveInfo;Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1814
    .end local v1           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v5           #infoComponent:Landroid/content/ComponentName;
    :cond_2
    return-object v7
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 696
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 705
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->stopLoaderLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 p2, 0x1

    .line 706
    :goto_0
    new-instance v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;-><init>(Lcom/cyanogenmod/trebuchet/LauncherModel;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mLoaderTask:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

    .line 707
    sget-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 708
    sget-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mLoaderTask:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 710
    :cond_1
    monitor-exit v1

    .line 711
    return-void

    .line 705
    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    .line 710
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLoaderFromBackground()V
    .locals 4

    .prologue
    .line 666
    const/4 v1, 0x0

    .line 667
    .local v1, runLoader:Z
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 668
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;

    .line 669
    .local v0, callbacks:Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 671
    invoke-interface {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v2

    if-nez v2, :cond_0

    .line 672
    const/4 v1, 0x1

    .line 676
    .end local v0           #callbacks:Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;
    :cond_0
    if-eqz v1, :cond_1

    .line 677
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mApp:Lcom/cyanogenmod/trebuchet/LauncherApplication;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/cyanogenmod/trebuchet/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 679
    :cond_1
    return-void
.end method

.method public stopLoader()V
    .locals 2

    .prologue
    .line 714
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mLoaderTask:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mLoaderTask:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->stopLocked()V

    .line 718
    :cond_0
    monitor-exit v1

    .line 719
    return-void

    .line 718
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindWorkspaceItems()V
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/cyanogenmod/trebuchet/LauncherModel$1;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/trebuchet/LauncherModel$1;-><init>(Lcom/cyanogenmod/trebuchet/LauncherModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method

.method updateSavedIcon(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ShortcutInfo;[B)V
    .locals 7
    .parameter "context"
    .parameter "info"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 1891
    const/4 v2, 0x0

    .line 1893
    .local v2, needSave:Z
    if-eqz p3, :cond_2

    .line 1894
    const/4 v5, 0x0

    :try_start_0
    array-length v6, p3

    invoke-static {p3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1895
    .local v3, saved:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/LauncherModel;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    invoke-virtual {p2, v5}, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->getIcon(Lcom/cyanogenmod/trebuchet/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1896
    .local v1, loaded:Landroid/graphics/Bitmap;
    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x1

    .line 1903
    .end local v1           #loaded:Landroid/graphics/Bitmap;
    .end local v3           #saved:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v2, :cond_0

    .line 1904
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "going to save icon bitmap for info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    invoke-static {p1, p2}, Lcom/cyanogenmod/trebuchet/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;)V

    .line 1909
    :cond_0
    return-void

    .restart local v1       #loaded:Landroid/graphics/Bitmap;
    .restart local v3       #saved:Landroid/graphics/Bitmap;
    :cond_1
    move v2, v4

    .line 1896
    goto :goto_0

    .line 1898
    .end local v1           #loaded:Landroid/graphics/Bitmap;
    .end local v3           #saved:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1900
    :catch_0
    move-exception v0

    .line 1901
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_0
.end method
