.class Lcom/cyanogenmod/trebuchet/Workspace$11;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/cyanogenmod/trebuchet/CellLayout;ZLcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Workspace;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 3250
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Workspace$11;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3253
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$11;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->access$2800(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->exitSpringLoadedDragModeDelayed(ZZ)V

    .line 3254
    return-void
.end method
