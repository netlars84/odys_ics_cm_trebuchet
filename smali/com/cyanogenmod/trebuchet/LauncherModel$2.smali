.class Lcom/cyanogenmod/trebuchet/LauncherModel$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/LauncherModel;->unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

.field final synthetic val$appWidgets:Ljava/util/ArrayList;

.field final synthetic val$workspaceItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/LauncherModel;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$2;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$2;->val$workspaceItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$2;->val$appWidgets:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 178
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$2;->val$workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 179
    .local v1, item:Lcom/cyanogenmod/trebuchet/ItemInfo;
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/ItemInfo;->unbind()V

    goto :goto_0

    .line 181
    .end local v1           #item:Lcom/cyanogenmod/trebuchet/ItemInfo;
    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$2;->val$appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 182
    .restart local v1       #item:Lcom/cyanogenmod/trebuchet/ItemInfo;
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/ItemInfo;->unbind()V

    goto :goto_1

    .line 184
    .end local v1           #item:Lcom/cyanogenmod/trebuchet/ItemInfo;
    :cond_1
    return-void
.end method
