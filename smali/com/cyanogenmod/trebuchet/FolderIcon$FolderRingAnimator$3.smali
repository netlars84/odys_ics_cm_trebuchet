.class Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator$3;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->animateToNaturalState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator$3;->this$0:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/high16 v4, 0x3f80

    .line 214
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 215
    .local v0, percent:F
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator$3;->this$0:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    sub-float v2, v4, v0

    const v3, 0x3e99999a

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    sget v3, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mOuterRingSize:F

    .line 216
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator$3;->this$0:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    sub-float v2, v4, v0

    const v3, 0x3e19999a

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    sget v3, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mInnerRingSize:F

    .line 217
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator$3;->this$0:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    #getter for: Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/cyanogenmod/trebuchet/CellLayout;
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->access$100(Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;)Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator$3;->this$0:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    #getter for: Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/cyanogenmod/trebuchet/CellLayout;
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->access$100(Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;)Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->invalidate()V

    .line 220
    :cond_0
    return-void
.end method
