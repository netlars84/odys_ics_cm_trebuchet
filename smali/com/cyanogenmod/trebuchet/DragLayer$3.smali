.class Lcom/cyanogenmod/trebuchet/DragLayer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/DragLayer;

.field final synthetic val$fadeOut:Z

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/DragLayer;Ljava/lang/Runnable;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/DragLayer$3;->this$0:Lcom/cyanogenmod/trebuchet/DragLayer;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/cyanogenmod/trebuchet/DragLayer$3;->val$fadeOut:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 571
    :cond_0
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer$3;->val$fadeOut:Z

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer$3;->this$0:Lcom/cyanogenmod/trebuchet/DragLayer;

    #calls: Lcom/cyanogenmod/trebuchet/DragLayer;->fadeOutDragView()V
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/DragLayer;->access$300(Lcom/cyanogenmod/trebuchet/DragLayer;)V

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer$3;->this$0:Lcom/cyanogenmod/trebuchet/DragLayer;

    const/4 v1, 0x0

    #setter for: Lcom/cyanogenmod/trebuchet/DragLayer;->mDropView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/DragLayer;->access$402(Lcom/cyanogenmod/trebuchet/DragLayer;Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method
