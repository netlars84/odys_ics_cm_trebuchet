.class Lcom/cyanogenmod/trebuchet/Launcher$18;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Launcher;->exitSpringLoadedDragModeDelayed(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Launcher;

.field final synthetic val$successfulDrop:Z


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2615
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$18;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    iput-boolean p2, p0, Lcom/cyanogenmod/trebuchet/Launcher$18;->val$successfulDrop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2618
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$18;->val$successfulDrop:Z

    if-eqz v0, :cond_0

    .line 2622
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$18;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->access$1300(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->setVisibility(I)V

    .line 2623
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$18;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mSearchDropTargetBar:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2800(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->showSearchBar(Z)V

    .line 2624
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$18;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->showWorkspace(Z)V

    .line 2628
    :goto_0
    return-void

    .line 2626
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$18;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->exitSpringLoadedDragMode()V

    goto :goto_0
.end method
