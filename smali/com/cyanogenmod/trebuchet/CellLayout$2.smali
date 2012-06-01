.class Lcom/cyanogenmod/trebuchet/CellLayout$2;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/CellLayout;

.field final synthetic val$anim:Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

.field final synthetic val$thisIndex:I


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/CellLayout;Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/CellLayout$2;->this$0:Lcom/cyanogenmod/trebuchet/CellLayout;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/CellLayout$2;->val$anim:Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    iput p3, p0, Lcom/cyanogenmod/trebuchet/CellLayout$2;->val$thisIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 220
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/CellLayout$2;->val$anim:Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 224
    .local v1, outline:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 231
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 239
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/CellLayout$2;->this$0:Lcom/cyanogenmod/trebuchet/CellLayout;

    #getter for: Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineAlphas:[F
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->access$100(Lcom/cyanogenmod/trebuchet/CellLayout;)[F

    move-result-object v4

    iget v5, p0, Lcom/cyanogenmod/trebuchet/CellLayout$2;->val$thisIndex:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v4, v5

    .line 234
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/CellLayout$2;->this$0:Lcom/cyanogenmod/trebuchet/CellLayout;

    #getter for: Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlines:[Landroid/graphics/Point;
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->access$200(Lcom/cyanogenmod/trebuchet/CellLayout;)[Landroid/graphics/Point;

    move-result-object v3

    iget v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout$2;->val$thisIndex:I

    aget-object v3, v3, v4

    iget v0, v3, Landroid/graphics/Point;->x:I

    .line 235
    .local v0, left:I
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/CellLayout$2;->this$0:Lcom/cyanogenmod/trebuchet/CellLayout;

    #getter for: Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlines:[Landroid/graphics/Point;
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->access$200(Lcom/cyanogenmod/trebuchet/CellLayout;)[Landroid/graphics/Point;

    move-result-object v3

    iget v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout$2;->val$thisIndex:I

    aget-object v3, v3, v4

    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 236
    .local v2, top:I
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/CellLayout$2;->this$0:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->invalidate(IIII)V

    goto :goto_0
.end method
