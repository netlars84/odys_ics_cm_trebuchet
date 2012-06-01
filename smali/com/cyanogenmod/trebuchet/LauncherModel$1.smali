.class Lcom/cyanogenmod/trebuchet/LauncherModel$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/LauncherModel;->unbindWorkspaceItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/LauncherModel;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$1;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$1;->this$0:Lcom/cyanogenmod/trebuchet/LauncherModel;

    #calls: Lcom/cyanogenmod/trebuchet/LauncherModel;->unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$000(Lcom/cyanogenmod/trebuchet/LauncherModel;)Ljava/util/ArrayList;

    .line 164
    return-void
.end method
