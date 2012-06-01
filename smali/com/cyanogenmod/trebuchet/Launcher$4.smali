.class Lcom/cyanogenmod/trebuchet/Launcher$4;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Launcher;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFirstTime:Z

.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Launcher;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$workspace:Lcom/cyanogenmod/trebuchet/Workspace;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/Workspace;Landroid/view/ViewTreeObserver;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$4;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/Launcher$4;->val$workspace:Lcom/cyanogenmod/trebuchet/Workspace;

    iput-object p3, p0, Lcom/cyanogenmod/trebuchet/Launcher$4;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$4;->mFirstTime:Z

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$4;->mFirstTime:Z

    if-eqz v0, :cond_0

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$4;->mFirstTime:Z

    .line 618
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$4;->val$workspace:Lcom/cyanogenmod/trebuchet/Workspace;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$4;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->access$800(Lcom/cyanogenmod/trebuchet/Launcher;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/cyanogenmod/trebuchet/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 616
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$4;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
