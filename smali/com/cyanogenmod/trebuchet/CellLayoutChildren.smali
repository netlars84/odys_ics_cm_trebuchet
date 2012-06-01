.class public Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
.super Landroid/view/ViewGroup;
.source "CellLayoutChildren.java"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mHeightGap:I

.field private final mTmpCellXY:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->mTmpCellXY:[I

    .line 42
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 43
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 141
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 144
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 145
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 146
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    .line 47
    return-void
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 58
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 59
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 62
    .local v3, lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    iget v4, v3, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    iget v5, v3, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    .line 67
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    :goto_1
    return-object v0

    .line 58
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    const/high16 v7, 0x4000

    .line 87
    iget v1, p0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->mCellWidth:I

    .line 88
    .local v1, cellWidth:I
    iget v0, p0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->mCellHeight:I

    .line 89
    .local v0, cellHeight:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 91
    .local v4, lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    iget v5, p0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->mWidthGap:I

    iget v6, p0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->mHeightGap:I

    invoke-virtual {v4, v1, v0, v5, v6}, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->setup(IIII)V

    .line 92
    iget v5, v4, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->width:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 93
    .local v2, childWidthMeasureSpec:I
    iget v5, v4, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 95
    .local v3, childheightMeasureSpec:I
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 96
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildCount()I

    move-result v11

    .line 101
    .local v11, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v11, :cond_1

    .line 102
    invoke-virtual {p0, v12}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 103
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 104
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 106
    .local v13, lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    iget v9, v13, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->x:I

    .line 107
    .local v9, childLeft:I
    iget v10, v13, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->y:I

    .line 108
    .local v10, childTop:I
    iget v0, v13, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v9

    iget v1, v13, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->height:I

    add-int/2addr v1, v10

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 110
    iget-boolean v0, v13, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->dropped:Z

    .line 113
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->mTmpCellXY:[I

    .line 114
    .local v7, cellXY:[I
    invoke-virtual {p0, v7}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getLocationOnScreen([I)V

    .line 115
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    const/4 v3, 0x0

    aget v3, v7, v3

    add-int/2addr v3, v9

    iget v4, v13, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v4, v10

    iget v5, v13, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 101
    .end local v7           #cellXY:[I
    .end local v9           #childLeft:I
    .end local v10           #childTop:I
    .end local v13           #lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 122
    .end local v8           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 73
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 74
    invoke-virtual {p0, v3}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 78
    .local v4, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 79
    .local v2, heightSpecSize:I
    invoke-virtual {p0, v4, v2}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->setMeasuredDimension(II)V

    .line 80
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 132
    if-eqz p1, :cond_0

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 134
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 137
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setCellDimensions(IIII)V
    .locals 0
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "widthGap"
    .parameter "heightGap"

    .prologue
    .line 50
    iput p1, p0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->mCellWidth:I

    .line 51
    iput p2, p0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->mCellHeight:I

    .line 52
    iput p3, p0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->mWidthGap:I

    .line 53
    iput p4, p0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->mHeightGap:I

    .line 54
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 154
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 155
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 156
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 158
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 159
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 154
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 167
    return-void
.end method

.method public setupLp(Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;)V
    .locals 4
    .parameter "lp"

    .prologue
    .line 83
    iget v0, p0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->mCellWidth:I

    iget v1, p0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->mCellHeight:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->mWidthGap:I

    iget v3, p0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->mHeightGap:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->setup(IIII)V

    .line 84
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method
