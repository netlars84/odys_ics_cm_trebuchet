.class Lcom/cyanogenmod/trebuchet/DragLayer$4;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 586
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/DragLayer$4;->this$0:Lcom/cyanogenmod/trebuchet/DragLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9
    .parameter "animation"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 588
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 589
    .local v1, percent:F
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/DragLayer$4;->this$0:Lcom/cyanogenmod/trebuchet/DragLayer;

    const/high16 v4, 0x3f80

    sub-float/2addr v4, v1

    #setter for: Lcom/cyanogenmod/trebuchet/DragLayer;->mDropViewAlpha:F
    invoke-static {v3, v4}, Lcom/cyanogenmod/trebuchet/DragLayer;->access$202(Lcom/cyanogenmod/trebuchet/DragLayer;F)F

    .line 590
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/DragLayer$4;->this$0:Lcom/cyanogenmod/trebuchet/DragLayer;

    #getter for: Lcom/cyanogenmod/trebuchet/DragLayer;->mDropView:Landroid/view/View;
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/DragLayer;->access$400(Lcom/cyanogenmod/trebuchet/DragLayer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 591
    .local v2, width:I
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/DragLayer$4;->this$0:Lcom/cyanogenmod/trebuchet/DragLayer;

    #getter for: Lcom/cyanogenmod/trebuchet/DragLayer;->mDropView:Landroid/view/View;
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/DragLayer;->access$400(Lcom/cyanogenmod/trebuchet/DragLayer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 592
    .local v0, height:I
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/DragLayer$4;->this$0:Lcom/cyanogenmod/trebuchet/DragLayer;

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragLayer$4;->this$0:Lcom/cyanogenmod/trebuchet/DragLayer;

    #getter for: Lcom/cyanogenmod/trebuchet/DragLayer;->mDropViewPos:[I
    invoke-static {v4}, Lcom/cyanogenmod/trebuchet/DragLayer;->access$000(Lcom/cyanogenmod/trebuchet/DragLayer;)[I

    move-result-object v4

    aget v4, v4, v7

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DragLayer$4;->this$0:Lcom/cyanogenmod/trebuchet/DragLayer;

    #getter for: Lcom/cyanogenmod/trebuchet/DragLayer;->mDropViewPos:[I
    invoke-static {v5}, Lcom/cyanogenmod/trebuchet/DragLayer;->access$000(Lcom/cyanogenmod/trebuchet/DragLayer;)[I

    move-result-object v5

    aget v5, v5, v8

    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/DragLayer$4;->this$0:Lcom/cyanogenmod/trebuchet/DragLayer;

    #getter for: Lcom/cyanogenmod/trebuchet/DragLayer;->mDropViewPos:[I
    invoke-static {v6}, Lcom/cyanogenmod/trebuchet/DragLayer;->access$000(Lcom/cyanogenmod/trebuchet/DragLayer;)[I

    move-result-object v6

    aget v6, v6, v7

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/DragLayer$4;->this$0:Lcom/cyanogenmod/trebuchet/DragLayer;

    #getter for: Lcom/cyanogenmod/trebuchet/DragLayer;->mDropViewPos:[I
    invoke-static {v7}, Lcom/cyanogenmod/trebuchet/DragLayer;->access$000(Lcom/cyanogenmod/trebuchet/DragLayer;)[I

    move-result-object v7

    aget v7, v7, v8

    add-int/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/cyanogenmod/trebuchet/DragLayer;->invalidate(IIII)V

    .line 594
    return-void
.end method
