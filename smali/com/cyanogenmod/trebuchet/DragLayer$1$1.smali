.class Lcom/cyanogenmod/trebuchet/DragLayer$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/DragLayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cyanogenmod/trebuchet/DragLayer$1;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/DragLayer$1;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/DragLayer$1$1;->this$1:Lcom/cyanogenmod/trebuchet/DragLayer$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer$1$1;->this$1:Lcom/cyanogenmod/trebuchet/DragLayer$1;

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/DragLayer$1;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer$1$1;->this$1:Lcom/cyanogenmod/trebuchet/DragLayer$1;

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/DragLayer$1;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 472
    :cond_0
    return-void
.end method
