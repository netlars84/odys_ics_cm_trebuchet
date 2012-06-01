.class final Lcom/cyanogenmod/trebuchet/LauncherModel$6;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/LauncherModel;->deleteFolderContentsFromDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/FolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$info:Lcom/cyanogenmod/trebuchet/FolderInfo;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/cyanogenmod/trebuchet/FolderInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$6;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$6;->val$info:Lcom/cyanogenmod/trebuchet/FolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 536
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$6;->val$cr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$6;->val$info:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-wide v3, v3, Lcom/cyanogenmod/trebuchet/FolderInfo;->id:J

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/cyanogenmod/trebuchet/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 537
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$6;->val$info:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-wide v3, v3, Lcom/cyanogenmod/trebuchet/FolderInfo;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sFolders:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$6;->val$info:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-wide v3, v3, Lcom/cyanogenmod/trebuchet/FolderInfo;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$6;->val$info:Lcom/cyanogenmod/trebuchet/FolderInfo;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$6;->val$info:Lcom/cyanogenmod/trebuchet/FolderInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 542
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$6;->val$cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/cyanogenmod/trebuchet/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$6;->val$info:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-wide v5, v5, Lcom/cyanogenmod/trebuchet/FolderInfo;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 544
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$6;->val$info:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-object v2, v2, Lcom/cyanogenmod/trebuchet/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 545
    .local v0, childInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    iget-wide v3, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 548
    .end local v0           #childInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;
    :cond_0
    return-void
.end method
