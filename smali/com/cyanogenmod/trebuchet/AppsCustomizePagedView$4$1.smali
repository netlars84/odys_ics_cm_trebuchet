.class Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;

.field final synthetic val$animationBuffer:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;Landroid/widget/FrameLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 913
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4$1;->this$1:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4$1;->val$animationBuffer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4$1;->val$animationBuffer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 922
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4$1;->val$animationBuffer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 923
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 916
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4$1;->val$animationBuffer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 917
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4$1;->val$animationBuffer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 918
    return-void
.end method
