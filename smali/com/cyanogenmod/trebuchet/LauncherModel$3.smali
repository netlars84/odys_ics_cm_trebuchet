.class final Lcom/cyanogenmod/trebuchet/LauncherModel$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/cyanogenmod/trebuchet/ItemInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callingFunction:Ljava/lang/String;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

.field final synthetic val$itemId:J

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;JLcom/cyanogenmod/trebuchet/ItemInfo;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$values:Landroid/content/ContentValues;

    iput-wide p4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$itemId:J

    iput-object p6, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iput-object p7, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$callingFunction:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 213
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 215
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    iget-wide v3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$itemId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 216
    .local v0, modelItem:Lcom/cyanogenmod/trebuchet/ItemInfo;
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    if-eq v2, v0, :cond_2

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "modelItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Error: ItemInfo passed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$callingFunction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t match original"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, msg:Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    const-string v2, "null"

    goto :goto_0

    :cond_1
    const-string v2, "null"

    goto :goto_1

    .line 228
    :cond_2
    iget-wide v2, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget-wide v2, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 230
    :cond_3
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 231
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_4
    :goto_2
    return-void

    .line 234
    :cond_5
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method
