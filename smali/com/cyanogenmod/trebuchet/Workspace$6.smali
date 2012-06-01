.class Lcom/cyanogenmod/trebuchet/Workspace$6;
.super Lcom/cyanogenmod/trebuchet/LauncherAnimatorUpdateListener;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Workspace;->changeState(Lcom/cyanogenmod/trebuchet/Workspace$State;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Workspace;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 2050
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherAnimatorUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(FF)V
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 2052
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #setter for: Lcom/cyanogenmod/trebuchet/Workspace;->mTransitionProgress:F
    invoke-static {v2, p2}, Lcom/cyanogenmod/trebuchet/Workspace;->access$802(Lcom/cyanogenmod/trebuchet/Workspace;F)F

    .line 2053
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    .line 2073
    :goto_0
    return-void

    .line 2057
    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->invalidate()V

    .line 2058
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2059
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v2, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 2060
    .local v0, cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->invalidate()V

    .line 2061
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mOldTranslationXs:[F
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->access$900(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mNewTranslationXs:[F
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/Workspace;->access$1000(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastTranslationX(F)V

    .line 2062
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mOldTranslationYs:[F
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->access$1100(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mNewTranslationYs:[F
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/Workspace;->access$1200(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastTranslationY(F)V

    .line 2063
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mOldScaleXs:[F
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->access$1300(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mNewScaleXs:[F
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/Workspace;->access$1400(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastScaleX(F)V

    .line 2064
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mOldScaleYs:[F
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->access$1500(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mNewScaleYs:[F
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/Workspace;->access$1600(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastScaleY(F)V

    .line 2065
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mOldBackgroundAlphas:[F
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->access$1700(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mNewBackgroundAlphas:[F
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/Workspace;->access$1800(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastBackgroundAlpha(F)V

    .line 2067
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mOldBackgroundAlphaMultipliers:[F
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->access$1900(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mNewBackgroundAlphaMultipliers:[F
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/Workspace;->access$2000(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 2069
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mOldAlphas:[F
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->access$2100(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mNewAlphas:[F
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/Workspace;->access$2200(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastAlpha(F)V

    .line 2070
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->invalidate()V

    .line 2058
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2072
    .end local v0           #cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    :cond_1
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$6;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #calls: Lcom/cyanogenmod/trebuchet/Workspace;->syncChildrenLayersEnabledOnVisiblePages()V
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->access$2300(Lcom/cyanogenmod/trebuchet/Workspace;)V

    goto/16 :goto_0
.end method
