.class Lcom/cyanogenmod/trebuchet/PagedView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/PagedView;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/PagedView;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/PagedView;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 982
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/PagedView$1;->this$0:Lcom/cyanogenmod/trebuchet/PagedView;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/PagedView$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 984
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 985
    return-void
.end method
