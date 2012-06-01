.class final Lcom/cyanogenmod/trebuchet/LauncherModel$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

.field final synthetic val$uriToDelete:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/cyanogenmod/trebuchet/ItemInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$5;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$5;->val$uriToDelete:Landroid/net/Uri;

    iput-object p3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$5;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 503
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$5;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$5;->val$uriToDelete:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$5;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget v0, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 517
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$5;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget-wide v1, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$5;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    return-void

    .line 506
    :pswitch_1
    sget-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sFolders:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$5;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget-wide v1, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$5;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 511
    :pswitch_2
    sget-object v0, Lcom/cyanogenmod/trebuchet/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$5;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 514
    :pswitch_3
    sget-object v1, Lcom/cyanogenmod/trebuchet/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$5;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    check-cast v0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
