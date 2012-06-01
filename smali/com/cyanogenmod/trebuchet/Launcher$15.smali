.class Lcom/cyanogenmod/trebuchet/Launcher$15;
.super Lcom/cyanogenmod/trebuchet/LauncherAnimatorUpdateListener;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Launcher;->hideAppsCustomizeHelper(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Launcher;

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$oldScaleX:F

.field final synthetic val$oldScaleY:F

.field final synthetic val$scaleFactor:F


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/view/View;FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2491
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$15;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/Launcher$15;->val$fromView:Landroid/view/View;

    iput p3, p0, Lcom/cyanogenmod/trebuchet/Launcher$15;->val$oldScaleX:F

    iput p4, p0, Lcom/cyanogenmod/trebuchet/Launcher$15;->val$scaleFactor:F

    iput p5, p0, Lcom/cyanogenmod/trebuchet/Launcher$15;->val$oldScaleY:F

    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherAnimatorUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(FF)V
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 2493
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$15;->val$fromView:Landroid/view/View;

    iget v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$15;->val$oldScaleX:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$15;->val$scaleFactor:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2494
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$15;->val$fromView:Landroid/view/View;

    iget v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$15;->val$oldScaleY:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$15;->val$scaleFactor:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2495
    return-void
.end method
