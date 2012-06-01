.class Lcom/cyanogenmod/trebuchet/Workspace$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Workspace;->initWorkspace()V
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
    .line 497
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Workspace$1;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 505
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$1;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #setter for: Lcom/cyanogenmod/trebuchet/Workspace;->mIsSwitchingState:Z
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->access$002(Lcom/cyanogenmod/trebuchet/Workspace;Z)Z

    .line 506
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$1;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mScrollWallpaper:Z
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->access$100(Lcom/cyanogenmod/trebuchet/Workspace;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$1;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperOffset:Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;->setOverrideHorizontalCatchupConstant(Z)V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$1;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    const/4 v1, 0x0

    #setter for: Lcom/cyanogenmod/trebuchet/Workspace;->mAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->access$202(Lcom/cyanogenmod/trebuchet/Workspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 510
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$1;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #calls: Lcom/cyanogenmod/trebuchet/Workspace;->updateChildrenLayersEnabled()V
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->access$300(Lcom/cyanogenmod/trebuchet/Workspace;)V

    .line 511
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$1;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    const/4 v1, 0x1

    #setter for: Lcom/cyanogenmod/trebuchet/Workspace;->mIsSwitchingState:Z
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->access$002(Lcom/cyanogenmod/trebuchet/Workspace;Z)Z

    .line 501
    return-void
.end method
