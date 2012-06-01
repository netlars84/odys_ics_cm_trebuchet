.class Lcom/cyanogenmod/trebuchet/Workspace$10;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Workspace;->onDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
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
    .line 2626
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Workspace$10;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$10;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mAnimatingViewIntoPlace:Z

    .line 2630
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$10;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #calls: Lcom/cyanogenmod/trebuchet/Workspace;->updateChildrenLayersEnabled()V
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->access$300(Lcom/cyanogenmod/trebuchet/Workspace;)V

    .line 2631
    return-void
.end method
