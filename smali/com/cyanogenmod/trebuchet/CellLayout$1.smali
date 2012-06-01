.class Lcom/cyanogenmod/trebuchet/CellLayout$1;
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


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/CellLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/CellLayout$1;->this$0:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 192
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout$1;->this$0:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    #setter for: Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsVisibility:F
    invoke-static {v1, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->access$002(Lcom/cyanogenmod/trebuchet/CellLayout;F)F

    .line 193
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout$1;->this$0:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->invalidate()V

    .line 194
    return-void
.end method
