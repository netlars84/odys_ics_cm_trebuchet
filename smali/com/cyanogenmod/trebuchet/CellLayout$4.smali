.class Lcom/cyanogenmod/trebuchet/CellLayout$4;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/CellLayout;->animateChildToPosition(Landroid/view/View;IIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/CellLayout;

.field final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/CellLayout$4;->this$0:Lcom/cyanogenmod/trebuchet/CellLayout;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/CellLayout$4;->val$child:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout$4;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1003
    return-void
.end method
