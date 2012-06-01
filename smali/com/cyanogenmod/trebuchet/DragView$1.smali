.class Lcom/cyanogenmod/trebuchet/DragView$1;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/DragView;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/graphics/Bitmap;IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/DragView;

.field final synthetic val$offsetX:I

.field final synthetic val$offsetY:I


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/DragView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/DragView$1;->this$0:Lcom/cyanogenmod/trebuchet/DragView;

    iput p2, p0, Lcom/cyanogenmod/trebuchet/DragView$1;->val$offsetX:I

    iput p3, p0, Lcom/cyanogenmod/trebuchet/DragView$1;->val$offsetY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 86
    .local v3, value:F
    iget v4, p0, Lcom/cyanogenmod/trebuchet/DragView$1;->val$offsetX:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DragView$1;->this$0:Lcom/cyanogenmod/trebuchet/DragView;

    #getter for: Lcom/cyanogenmod/trebuchet/DragView;->mOffsetX:F
    invoke-static {v5}, Lcom/cyanogenmod/trebuchet/DragView;->access$000(Lcom/cyanogenmod/trebuchet/DragView;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 87
    .local v0, deltaX:I
    iget v4, p0, Lcom/cyanogenmod/trebuchet/DragView$1;->val$offsetY:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DragView$1;->this$0:Lcom/cyanogenmod/trebuchet/DragView;

    #getter for: Lcom/cyanogenmod/trebuchet/DragView;->mOffsetY:F
    invoke-static {v5}, Lcom/cyanogenmod/trebuchet/DragView;->access$100(Lcom/cyanogenmod/trebuchet/DragView;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 89
    .local v1, deltaY:I
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragView$1;->this$0:Lcom/cyanogenmod/trebuchet/DragView;

    int-to-float v5, v0

    invoke-static {v4, v5}, Lcom/cyanogenmod/trebuchet/DragView;->access$016(Lcom/cyanogenmod/trebuchet/DragView;F)F

    .line 90
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragView$1;->this$0:Lcom/cyanogenmod/trebuchet/DragView;

    int-to-float v5, v1

    invoke-static {v4, v5}, Lcom/cyanogenmod/trebuchet/DragView;->access$116(Lcom/cyanogenmod/trebuchet/DragView;F)F

    .line 92
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragView$1;->this$0:Lcom/cyanogenmod/trebuchet/DragView;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragView$1;->this$0:Lcom/cyanogenmod/trebuchet/DragView;

    #getter for: Lcom/cyanogenmod/trebuchet/DragView;->mLayoutParams:Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;
    invoke-static {v4}, Lcom/cyanogenmod/trebuchet/DragView;->access$200(Lcom/cyanogenmod/trebuchet/DragView;)Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;

    move-result-object v2

    .line 96
    .local v2, lp:Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;
    iget v4, v2, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->x:I

    add-int/2addr v4, v0

    iput v4, v2, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->x:I

    .line 97
    iget v4, v2, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->y:I

    add-int/2addr v4, v1

    iput v4, v2, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->y:I

    .line 98
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragView$1;->this$0:Lcom/cyanogenmod/trebuchet/DragView;

    #getter for: Lcom/cyanogenmod/trebuchet/DragView;->mDragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;
    invoke-static {v4}, Lcom/cyanogenmod/trebuchet/DragView;->access$300(Lcom/cyanogenmod/trebuchet/DragView;)Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/DragLayer;->requestLayout()V

    goto :goto_0
.end method
