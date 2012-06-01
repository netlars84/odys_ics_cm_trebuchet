.class public Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;
.super Landroid/widget/GridLayout;
.source "PagedViewGridLayout.java"

# interfaces
.implements Lcom/cyanogenmod/trebuchet/Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/PagedViewGridLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mCellCountX:I

.field private mCellCountY:I

.field private mOnLayoutListener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "cellCountX"
    .parameter "cellCountY"

    .prologue
    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput p2, p0, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->mCellCountX:I

    .line 38
    iput p3, p0, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->mCellCountY:I

    .line 39
    return-void
.end method


# virtual methods
.method createHardwareLayer()V
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 107
    return-void
.end method

.method destroyHardwareLayer()V
    .locals 2

    .prologue
    .line 102
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 103
    return-void
.end method

.method getCellCountX()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->mCellCountX:I

    return v0
.end method

.method getCellCountY()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->mCellCountY:I

    return v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "i"

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageChildCount()I
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->mOnLayoutListener:Ljava/lang/Runnable;

    .line 75
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 82
    invoke-super/range {p0 .. p5}, Landroid/widget/GridLayout;->onLayout(ZIIII)V

    .line 83
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->mOnLayoutListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->mOnLayoutListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 86
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 66
    .local v1, widthSpecSize:I
    const/high16 v0, 0x4000

    .line 67
    .local v0, widthSpecMode:I
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/GridLayout;->onMeasure(II)V

    .line 69
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 91
    .local v3, result:Z
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->getPageChildCount()I

    move-result v2

    .line 92
    .local v2, count:I
    if-lez v2, :cond_1

    .line 94
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 96
    .local v0, bottom:I
    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 98
    .end local v0           #bottom:I
    .end local v1           #child:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 96
    .restart local v0       #bottom:I
    .restart local v1       #child:Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeAllViewsOnPage()V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->removeAllViews()V

    .line 112
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->destroyHardwareLayer()V

    .line 113
    return-void
.end method

.method public resetChildrenOnKeyListeners()V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->getChildCount()I

    move-result v0

    .line 54
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 55
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public setOnLayoutListener(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->mOnLayoutListener:Ljava/lang/Runnable;

    .line 79
    return-void
.end method
