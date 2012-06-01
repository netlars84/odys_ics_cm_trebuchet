.class public Lcom/cyanogenmod/trebuchet/PagedViewWidget;
.super Landroid/widget/LinearLayout;
.source "PagedViewWidget.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static sDeletePreviewsWhenDetachedFromWindow:Z


# instance fields
.field private mAlpha:I

.field private mCheckedAlpha:F

.field private mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mCheckedFadeInDuration:I

.field private mCheckedFadeOutDuration:I

.field private mDimensionsFormatString:Ljava/lang/String;

.field private mHolographicAlpha:I

.field private mHolographicOutline:Landroid/graphics/Bitmap;

.field private mHolographicOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

.field private mIsChecked:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreviewImageView:Landroid/widget/ImageView;

.field private final mTmpScaleRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->sDeletePreviewsWhenDetachedFromWindow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v3, 0x7f0a0003

    const/4 v4, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mTmpScaleRect:Landroid/graphics/RectF;

    .line 52
    const/16 v2, 0xff

    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mAlpha:I

    .line 57
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mCheckedAlpha:F

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 74
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 75
    .local v0, alpha:I
    if-lez v0, :cond_0

    .line 76
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4380

    div-float/2addr v2, v3

    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mCheckedAlpha:F

    .line 77
    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mCheckedFadeInDuration:I

    .line 79
    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mCheckedFadeOutDuration:I

    .line 82
    :cond_0
    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, v4}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->setWillNotDraw(Z)V

    .line 85
    invoke-virtual {p0, v4}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->setClipToPadding(Z)V

    .line 86
    return-void
.end method

.method private setChildrenAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->getChildCount()I

    move-result v0

    .line 204
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 205
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method public static setDeletePreviewsWhenDetachedFromWindow(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 89
    sput-boolean p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->sDeletePreviewsWhenDetachedFromWindow:Z

    .line 90
    return-void
.end method


# virtual methods
.method public applyFromAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;I[ILcom/cyanogenmod/trebuchet/HolographicOutlineHelper;)V
    .locals 8
    .parameter "info"
    .parameter "maxWidth"
    .parameter "cellSpan"
    .parameter "holoOutlineHelper"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 110
    iput-object p4, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mHolographicOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    .line 111
    const v3, 0x7f0e0012

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 112
    .local v1, image:Landroid/widget/ImageView;
    const/4 v3, -0x1

    if-le p2, v3, :cond_0

    .line 113
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 115
    :cond_0
    iget-object v3, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mPreviewImageView:Landroid/widget/ImageView;

    .line 117
    const v3, 0x7f0e0010

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 118
    .local v2, name:Landroid/widget/TextView;
    iget-object v3, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const v3, 0x7f0e0011

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    .local v0, dims:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 121
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aget v5, p3, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aget v5, p3, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_1
    return-void
.end method

.method public applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;)V
    .locals 9
    .parameter "pm"
    .parameter "info"
    .parameter "holoOutlineHelper"

    .prologue
    const/4 v8, 0x1

    .line 127
    iput-object p3, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mHolographicOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    .line 128
    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 129
    .local v2, label:Ljava/lang/CharSequence;
    const v4, 0x7f0e0012

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 130
    .local v1, image:Landroid/widget/ImageView;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 131
    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mPreviewImageView:Landroid/widget/ImageView;

    .line 132
    const v4, 0x7f0e0010

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 133
    .local v3, name:Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const v4, 0x7f0e0011

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    .local v0, dims:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 136
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    return-void
.end method

.method applyPreview(Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;)V
    .locals 2
    .parameter "preview"

    .prologue
    .line 149
    const v1, 0x7f0e0012

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/PagedViewWidgetImageView;

    .line 151
    .local v0, image:Lcom/cyanogenmod/trebuchet/PagedViewWidgetImageView;
    if-eqz p1, :cond_0

    .line 152
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cyanogenmod/trebuchet/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    .line 153
    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/PagedViewWidgetImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/PagedViewWidgetImageView;->setAlpha(F)V

    .line 155
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cyanogenmod/trebuchet/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    .line 157
    :cond_0
    return-void
.end method

.method public getPreviewSize()[I
    .locals 5

    .prologue
    .line 141
    const v2, 0x7f0e0012

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 142
    .local v0, i:Landroid/widget/ImageView;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 143
    .local v1, maxSize:[I
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 144
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 145
    return-object v1
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mIsChecked:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 96
    sget-boolean v2, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->sDeletePreviewsWhenDetachedFromWindow:Z

    if-eqz v2, :cond_1

    .line 97
    const v2, 0x7f0e0012

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 98
    .local v0, image:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;

    .line 100
    .local v1, preview:Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 103
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    .end local v0           #image:Landroid/widget/ImageView;
    .end local v1           #preview:Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 178
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mAlpha:I

    if-lez v0, :cond_0

    .line 179
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mHolographicOutline:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mHolographicAlpha:I

    if-lez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mTmpScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 186
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mTmpScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 188
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mHolographicAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 190
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mTmpScaleRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mTmpScaleRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 191
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mHolographicOutline:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 195
    :cond_1
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .parameter "alpha"

    .prologue
    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(F)V
    .locals 6
    .parameter "alpha"

    .prologue
    const/high16 v5, 0x437f

    .line 210
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;->viewAlphaInterpolator(F)F

    move-result v3

    .line 211
    .local v3, viewAlpha:F
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;->highlightAlphaInterpolator(F)F

    move-result v0

    .line 212
    .local v0, holographicAlpha:F
    mul-float v4, v3, v5

    float-to-int v2, v4

    .line 213
    .local v2, newViewAlpha:I
    mul-float v4, v0, v5

    float-to-int v1, v4

    .line 214
    .local v1, newHolographicAlpha:I
    iget v4, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mAlpha:I

    if-ne v4, v2, :cond_0

    iget v4, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mHolographicAlpha:I

    if-eq v4, v1, :cond_1

    .line 215
    :cond_0
    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mAlpha:I

    .line 216
    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mHolographicAlpha:I

    .line 217
    invoke-direct {p0, v3}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->setChildrenAlpha(F)V

    .line 218
    invoke-super {p0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 220
    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 254
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->setChecked(ZZ)V

    .line 255
    return-void
.end method

.method setChecked(ZZ)V
    .locals 6
    .parameter "checked"
    .parameter "animate"

    .prologue
    .line 223
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mIsChecked:Z

    if-eq v2, p1, :cond_1

    .line 224
    iput-boolean p1, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mIsChecked:Z

    .line 228
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mIsChecked:Z

    if-eqz v2, :cond_2

    .line 229
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mCheckedAlpha:F

    .line 230
    .local v0, alpha:F
    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mCheckedFadeInDuration:I

    .line 237
    .local v1, duration:I
    :goto_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 240
    :cond_0
    if-eqz p2, :cond_3

    .line 241
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->getAlpha()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 242
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 243
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 248
    :goto_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->invalidate()V

    .line 250
    .end local v0           #alpha:F
    .end local v1           #duration:I
    :cond_1
    return-void

    .line 232
    :cond_2
    const/high16 v0, 0x3f80

    .line 233
    .restart local v0       #alpha:F
    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mCheckedFadeOutDuration:I

    .restart local v1       #duration:I
    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->setAlpha(F)V

    goto :goto_1
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->setChecked(Z)V

    .line 265
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
