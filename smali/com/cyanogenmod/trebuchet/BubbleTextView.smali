.class public Lcom/cyanogenmod/trebuchet/BubbleTextView;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private mBubbleColorAlpha:F

.field private mDidInvalidateForPressedState:Z

.field private mFocusedGlowColor:I

.field private mFocusedOutlineColor:I

.field private final mOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

.field private mPaint:Landroid/graphics/Paint;

.field private mPressedGlowColor:I

.field private mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

.field private mPressedOutlineColor:I

.field private mPrevAlpha:I

.field private mStayPressed:Z

.field private final mTempCanvas:Landroid/graphics/Canvas;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextVisible:Z

.field private mVisibleText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPrevAlpha:I

    .line 50
    new-instance v0, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    invoke-direct {v0}, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    .line 51
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mTextVisible:Z

    .line 70
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->init()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPrevAlpha:I

    .line 50
    new-instance v0, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    invoke-direct {v0}, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    .line 51
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mTextVisible:Z

    .line 75
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->init()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPrevAlpha:I

    .line 50
    new-instance v0, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    invoke-direct {v0}, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    .line 51
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mTextVisible:Z

    .line 80
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->init()V

    .line 81
    return-void
.end method

.method private createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "canvas"
    .parameter "outlineColor"
    .parameter "glowColor"

    .prologue
    .line 189
    sget v1, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 190
    .local v1, padding:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    invoke-direct {p0, p1, v1}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->drawWithPadding(Landroid/graphics/Canvas;I)V

    .line 195
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    invoke-virtual {v2, v0, p1, p3, p2}, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;->applyExtraThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 196
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    return-object v0
.end method

.method private drawWithPadding(Landroid/graphics/Canvas;I)V
    .locals 4
    .parameter "destCanvas"
    .parameter "padding"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 168
    .local v0, clipRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 171
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 178
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v2, p2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getScrollY()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v3, p2, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 179
    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 180
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->draw(Landroid/graphics/Canvas;)V

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 182
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 87
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 88
    .local v0, bubbleColor:I
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mBubbleColorAlpha:F

    .line 91
    const v2, 0x1060012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPressedGlowColor:I

    iput v2, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPressedOutlineColor:I

    iput v2, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mFocusedGlowColor:I

    iput v2, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mFocusedOutlineColor:I

    .line 94
    const/high16 v2, 0x4080

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    const/high16 v5, -0x2300

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setShadowLayer(FFFI)V

    .line 95
    return-void
.end method


