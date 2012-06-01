.class Lcom/cyanogenmod/trebuchet/Launcher$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Launcher;->showAppsCustomizeHelper(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field animationCancelled:Z

.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Launcher;

.field final synthetic val$instance:Lcom/cyanogenmod/trebuchet/Launcher;

.field final synthetic val$scaleAnim:Landroid/animation/ValueAnimator;

.field final synthetic val$springLoaded:Z

.field final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/view/View;Lcom/cyanogenmod/trebuchet/Launcher;Landroid/animation/ValueAnimator;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2388
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->val$toView:Landroid/view/View;

    iput-object p3, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->val$instance:Lcom/cyanogenmod/trebuchet/Launcher;

    iput-object p4, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->val$scaleAnim:Landroid/animation/ValueAnimator;

    iput-boolean p5, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->val$springLoaded:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->animationCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 2424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->animationCancelled:Z

    .line 2425
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    const/high16 v1, 0x3f80

    .line 2405
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->val$toView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2406
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->val$toView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2407
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->val$toView:Landroid/view/View;

    instance-of v0, v0, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 2408
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->val$toView:Landroid/view/View;

    check-cast v0, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->val$instance:Lcom/cyanogenmod/trebuchet/Launcher;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->val$scaleAnim:Landroid/animation/ValueAnimator;

    invoke-interface {v0, v1, v2, v3}, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/animation/Animator;Z)V

    .line 2412
    :cond_0
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->val$springLoaded:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2414
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->access$100(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->hideScrollingIndicator(Z)V

    .line 2415
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->hideDockDivider()V

    .line 2417
    :cond_1
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->animationCancelled:Z

    if-nez v0, :cond_2

    .line 2418
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/Launcher;->updateWallpaperVisibility(Z)V

    .line 2420
    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 2393
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->updateWallpaperVisibility(Z)V

    .line 2395
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->val$toView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 2396
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->val$toView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2397
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->val$toView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2398
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$14;->val$toView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 2399
    return-void
.end method
