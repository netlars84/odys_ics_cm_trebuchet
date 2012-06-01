.class public Lcom/cyanogenmod/trebuchet/PagedViewIcon;
.super Landroid/widget/TextView;
.source "PagedViewIcon.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mAlpha:I

.field private mCheckedAlpha:F

.field private mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mCheckedFadeInDuration:I

.field private mCheckedFadeOutDuration:I

.field private mCheckedOutline:Landroid/graphics/Bitmap;

.field private mHolographicAlpha:I

.field private mHolographicOutline:Landroid/graphics/Bitmap;

.field private mHolographicOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

.field mHolographicOutlineView:Lcom/cyanogenmod/trebuchet/HolographicPagedViewIcon;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIsChecked:Z

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v3, 0x7f0a0003

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mPaint:Landroid/graphics/Paint;

    .line 43
    const/16 v2, 0xff

    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mAlpha:I

    .line 48
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mCheckedAlpha:F

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 68
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 69
    .local v0, alpha:I
    if-lez v0, :cond_0

    .line 70
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4380

    div-float/2addr v2, v3

    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mCheckedAlpha:F

    .line 71
    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mCheckedFadeInDuration:I

    .line 73
    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mCheckedFadeOutDuration:I

    .line 77
    :cond_0
    new-instance v2, Lcom/cyanogenmod/trebuchet/HolographicPagedViewIcon;

    invoke-direct {v2, p1, p0}, Lcom/cyanogenmod/trebuchet/HolographicPagedViewIcon;-><init>(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/PagedViewIcon;)V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mHolographicOutlineView:Lcom/cyanogenmod/trebuchet/HolographicPagedViewIcon;

    .line 78
    return-void
.end method


# virtual methods
.method public applyFromApplicationInfo(Lcom/cyanogenmod/trebuchet/ApplicationInfo;Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;)V
    .locals 3
    .parameter "info"
    .parameter "holoOutlineHelper"

    .prologue
    const/4 v2, 0x0

    .line 90
    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mHolographicOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    .line 91
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    .line 92
    new-instance v0, Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->setTag(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method protected getHolographicOutline()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mHolographicOutline:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mIsChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 124
    iget v5, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mAlpha:I

    if-lez v5, :cond_0

    .line 125
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 128
    :cond_0
    const/4 v4, 0x0

    .line 131
    .local v4, overlay:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mCheckedOutline:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 132
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mCheckedOutline:Landroid/graphics/Bitmap;

    .line 136
    :cond_1
    if-eqz v4, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->getScrollX()I

    move-result v3

    .line 138
    .local v3, offset:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->getCompoundPaddingLeft()I

    move-result v0

    .line 139
    .local v0, compoundPaddingLeft:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->getCompoundPaddingRight()I

    move-result v1

    .line 140
    .local v1, compoundPaddingRight:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int v2, v5, v0

    .line 141
    .local v2, hspace:I
    add-int v5, v3, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mPaddingTop:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 146
    .end local v0           #compoundPaddingLeft:I
    .end local v1           #compoundPaddingRight:I
    .end local v2           #hspace:I
    .end local v3           #offset:I
    :cond_2
    return-void
.end method

.method public setAlpha(F)V
    .locals 6
    .parameter "alpha"

    .prologue
    const/high16 v5, 0x437f

    .line 104
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;->viewAlphaInterpolator(F)F

    move-result v3

    .line 105
    .local v3, viewAlpha:F
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;->highlightAlphaInterpolator(F)F

    move-result v0

    .line 106
    .local v0, holographicAlpha:F
    mul-float v4, v3, v5

    float-to-int v2, v4

    .line 107
    .local v2, newViewAlpha:I
    mul-float v4, v0, v5

    float-to-int v1, v4

    .line 108
    .local v1, newHolographicAlpha:I
    iget v4, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mAlpha:I

    if-ne v4, v2, :cond_0

    iget v4, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mHolographicAlpha:I

    if-eq v4, v1, :cond_1

    .line 109
    :cond_0
    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mAlpha:I

    .line 110
    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mHolographicAlpha:I

    .line 111
    invoke-super {p0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 113
    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->setChecked(ZZ)V

    .line 186
    return-void
.end method

.method setChecked(ZZ)V
    .locals 6
    .parameter "checked"
    .parameter "animate"

    .prologue
    .line 154
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mIsChecked:Z

    if-eq v2, p1, :cond_1

    .line 155
    iput-boolean p1, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mIsChecked:Z

    .line 159
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mIsChecked:Z

    if-eqz v2, :cond_2

    .line 160
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mCheckedAlpha:F

    .line 161
    .local v0, alpha:F
    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mCheckedFadeInDuration:I

    .line 168
    .local v1, duration:I
    :goto_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 171
    :cond_0
    if-eqz p2, :cond_3

    .line 172
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->getAlpha()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 173
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 174
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 179
    :goto_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->invalidate()V

    .line 181
    .end local v0           #alpha:F
    .end local v1           #duration:I
    :cond_1
    return-void

    .line 163
    :cond_2
    const/high16 v0, 0x3f80

    .line 164
    .restart local v0       #alpha:F
    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mCheckedFadeOutDuration:I

    .restart local v1       #duration:I
    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->setAlpha(F)V

    goto :goto_1
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->setChecked(Z)V

    .line 191
    return-void

    .line 190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