# virtual methods
.method public applyFromShortcutInfo(Lcom/cyanogenmod/trebuchet/ShortcutInfo;Lcom/cyanogenmod/trebuchet/IconCache;)V
    .locals 3
    .parameter "info"
    .parameter "iconCache"

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p1, p2}, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->getIcon(Lcom/cyanogenmod/trebuchet/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;

    invoke-direct {v1, v0}, Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2, v1, v2, v2}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method clearPressedOrFocusedBackground()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 257
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 258
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 270
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 271
    .local v6, background:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 272
    iget v7, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mScrollX:I

    .line 273
    .local v7, scrollX:I
    iget v8, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mScrollY:I

    .line 275
    .local v8, scrollY:I
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mBackgroundSizeChanged:Z

    if-eqz v0, :cond_0

    .line 276
    iget v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mRight:I

    iget v1, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mBottom:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v6, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 277
    iput-boolean v3, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 280
    :cond_0
    or-int v0, v7, v8

    if-nez v0, :cond_2

    .line 281
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 289
    .end local v7           #scrollX:I
    .end local v8           #scrollY:I
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x4080

    const/high16 v2, 0x4000

    const/high16 v3, -0x2300

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 290
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 291
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 292
    iget v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mScrollY:I

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getExtendedPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mScrollX:I

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mScrollY:I

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 294
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x3fe0

    const/high16 v2, -0x3400

    invoke-virtual {v0, v1, v9, v9, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 295
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 296
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 297
    return-void

    .line 283
    .restart local v7       #scrollX:I
    .restart local v8       #scrollY:I
    :cond_2
    int-to-float v0, v7

    int-to-float v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 284
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 285
    neg-int v0, v7

    int-to-float v0, v0

    neg-int v1, v8

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    iget-boolean v3, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mDidInvalidateForPressedState:Z

    if-nez v3, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 153
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 154
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 157
    :cond_1
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 158
    return-void

    .line 131
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v5, :cond_5

    move v0, v3

    .line 132
    .local v0, backgroundEmptyBefore:Z
    :goto_1
    iget-boolean v5, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mStayPressed:Z

    if-nez v5, :cond_3

    .line 133
    iput-object v6, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 135
    :cond_3
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 136
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_6

    .line 139
    iput-object v6, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 144
    :goto_2
    iput-boolean v4, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mStayPressed:Z

    .line 145
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 147
    :cond_4
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v5, :cond_7

    move v1, v3

    .line 148
    .local v1, backgroundEmptyNow:Z
    :goto_3
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    goto :goto_0

    .end local v0           #backgroundEmptyBefore:Z
    .end local v1           #backgroundEmptyNow:Z
    :cond_5
    move v0, v4

    .line 131
    goto :goto_1

    .line 141
    .restart local v0       #backgroundEmptyBefore:Z
    :cond_6
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    iget v6, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mFocusedGlowColor:I

    iget v7, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mFocusedOutlineColor:I

    invoke-direct {p0, v5, v6, v7}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_7
    move v1, v4

    .line 147
    goto :goto_3
.end method

.method getPressedOrFocusedBackground()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getPressedOrFocusedBackgroundPadding()I
    .locals 1

    .prologue
    .line 265
    sget v0, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 302
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 303
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 307
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 308
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 309
    :cond_0
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 3
    .parameter "alpha"

    .prologue
    .line 313
    iget v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPrevAlpha:I

    if-eq v0, p1, :cond_0

    .line 314
    iput p1, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPrevAlpha:I

    .line 315
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    iget v2, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mBubbleColorAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 316
    invoke-super {p0, p1}, Landroid/widget/TextView;->onSetAlpha(I)Z

    .line 318
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 207
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 234
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 212
    :pswitch_1
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPressedGlowColor:I

    iget v3, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPressedOutlineColor:I

    invoke-direct {p0, v1, v2, v3}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mDidInvalidateForPressedState:Z

    .line 220
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    goto :goto_0

    .line 222
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mDidInvalidateForPressedState:Z

    goto :goto_0

    .line 229
    :pswitch_2
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setCellLayoutPressedOrFocusedIcon()V
    .locals 3

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    if-eqz v2, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    .line 248
    .local v1, parent:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 250
    .local v0, layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .end local p0
    :goto_0
    invoke-virtual {v0, p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setPressedOrFocusedIcon(Lcom/cyanogenmod/trebuchet/BubbleTextView;)V

    .line 253
    .end local v0           #layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    .end local v1           #parent:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    :cond_0
    return-void

    .line 250
    .restart local v0       #layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    .restart local v1       #parent:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    .restart local p0
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 109
    iget v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mRight:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mTop:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mBottom:I

    if-eq v0, p4, :cond_1

    .line 110
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 112
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method setStayPressed(Z)V
    .locals 1
    .parameter "stayPressed"

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mStayPressed:Z

    .line 239
    if-nez p1, :cond_0

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 243
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mTextVisible:Z

    if-ne v0, p1, :cond_0

    .line 330
    :goto_0
    return-void

    .line 323
    :cond_0
    iput-boolean p1, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mTextVisible:Z

    .line 324
    if-eqz p1, :cond_1

    .line 325
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mVisibleText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mVisibleText:Ljava/lang/CharSequence;

    .line 328
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
