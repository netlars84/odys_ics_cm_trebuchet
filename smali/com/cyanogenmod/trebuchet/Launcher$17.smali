.class Lcom/cyanogenmod/trebuchet/Launcher$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Launcher;->hideAppsCustomizeHelper(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Launcher;

.field final synthetic val$alphaAnim:Landroid/animation/ValueAnimator;

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$instance:Lcom/cyanogenmod/trebuchet/Launcher;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/view/View;Lcom/cyanogenmod/trebuchet/Launcher;Landroid/animation/ValueAnimator;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2509
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$17;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/Launcher$17;->val$fromView:Landroid/view/View;

    iput-object p3, p0, Lcom/cyanogenmod/trebuchet/Launcher$17;->val$instance:Lcom/cyanogenmod/trebuchet/Launcher;

    iput-object p4, p0, Lcom/cyanogenmod/trebuchet/Launcher$17;->val$alphaAnim:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x1

    .line 2512
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$17;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/Launcher;->updateWallpaperVisibility(Z)V

    .line 2513
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$17;->val$fromView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2514
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$17;->val$fromView:Landroid/view/View;

    instance-of v0, v0, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 2515
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$17;->val$fromView:Landroid/view/View;

    check-cast v0, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$17;->val$instance:Lcom/cyanogenmod/trebuchet/Launcher;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$17;->val$alphaAnim:Landroid/animation/ValueAnimator;

    invoke-interface {v0, v1, v2, v3}, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/animation/Animator;Z)V

    .line 2518
    :cond_0
    return-void
.end method
