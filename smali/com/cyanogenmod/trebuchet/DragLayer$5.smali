.class Lcom/cyanogenmod/trebuchet/DragLayer$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/DragLayer;->fadeOutDragView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/DragLayer;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/DragLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/DragLayer$5;->this$0:Lcom/cyanogenmod/trebuchet/DragLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer$5;->this$0:Lcom/cyanogenmod/trebuchet/DragLayer;

    const/4 v1, 0x0

    #setter for: Lcom/cyanogenmod/trebuchet/DragLayer;->mDropView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/DragLayer;->access$402(Lcom/cyanogenmod/trebuchet/DragLayer;Landroid/view/View;)Landroid/view/View;

    .line 599
    return-void
.end method
