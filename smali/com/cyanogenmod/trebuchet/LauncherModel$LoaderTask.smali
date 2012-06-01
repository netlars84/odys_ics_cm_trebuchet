.class Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsLaunching:Z

.field private mLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadAndBindStepFinished:Z

.field private mStopped:Z

.field private mWaitThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/LauncherModel;Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 739
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 741
    iput-boolean p3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mIsLaunching:Z

    .line 742
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    .line 743
    return-void
.end method

.method static synthetic access$202(Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 731
    iput-boolean p1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    return p1
.end method

.method private bindWorkspace()V
    .locals 14

    .prologue
    .line 1209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1213
    .local v10, t:J
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$400(Lcom/cyanogenmod/trebuchet/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;

    .line 1214
    .local v2, oldCallbacks:Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;
    if-nez v2, :cond_0

    .line 1216
    const-string v0, "Launcher.Model"

    const-string v1, "LoaderTask running with no launcher"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :goto_0
    return-void

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mHandler:Lcom/cyanogenmod/trebuchet/DeferredHandler;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$300(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$2;

    invoke-direct {v1, p0, v2}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$2;-><init>(Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;)V

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1231
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #calls: Lcom/cyanogenmod/trebuchet/LauncherModel;->unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$000(Lcom/cyanogenmod/trebuchet/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1234
    .local v3, workspaceItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ItemInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1235
    .local v6, N:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v6, :cond_2

    .line 1236
    move v4, v9

    .line 1237
    .local v4, start:I
    add-int/lit8 v0, v9, 0xa

    if-gt v0, v6, :cond_1

    const/16 v5, 0xa

    .line 1238
    .local v5, chunkSize:I
    :goto_2
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mHandler:Lcom/cyanogenmod/trebuchet/DeferredHandler;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$300(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/DeferredHandler;

    move-result-object v13

    new-instance v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$3;-><init>(Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V

    invoke-virtual {v13, v0}, Lcom/cyanogenmod/trebuchet/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1235
    add-int/lit8 v9, v9, 0xa

    goto :goto_1

    .line 1237
    .end local v5           #chunkSize:I
    :cond_1
    sub-int v5, v6, v9

    goto :goto_2

    .line 1248
    .end local v4           #start:I
    :cond_2
    new-instance v8, Ljava/util/HashMap;

    sget-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sFolders:Ljava/util/HashMap;

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1249
    .local v8, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/cyanogenmod/trebuchet/FolderInfo;>;"
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mHandler:Lcom/cyanogenmod/trebuchet/DeferredHandler;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$300(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$4;

    invoke-direct {v1, p0, v2, v8}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$4;-><init>(Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1258
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mHandler:Lcom/cyanogenmod/trebuchet/DeferredHandler;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$300(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$5;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$5;-><init>(Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1270
    invoke-interface {v2}, Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v7

    .line 1271
    .local v7, currentScreen:I
    sget-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1273
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v6, :cond_4

    .line 1274
    sget-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;

    .line 1275
    .local v12, widget:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;
    iget v0, v12, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->screen:I

    if-ne v0, v7, :cond_3

    .line 1276
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mHandler:Lcom/cyanogenmod/trebuchet/DeferredHandler;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$300(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$6;

    invoke-direct {v1, p0, v2, v12}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$6;-><init>(Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;)V

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1273
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1287
    .end local v12           #widget:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;
    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v6, :cond_6

    .line 1288
    sget-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;

    .line 1289
    .restart local v12       #widget:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;
    iget v0, v12, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->screen:I

    if-eq v0, v7, :cond_5

    .line 1290
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mHandler:Lcom/cyanogenmod/trebuchet/DeferredHandler;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$300(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$7;

    invoke-direct {v1, p0, v2, v12}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$7;-><init>(Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;)V

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1287
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1301
    .end local v12           #widget:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;
    :cond_6
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mHandler:Lcom/cyanogenmod/trebuchet/DeferredHandler;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$300(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$8;

    invoke-direct {v1, p0, v2}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$8;-><init>(Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;)V

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1310
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mHandler:Lcom/cyanogenmod/trebuchet/DeferredHandler;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$300(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$9;

    invoke-direct {v1, p0, v10, v11}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$9;-><init>(Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;J)V

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private checkItemPlacement([[[Lcom/cyanogenmod/trebuchet/ItemInfo;Lcom/cyanogenmod/trebuchet/ItemInfo;)Z
    .locals 10
    .parameter "occupied"
    .parameter "item"

    .prologue
    const/4 v9, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 915
    iget v0, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    .line 916
    .local v0, containerIndex:I
    iget-wide v5, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    const-wide/16 v7, -0x65

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 918
    iget v5, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    invoke-static {v5}, Lcom/cyanogenmod/trebuchet/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 957
    :goto_0
    return v3

    .line 924
    :cond_0
    aget-object v5, p1, v9

    iget v6, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    aget-object v5, v5, v6

    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    .line 925
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading shortcut into hotseat "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " into position ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") occupied by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v9

    iget v7, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    aget-object v6, v6, v7

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 930
    :cond_1
    aget-object v5, p1, v9

    iget v6, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    aget-object v5, v5, v6

    aput-object p2, v5, v3

    move v3, v4

    .line 931
    goto :goto_0

    .line 933
    :cond_2
    iget-wide v5, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    move v3, v4

    .line 935
    goto :goto_0

    .line 939
    :cond_3
    iget v1, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    .local v1, x:I
    :goto_1
    iget v5, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    iget v6, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanX:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_6

    .line 940
    iget v2, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    .local v2, y:I
    :goto_2
    iget v5, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    iget v6, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanY:I

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_5

    .line 941
    aget-object v5, p1, v0

    aget-object v5, v5, v1

    aget-object v5, v5, v2

    if-eqz v5, :cond_4

    .line 942
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading shortcut "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " into cell ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") occupied by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v0

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 940
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 939
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 951
    .end local v2           #y:I
    :cond_6
    iget v1, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    :goto_3
    iget v3, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    iget v5, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanX:I

    add-int/2addr v3, v5

    if-ge v1, v3, :cond_8

    .line 952
    iget v2, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    .restart local v2       #y:I
    :goto_4
    iget v3, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    iget v5, p2, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanY:I

    add-int/2addr v3, v5

    if-ge v2, v3, :cond_7

    .line 953
    aget-object v3, p1, v0

    aget-object v3, v3, v1

    aput-object p2, v3, v2

    .line 952
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 951
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v2           #y:I
    :cond_8
    move v3, v4

    .line 957
    goto/16 :goto_0
.end method

.method private loadAllAppsByBatch()V
    .locals 28

    .prologue
    .line 1365
    const-wide/16 v19, 0x0

    .line 1369
    .local v19, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static/range {v23 .. v23}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$400(Lcom/cyanogenmod/trebuchet/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;

    .line 1370
    .local v12, oldCallbacks:Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;
    if-nez v12, :cond_1

    .line 1372
    const-string v23, "Launcher.Model"

    const-string v24, "LoaderTask running with no launcher (loadAllAppsByBatch)"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :cond_0
    return-void

    .line 1376
    :cond_1
    new-instance v11, Landroid/content/Intent;

    const-string v23, "android.intent.action.MAIN"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1377
    .local v11, mainIntent:Landroid/content/Intent;
    const-string v23, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1380
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 1382
    .local v6, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v4, 0x7fffffff

    .line 1385
    .local v4, N:I
    const/4 v9, 0x0

    .line 1386
    .local v9, i:I
    :goto_0
    if-ge v9, v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mStopped:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 1387
    if-nez v9, :cond_2

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mAllAppsList:Lcom/cyanogenmod/trebuchet/AllAppsList;
    invoke-static/range {v23 .. v23}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$1200(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/AllAppsList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/cyanogenmod/trebuchet/AllAppsList;->clear()V

    .line 1389
    const-wide/16 v14, 0x0

    .line 1390
    .local v14, qiaTime:J
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v11, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1395
    if-eqz v6, :cond_0

    .line 1398
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 1402
    if-eqz v4, :cond_0

    .line 1407
    const-wide/16 v16, 0x0

    .line 1408
    .local v16, sortTime:J
    new-instance v23, Lcom/cyanogenmod/trebuchet/LauncherModel$ShortcutNameComparator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v13, v1}, Lcom/cyanogenmod/trebuchet/LauncherModel$ShortcutNameComparator;-><init>(Landroid/content/pm/PackageManager;Ljava/util/HashMap;)V

    move-object/from16 v0, v23

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1416
    .end local v14           #qiaTime:J
    .end local v16           #sortTime:J
    :cond_2
    const-wide/16 v21, 0x0

    .line 1418
    .local v21, t2:J
    move/from16 v18, v9

    .line 1419
    .local v18, startIndex:I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_1
    if-ge v9, v4, :cond_3

    if-ge v10, v4, :cond_3

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mAllAppsList:Lcom/cyanogenmod/trebuchet/AllAppsList;
    invoke-static/range {v23 .. v23}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$1200(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/AllAppsList;

    move-result-object v24

    new-instance v25, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    move-object/from16 v26, v0

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;
    invoke-static/range {v26 .. v26}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$1300(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/IconCache;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/cyanogenmod/trebuchet/ApplicationInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/cyanogenmod/trebuchet/IconCache;Ljava/util/HashMap;)V

    invoke-virtual/range {v24 .. v25}, Lcom/cyanogenmod/trebuchet/AllAppsList;->add(Lcom/cyanogenmod/trebuchet/ApplicationInfo;)V

    .line 1423
    add-int/lit8 v9, v9, 0x1

    .line 1419
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1426
    :cond_3
    if-gt v9, v4, :cond_4

    const/4 v8, 0x1

    .line 1427
    .local v8, first:Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;)Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;

    move-result-object v7

    .line 1428
    .local v7, callbacks:Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mAllAppsList:Lcom/cyanogenmod/trebuchet/AllAppsList;
    invoke-static/range {v23 .. v23}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$1200(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/AllAppsList;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/cyanogenmod/trebuchet/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1429
    .local v5, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mAllAppsList:Lcom/cyanogenmod/trebuchet/AllAppsList;
    invoke-static/range {v23 .. v23}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$1200(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/AllAppsList;

    move-result-object v23

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/cyanogenmod/trebuchet/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mHandler:Lcom/cyanogenmod/trebuchet/DeferredHandler;
    invoke-static/range {v23 .. v23}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$300(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/DeferredHandler;

    move-result-object v23

    new-instance v24, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$11;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v8, v5}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$11;-><init>(Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V

    invoke-virtual/range {v23 .. v24}, Lcom/cyanogenmod/trebuchet/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1426
    .end local v5           #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ApplicationInfo;>;"
    .end local v7           #callbacks:Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;
    .end local v8           #first:Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private loadAndBindAllApps()V
    .locals 2

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$1100(Lcom/cyanogenmod/trebuchet/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1325
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->loadAllAppsByBatch()V

    .line 1326
    monitor-enter p0

    .line 1327
    :try_start_0
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 1328
    monitor-exit p0

    .line 1335
    :goto_0
    return-void

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    const/4 v1, 0x1

    #setter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$1102(Lcom/cyanogenmod/trebuchet/LauncherModel;Z)Z

    .line 1331
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1333
    :cond_1
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->onlyBindAllApps()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$100(Lcom/cyanogenmod/trebuchet/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 756
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->loadWorkspace()V

    .line 757
    monitor-enter p0

    .line 758
    :try_start_0
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 759
    monitor-exit p0

    .line 767
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    const/4 v1, 0x1

    #setter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$102(Lcom/cyanogenmod/trebuchet/LauncherModel;Z)Z

    .line 762
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    :cond_1
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->bindWorkspace()V

    goto :goto_0

    .line 762
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private loadWorkspace()V
    .locals 52

    .prologue
    .line 961
    const-wide/16 v48, 0x0

    .line 963
    .local v48, t:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 964
    .local v13, context:Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 965
    .local v3, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    .line 966
    .local v42, manager:Landroid/content/pm/PackageManager;
    invoke-static {v13}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v51

    .line 967
    .local v51, widgets:Landroid/appwidget/AppWidgetManager;
    invoke-virtual/range {v42 .. v42}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v37

    .line 969
    .local v37, isSafeMode:Z
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 970
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 971
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 972
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 973
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 975
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v40, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 983
    .local v8, c:Landroid/database/Cursor;
    const/16 v4, 0x8

    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$700()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$800()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    filled-new-array {v4, v5, v7}, [I

    move-result-object v4

    const-class v5, Lcom/cyanogenmod/trebuchet/ItemInfo;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [[[Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 987
    .local v43, occupied:[[[Lcom/cyanogenmod/trebuchet/ItemInfo;
    :try_start_0
    const-string v4, "_id"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 988
    .local v33, idIndex:I
    const-string v4, "intent"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 990
    .local v36, intentIndex:I
    const-string v4, "title"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 992
    .local v10, titleIndex:I
    const-string v4, "iconType"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 994
    .local v14, iconTypeIndex:I
    const-string v4, "icon"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 995
    .local v9, iconIndex:I
    const-string v4, "iconPackage"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 997
    .local v15, iconPackageIndex:I
    const-string v4, "iconResource"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 999
    .local v16, iconResourceIndex:I
    const-string v4, "container"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 1001
    .local v26, containerIndex:I
    const-string v4, "itemType"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 1003
    .local v39, itemTypeIndex:I
    const-string v4, "appWidgetId"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 1005
    .local v20, appWidgetIdIndex:I
    const-string v4, "screen"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 1007
    .local v45, screenIndex:I
    const-string v4, "cellX"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 1009
    .local v22, cellXIndex:I
    const-string v4, "cellY"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 1011
    .local v23, cellYIndex:I
    const-string v4, "spanX"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 1013
    .local v46, spanXIndex:I
    const-string v4, "spanY"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 1015
    .local v47, spanYIndex:I
    const-string v4, "uri"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 1016
    .local v50, uriIndex:I
    const-string v4, "displayMode"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 1026
    .local v27, displayModeIndex:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v4, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_6

    .line 1028
    :try_start_1
    move/from16 v0, v39

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 1030
    .local v38, itemType:I
    packed-switch v38, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1033
    :pswitch_1
    move/from16 v0, v36

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v35

    .line 1035
    .local v35, intentDescription:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, v35

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 1040
    .local v6, intent:Landroid/content/Intent;
    if-nez v38, :cond_1

    .line 1041
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v5, v42

    move-object v7, v13

    invoke-virtual/range {v4 .. v11}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    move-result-object v34

    .line 1049
    .local v34, info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :goto_1
    if-eqz v34, :cond_2

    .line 1050
    move-object/from16 v0, v34

    iput-object v6, v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1051
    move/from16 v0, v33

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v34

    iput-wide v4, v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->id:J

    .line 1052
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1053
    .local v25, container:I
    move/from16 v0, v25

    int-to-long v4, v0

    move-object/from16 v0, v34

    iput-wide v4, v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->container:J

    .line 1054
    move/from16 v0, v45

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v34

    iput v4, v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->screen:I

    .line 1055
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v34

    iput v4, v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellX:I

    .line 1056
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v34

    iput v4, v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellY:I

    .line 1059
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/cyanogenmod/trebuchet/ItemInfo;Lcom/cyanogenmod/trebuchet/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1063
    packed-switch v25, :pswitch_data_1

    .line 1070
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sFolders:Ljava/util/HashMap;

    move/from16 v0, v25

    int-to-long v11, v0

    #calls: Lcom/cyanogenmod/trebuchet/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/cyanogenmod/trebuchet/FolderInfo;
    invoke-static {v4, v11, v12}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$1000(Ljava/util/HashMap;J)Lcom/cyanogenmod/trebuchet/FolderInfo;

    move-result-object v29

    .line 1072
    .local v29, folderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/FolderInfo;->add(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V

    .line 1075
    .end local v29           #folderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    :goto_2
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v34

    iget-wide v11, v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    sget-object v5, Lcom/cyanogenmod/trebuchet/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    move-object/from16 v0, v34

    invoke-virtual {v4, v5, v0, v8, v9}, Lcom/cyanogenmod/trebuchet/LauncherModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/cyanogenmod/trebuchet/ShortcutInfo;Landroid/database/Cursor;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1161
    .end local v6           #intent:Landroid/content/Intent;
    .end local v25           #container:I
    .end local v34           #info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .end local v35           #intentDescription:Ljava/lang/String;
    .end local v38           #itemType:I
    :catch_0
    move-exception v28

    .line 1162
    .local v28, e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "Launcher.Model"

    const-string v5, "Desktop items loading interrupted:"

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1166
    .end local v9           #iconIndex:I
    .end local v10           #titleIndex:I
    .end local v14           #iconTypeIndex:I
    .end local v15           #iconPackageIndex:I
    .end local v16           #iconResourceIndex:I
    .end local v20           #appWidgetIdIndex:I
    .end local v22           #cellXIndex:I
    .end local v23           #cellYIndex:I
    .end local v26           #containerIndex:I
    .end local v27           #displayModeIndex:I
    .end local v28           #e:Ljava/lang/Exception;
    .end local v33           #idIndex:I
    .end local v36           #intentIndex:I
    .end local v39           #itemTypeIndex:I
    .end local v45           #screenIndex:I
    .end local v46           #spanXIndex:I
    .end local v47           #spanYIndex:I
    .end local v50           #uriIndex:I
    :catchall_0
    move-exception v4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1036
    .restart local v9       #iconIndex:I
    .restart local v10       #titleIndex:I
    .restart local v14       #iconTypeIndex:I
    .restart local v15       #iconPackageIndex:I
    .restart local v16       #iconResourceIndex:I
    .restart local v20       #appWidgetIdIndex:I
    .restart local v22       #cellXIndex:I
    .restart local v23       #cellYIndex:I
    .restart local v26       #containerIndex:I
    .restart local v27       #displayModeIndex:I
    .restart local v33       #idIndex:I
    .restart local v35       #intentDescription:Ljava/lang/String;
    .restart local v36       #intentIndex:I
    .restart local v38       #itemType:I
    .restart local v39       #itemTypeIndex:I
    .restart local v45       #screenIndex:I
    .restart local v46       #spanXIndex:I
    .restart local v47       #spanYIndex:I
    .restart local v50       #uriIndex:I
    :catch_1
    move-exception v28

    .local v28, e:Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 1044
    .end local v28           #e:Ljava/net/URISyntaxException;
    .restart local v6       #intent:Landroid/content/Intent;
    :cond_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    move-object v12, v8

    move/from16 v17, v9

    move/from16 v18, v10

    #calls: Lcom/cyanogenmod/trebuchet/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    invoke-static/range {v11 .. v18}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$900(Lcom/cyanogenmod/trebuchet/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    move-result-object v34

    .restart local v34       #info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    goto/16 :goto_1

    .line 1066
    .restart local v25       #container:I
    :pswitch_2
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1085
    .end local v25           #container:I
    :cond_2
    move/from16 v0, v33

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 1086
    .local v31, id:J
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v31

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", removing it"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const/4 v4, 0x0

    move-wide/from16 v0, v31

    invoke-static {v0, v1, v4}, Lcom/cyanogenmod/trebuchet/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1093
    .end local v6           #intent:Landroid/content/Intent;
    .end local v31           #id:J
    .end local v34           #info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .end local v35           #intentDescription:Ljava/lang/String;
    :pswitch_3
    move/from16 v0, v33

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 1094
    .restart local v31       #id:J
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sFolders:Ljava/util/HashMap;

    move-wide/from16 v0, v31

    #calls: Lcom/cyanogenmod/trebuchet/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/cyanogenmod/trebuchet/FolderInfo;
    invoke-static {v4, v0, v1}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$1000(Ljava/util/HashMap;J)Lcom/cyanogenmod/trebuchet/FolderInfo;

    move-result-object v29

    .line 1096
    .restart local v29       #folderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1097
    move-wide/from16 v0, v31

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/cyanogenmod/trebuchet/FolderInfo;->id:J

    .line 1098
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1099
    .restart local v25       #container:I
    move/from16 v0, v25

    int-to-long v4, v0

    move-object/from16 v0, v29

    iput-wide v4, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->container:J

    .line 1100
    move/from16 v0, v45

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->screen:I

    .line 1101
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->cellX:I

    .line 1102
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->cellY:I

    .line 1105
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/cyanogenmod/trebuchet/ItemInfo;Lcom/cyanogenmod/trebuchet/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1108
    packed-switch v25, :pswitch_data_2

    .line 1115
    :goto_3
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v29

    iget-wide v11, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sFolders:Ljava/util/HashMap;

    move-object/from16 v0, v29

    iget-wide v11, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1111
    :pswitch_4
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1121
    .end local v25           #container:I
    .end local v29           #folderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    .end local v31           #id:J
    :pswitch_5
    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1122
    .local v19, appWidgetId:I
    move/from16 v0, v33

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 1124
    .restart local v31       #id:J
    move-object/from16 v0, v51

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v44

    .line 1127
    .local v44, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v37, :cond_4

    if-eqz v44, :cond_3

    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v4, :cond_3

    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 1129
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v31

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appWidgetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 1131
    .local v41, log:Ljava/lang/String;
    const-string v4, "Launcher.Model"

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    sget-object v4, Lcom/cyanogenmod/trebuchet/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1135
    .end local v41           #log:Ljava/lang/String;
    :cond_4
    new-instance v21, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;-><init>(I)V

    .line 1136
    .local v21, appWidgetInfo:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;
    move-wide/from16 v0, v31

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->id:J

    .line 1137
    move/from16 v0, v45

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->screen:I

    .line 1138
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->cellX:I

    .line 1139
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->cellY:I

    .line 1140
    move/from16 v0, v46

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->spanX:I

    .line 1141
    move/from16 v0, v47

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->spanY:I

    .line 1143
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1144
    .restart local v25       #container:I
    const/16 v4, -0x64

    move/from16 v0, v25

    if-eq v0, v4, :cond_5

    const/16 v4, -0x65

    move/from16 v0, v25

    if-eq v0, v4, :cond_5

    .line 1146
    const-string v4, "Launcher.Model"

    const-string v5, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1150
    :cond_5
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->container:J

    .line 1153
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/cyanogenmod/trebuchet/ItemInfo;Lcom/cyanogenmod/trebuchet/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1156
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-wide v11, v0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 1166
    .end local v19           #appWidgetId:I
    .end local v21           #appWidgetInfo:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;
    .end local v25           #container:I
    .end local v31           #id:J
    .end local v38           #itemType:I
    .end local v44           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1169
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 1170
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v24

    .line 1173
    .local v24, client:Landroid/content/ContentProviderClient;
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    .line 1179
    .restart local v31       #id:J
    const/4 v4, 0x0

    :try_start_6
    move-wide/from16 v0, v31

    invoke-static {v0, v1, v4}, Lcom/cyanogenmod/trebuchet/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v7}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 1181
    :catch_2
    move-exception v28

    .line 1182
    .local v28, e:Landroid/os/RemoteException;
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not remove id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v31

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1203
    .end local v24           #client:Landroid/content/ContentProviderClient;
    .end local v28           #e:Landroid/os/RemoteException;
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v31           #id:J
    :cond_7
    return-void

    .line 1030
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1063
    :pswitch_data_1
    .packed-switch -0x65
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1108
    :pswitch_data_2
    .packed-switch -0x65
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private onlyBindAllApps()V
    .locals 4

    .prologue
    .line 1338
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$400(Lcom/cyanogenmod/trebuchet/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;

    .line 1339
    .local v1, oldCallbacks:Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;
    if-nez v1, :cond_0

    .line 1341
    const-string v2, "Launcher.Model"

    const-string v3, "LoaderTask running with no launcher (onlyBindAllApps)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :goto_0
    return-void

    .line 1346
    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mAllAppsList:Lcom/cyanogenmod/trebuchet/AllAppsList;
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$1200(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/cyanogenmod/trebuchet/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1348
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ApplicationInfo;>;"
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mHandler:Lcom/cyanogenmod/trebuchet/DeferredHandler;
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$300(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$10;

    invoke-direct {v3, p0, v1, v0}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$10;-><init>(Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/trebuchet/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private waitForIdle()V
    .locals 4

    .prologue
    .line 773
    monitor-enter p0

    .line 774
    const-wide/16 v0, 0x0

    .line 776
    .local v0, workspaceWaitTime:J
    :try_start_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mHandler:Lcom/cyanogenmod/trebuchet/DeferredHandler;
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$300(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$1;-><init>(Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/trebuchet/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 788
    :goto_0
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 790
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 791
    :catch_0
    move-exception v2

    goto :goto_0

    .line 800
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 801
    return-void

    .line 800
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .prologue
    .line 1463
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mWaitThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mWaitThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mIsLaunching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mLoadAndBindStepFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItems size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    return-void
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 807
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v5}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$400(Lcom/cyanogenmod/trebuchet/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;

    .line 808
    .local v0, cbk:Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;->isAllAppsVisible()Z

    move-result v5

    if-nez v5, :cond_2

    .line 813
    .local v3, loadWorkspaceFirst:Z
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$500(Lcom/cyanogenmod/trebuchet/LauncherModel;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 816
    :try_start_0
    iget-boolean v6, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v6, :cond_1

    const/4 v4, -0x2

    :cond_1
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 818
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    if-eqz v3, :cond_3

    .line 821
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    .line 827
    :goto_1
    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_4

    .line 859
    :goto_2
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 860
    .local v2, key:Ljava/lang/Object;
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object v4, v2

    check-cast v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    sget-object v5, Lcom/cyanogenmod/trebuchet/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v6, v7, v4, v5}, Lcom/cyanogenmod/trebuchet/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ShortcutInfo;[B)V

    goto :goto_3

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #loadWorkspaceFirst:Z
    :cond_2
    move v3, v4

    .line 808
    goto :goto_0

    .line 818
    .restart local v3       #loadWorkspaceFirst:Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 824
    :cond_3
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    goto :goto_1

    .line 833
    :cond_4
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$500(Lcom/cyanogenmod/trebuchet/LauncherModel;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 834
    :try_start_2
    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v4, :cond_5

    .line 836
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 838
    :cond_5
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 839
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->waitForIdle()V

    .line 842
    if-eqz v3, :cond_6

    .line 844
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    .line 851
    :goto_4
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$500(Lcom/cyanogenmod/trebuchet/LauncherModel;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 852
    const/4 v4, 0x0

    :try_start_3
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 853
    monitor-exit v5

    goto :goto_2

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 838
    :catchall_2
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4

    .line 847
    :cond_6
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    goto :goto_4

    .line 862
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_7
    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 866
    iput-object v8, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 868
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$500(Lcom/cyanogenmod/trebuchet/LauncherModel;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 870
    :try_start_5
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mLoaderTask:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;
    invoke-static {v4}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$600(Lcom/cyanogenmod/trebuchet/LauncherModel;)Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

    move-result-object v4

    if-ne v4, p0, :cond_8

    .line 871
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    const/4 v6, 0x0

    #setter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mLoaderTask:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;
    invoke-static {v4, v6}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$602(Lcom/cyanogenmod/trebuchet/LauncherModel;Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;)Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

    .line 873
    :cond_8
    monitor-exit v5

    .line 874
    return-void

    .line 873
    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v4
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 877
    monitor-enter p0

    .line 878
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mStopped:Z

    .line 879
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 880
    monitor-exit p0

    .line 881
    return-void

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;)Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;
    .locals 5
    .parameter "oldCallbacks"

    .prologue
    const/4 v1, 0x0

    .line 891
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$500(Lcom/cyanogenmod/trebuchet/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 892
    :try_start_0
    iget-boolean v3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_0

    .line 893
    monitor-exit v2

    move-object v0, v1

    .line 909
    :goto_0
    return-object v0

    .line 896
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$400(Lcom/cyanogenmod/trebuchet/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 897
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 900
    :cond_1
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$400(Lcom/cyanogenmod/trebuchet/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;

    .line 901
    .local v0, callbacks:Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 902
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 904
    :cond_2
    if-nez v0, :cond_3

    .line 905
    const-string v3, "Launcher.Model"

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 909
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 910
    .end local v0           #callbacks:Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
