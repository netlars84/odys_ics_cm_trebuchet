.class public Lcom/cyanogenmod/trebuchet/HolographicPagedViewIcon;
.super Landroid/widget/TextView;
.source "HolographicPagedViewIcon.java"


# instance fields
.field mOriginalIcon:Lcom/cyanogenmod/trebuchet/PagedViewIcon;

.field mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/PagedViewIcon;)V
    .locals 1
    .parameter "context"
    .parameter "original"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/HolographicPagedViewIcon;->mOriginalIcon:Lcom/cyanogenmod/trebuchet/PagedViewIcon;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/HolographicPagedViewIcon;->mPaint:Landroid/graphics/Paint;

    .line 39
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 43
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/HolographicPagedViewIcon;->mOriginalIcon:Lcom/cyanogenmod/trebuchet/PagedViewIcon;

    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->getHolographicOutline()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 44
    .local v4, overlay:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/HolographicPagedViewIcon;->getScrollX()I

    move-result v3

    .line 46
    .local v3, offset:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/HolographicPagedViewIcon;->getCompoundPaddingLeft()I

    move-result v0

    .line 47
    .local v0, compoundPaddingLeft:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/HolographicPagedViewIcon;->getCompoundPaddingRight()I

    move-result v1

    .line 48
    .local v1, compoundPaddingRight:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/HolographicPagedViewIcon;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int v2, v5, v0

    .line 49
    .local v2, hspace:I
    add-int v5, v3, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/HolographicPagedViewIcon;->mOriginalIcon:Lcom/cyanogenmod/trebuchet/PagedViewIcon;

    invoke-virtual {v6}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/HolographicPagedViewIcon;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 54
    .end local v0           #compoundPaddingLeft:I
    .end local v1           #compoundPaddingRight:I
    .end local v2           #hspace:I
    .end local v3           #offset:I
    :cond_0
    return-void
.end method
