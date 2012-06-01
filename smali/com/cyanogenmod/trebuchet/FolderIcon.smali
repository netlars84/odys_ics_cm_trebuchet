.class public Lcom/cyanogenmod/trebuchet/FolderIcon;
.super Landroid/widget/LinearLayout;
.source "FolderIcon.java"

# interfaces
.implements Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;,
        Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;
    }
.end annotation


# static fields
.field public static sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

.field private static sStaticValuesDirty:Z


# instance fields
.field private mAnimParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

.field mAnimating:Z

.field private mAvailableSpaceInPreview:I

.field private mBaselineIconScale:F

.field private mBaselineIconSize:I

.field mFolder:Lcom/cyanogenmod/trebuchet/Folder;

.field private mFolderName:Lcom/cyanogenmod/trebuchet/BubbleTextView;

.field mFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

.field mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

.field private mIntrinsicIconSize:I

.field private mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

.field private mMaxPerspectiveShift:F

.field private mParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

.field private mPreviewBackground:Landroid/widget/ImageView;

.field private mPreviewOffsetX:I

.field private mPreviewOffsetY:I

.field private mTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cyanogenmod/trebuchet/FolderIcon;->sStaticValuesDirty:Z

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/cyanogenmod/trebuchet/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mTotalWidth:I

    .line 92
    iput-boolean v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAnimating:Z

    .line 93
    new-instance v0, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/cyanogenmod/trebuchet/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    .line 94
    new-instance v0, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/cyanogenmod/trebuchet/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAnimParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mTotalWidth:I

    .line 92
    iput-boolean v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAnimating:Z

    .line 93
    new-instance v0, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/cyanogenmod/trebuchet/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    .line 94
    new-instance v0, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/cyanogenmod/trebuchet/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAnimParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    .line 98
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/cyanogenmod/trebuchet/FolderIcon;->sStaticValuesDirty:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    sput-boolean p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->sStaticValuesDirty:Z

    return p0
.end method

.method static synthetic access$200(Lcom/cyanogenmod/trebuchet/FolderIcon;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cyanogenmod/trebuchet/FolderIcon;)Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAnimParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    return-object v0
.end method

.method private animateFirstItem(Landroid/graphics/drawable/Drawable;I)V
    .locals 7
    .parameter "d"
    .parameter "duration"

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    .line 532
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/cyanogenmod/trebuchet/FolderIcon;->computePreviewItemDrawingParams(ILcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;)Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    .line 534
    .local v0, finalParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;
    const/high16 v1, 0x3f80

    .line 535
    .local v1, scale0:F
    iget v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAvailableSpaceInPreview:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v2, v5

    .line 536
    .local v2, transX0:F
    iget v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAvailableSpaceInPreview:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .line 537
    .local v3, transY0:F
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAnimParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    iput-object p1, v5, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 539
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 540
    .local v4, va:Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/cyanogenmod/trebuchet/FolderIcon$3;

    invoke-direct {v5, p0, v2, v0, v3}, Lcom/cyanogenmod/trebuchet/FolderIcon$3;-><init>(Lcom/cyanogenmod/trebuchet/FolderIcon;FLcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;F)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 550
    new-instance v5, Lcom/cyanogenmod/trebuchet/FolderIcon$4;

    invoke-direct {v5, p0}, Lcom/cyanogenmod/trebuchet/FolderIcon$4;-><init>(Lcom/cyanogenmod/trebuchet/FolderIcon;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 560
    int-to-long v5, p2

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 561
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 562
    return-void

    .line 539
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private computePreviewDrawingParams(II)V
    .locals 6
    .parameter "drawableSize"
    .parameter "totalSize"

    .prologue
    .line 397
    iget v4, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mIntrinsicIconSize:I

    if-ne v4, p1, :cond_0

    iget v4, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mTotalWidth:I

    if-eq v4, p2, :cond_1

    .line 398
    :cond_0
    iput p1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mIntrinsicIconSize:I

    .line 399
    iput p2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mTotalWidth:I

    .line 401
    sget v2, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 402
    .local v2, previewSize:I
    sget v1, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    .line 404
    .local v1, previewPadding:I
    mul-int/lit8 v4, v1, 0x2

    sub-int v4, v2, v4

    iput v4, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAvailableSpaceInPreview:I

    .line 406
    iget v4, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAvailableSpaceInPreview:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const v5, 0x3fe66666

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 408
    .local v0, adjustedAvailableSpace:I
    iget v4, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v4, v4

    const v5, 0x3f9eb852

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 409
    .local v3, unscaledHeight:I
    const/high16 v4, 0x3f80

    int-to-float v5, v0

    mul-float/2addr v4, v5

    int-to-float v5, v3

    div-float/2addr v4, v5

    iput v4, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mBaselineIconScale:F

    .line 411
    iget v4, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mBaselineIconScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mBaselineIconSize:I

    .line 412
    iget v4, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mBaselineIconSize:I

    int-to-float v4, v4

    const v5, 0x3e75c28f

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mMaxPerspectiveShift:F

    .line 414
    iget v4, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mTotalWidth:I

    iget v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAvailableSpaceInPreview:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mPreviewOffsetX:I

    .line 415
    iput v1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mPreviewOffsetY:I

    .line 417
    .end local v0           #adjustedAvailableSpace:I
    .end local v1           #previewPadding:I
    .end local v2           #previewSize:I
    .end local v3           #unscaledHeight:I
    :cond_1
    return-void
.end method

.method private computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 420
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->computePreviewDrawingParams(II)V

    .line 421
    return-void
.end method

.method private computePreviewItemDrawingParams(ILcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;)Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;
    .locals 12
    .parameter "index"
    .parameter "params"

    .prologue
    const/high16 v11, 0x3f80

    .line 452
    rsub-int/lit8 v0, p1, 0x3

    add-int/lit8 p1, v0, -0x1

    .line 453
    int-to-float v0, p1

    mul-float/2addr v0, v11

    const/high16 v1, 0x4000

    div-float v7, v0, v1

    .line 454
    .local v7, r:F
    const v0, 0x3eb33333

    sub-float v1, v11, v7

    mul-float/2addr v0, v1

    sub-float v8, v11, v0

    .line 456
    .local v8, scale:F
    sub-float v0, v11, v7

    iget v1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mMaxPerspectiveShift:F

    mul-float v6, v0, v1

    .line 457
    .local v6, offset:F
    iget v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mBaselineIconSize:I

    int-to-float v0, v0

    mul-float v10, v8, v0

    .line 458
    .local v10, scaledSize:F
    sub-float v0, v11, v8

    iget v1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mBaselineIconSize:I

    int-to-float v1, v1

    mul-float v9, v0, v1

    .line 462
    .local v9, scaleOffsetCorrection:F
    iget v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAvailableSpaceInPreview:I

    int-to-float v0, v0

    add-float v1, v6, v10

    add-float/2addr v1, v9

    sub-float v3, v0, v1

    .line 463
    .local v3, transY:F
    add-float v2, v6, v9

    .line 464
    .local v2, transX:F
    iget v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mBaselineIconScale:F

    mul-float v4, v0, v8

    .line 465
    .local v4, totalScale:F
    const/high16 v0, 0x42a0

    sub-float v1, v11, v7

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 467
    .local v5, overlayAlpha:I
    if-nez p2, :cond_0

    .line 468
    new-instance p2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    .end local p2
    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/cyanogenmod/trebuchet/FolderIcon;FFFI)V

    .line 475
    .restart local p2
    :goto_0
    return-object p2

    .line 470
    :cond_0
    iput v2, p2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 471
    iput v3, p2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 472
    iput v4, p2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 473
    iput v5, p2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    goto :goto_0
.end method

.method private drawPreviewItem(Landroid/graphics/Canvas;Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;)V
    .locals 5
    .parameter "canvas"
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 479
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 480
    iget v1, p2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mPreviewOffsetX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v3, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mPreviewOffsetY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 481
    iget v1, p2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v2, p2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 482
    iget-object v0, p2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 484
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 485
    iget v1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mIntrinsicIconSize:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mIntrinsicIconSize:I

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 486
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 487
    iget v1, p2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 488
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 489
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 490
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 492
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 493
    return-void
.end method

.method static fromXml(ILcom/cyanogenmod/trebuchet/Launcher;Landroid/view/ViewGroup;Lcom/cyanogenmod/trebuchet/FolderInfo;Lcom/cyanogenmod/trebuchet/IconCache;)Lcom/cyanogenmod/trebuchet/FolderIcon;
    .locals 6
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"
    .parameter "iconCache"

    .prologue
    const/4 v5, 0x0

    .line 114
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/FolderIcon;

    .line 116
    .local v1, icon:Lcom/cyanogenmod/trebuchet/FolderIcon;
    const v2, 0x7f0e001c

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/trebuchet/BubbleTextView;

    iput-object v2, v1, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolderName:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    .line 117
    iget-object v2, v1, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolderName:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    iget-object v3, p3, Lcom/cyanogenmod/trebuchet/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v2, 0x7f0e001b

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/cyanogenmod/trebuchet/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 120
    invoke-virtual {v1, p3}, Lcom/cyanogenmod/trebuchet/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v1, p1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iput-object p3, v1, Lcom/cyanogenmod/trebuchet/FolderIcon;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    .line 123
    iput-object p1, v1, Lcom/cyanogenmod/trebuchet/FolderIcon;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    .line 124
    const v2, 0x7f090062

    invoke-virtual {p1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p3, Lcom/cyanogenmod/trebuchet/FolderInfo;->title:Ljava/lang/CharSequence;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/Folder;->fromXml(Landroid/content/Context;)Lcom/cyanogenmod/trebuchet/Folder;

    move-result-object v0

    .line 127
    .local v0, folder:Lcom/cyanogenmod/trebuchet/Folder;
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragController()Lcom/cyanogenmod/trebuchet/DragController;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/Folder;->setDragController(Lcom/cyanogenmod/trebuchet/DragController;)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Folder;->setFolderIcon(Lcom/cyanogenmod/trebuchet/FolderIcon;)V

    .line 129
    invoke-virtual {v0, p3}, Lcom/cyanogenmod/trebuchet/Folder;->bind(Lcom/cyanogenmod/trebuchet/FolderInfo;)V

    .line 130
    iput-object v0, v1, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolder:Lcom/cyanogenmod/trebuchet/Folder;

    .line 132
    new-instance v2, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    invoke-direct {v2, p1, v1}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/FolderIcon;)V

    iput-object v2, v1, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    .line 133
    invoke-virtual {p3, v1}, Lcom/cyanogenmod/trebuchet/FolderInfo;->addListener(Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;)V

    .line 135
    return-object v1
.end method

.method private getLocalCenterForIndex(I[I)F
    .locals 6
    .parameter "index"
    .parameter "center"

    .prologue
    const/high16 v5, 0x4000

    .line 438
    const/4 v2, 0x3

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, v2, v3}, Lcom/cyanogenmod/trebuchet/FolderIcon;->computePreviewItemDrawingParams(ILcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;)Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    .line 440
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    iget v3, v2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v4, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mPreviewOffsetX:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 441
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    iget v3, v2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v4, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mPreviewOffsetY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 442
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v4, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float v0, v2, v3

    .line 443
    .local v0, offsetX:F
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v4, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float v1, v2, v3

    .line 445
    .local v1, offsetY:F
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, p2, v2

    .line 446
    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, p2, v2

    .line 447
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->scale:F

    return v2
.end method

.method private onDrop(Lcom/cyanogenmod/trebuchet/ShortcutInfo;Landroid/view/View;Landroid/graphics/Rect;FILjava/lang/Runnable;)V
    .locals 18
    .parameter "item"
    .parameter "animateView"
    .parameter "finalRect"
    .parameter "scaleRelativeToDragLayer"
    .parameter "index"
    .parameter "postAnimationRunnable"

    .prologue
    .line 320
    const/4 v3, -0x1

    move-object/from16 v0, p1

    iput v3, v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellX:I

    .line 321
    const/4 v3, -0x1

    move-object/from16 v0, p1

    iput v3, v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellY:I

    .line 326
    if-eqz p2, :cond_2

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v2

    .line 328
    .local v2, dragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 329
    .local v4, from:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v4}, Lcom/cyanogenmod/trebuchet/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 330
    move-object/from16 v5, p3

    .line 331
    .local v5, to:Landroid/graphics/Rect;
    if-nez v5, :cond_0

    .line 332
    new-instance v5, Landroid/graphics/Rect;

    .end local v5           #to:Landroid/graphics/Rect;
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 333
    .restart local v5       #to:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v17

    .line 335
    .local v17, workspace:Lcom/cyanogenmod/trebuchet/Workspace;
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/trebuchet/CellLayout;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/Workspace;->setFinalTransitionTransform(Lcom/cyanogenmod/trebuchet/CellLayout;)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->getScaleX()F

    move-result v15

    .line 337
    .local v15, scaleX:F
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->getScaleY()F

    move-result v16

    .line 338
    .local v16, scaleY:F
    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/FolderIcon;->setScaleX(F)V

    .line 339
    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/FolderIcon;->setScaleY(F)V

    .line 340
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v5}, Lcom/cyanogenmod/trebuchet/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result p4

    .line 342
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/cyanogenmod/trebuchet/FolderIcon;->setScaleX(F)V

    .line 343
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->setScaleY(F)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/trebuchet/CellLayout;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/Workspace;->resetTransitionTransform(Lcom/cyanogenmod/trebuchet/CellLayout;)V

    .line 347
    .end local v15           #scaleX:F
    .end local v16           #scaleY:F
    .end local v17           #workspace:Lcom/cyanogenmod/trebuchet/Workspace;
    :cond_0
    const/4 v3, 0x2

    new-array v13, v3, [I

    .line 348
    .local v13, center:[I
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v13}, Lcom/cyanogenmod/trebuchet/FolderIcon;->getLocalCenterForIndex(I[I)F

    move-result v14

    .line 349
    .local v14, scale:F
    const/4 v3, 0x0

    const/4 v7, 0x0

    aget v7, v13, v7

    int-to-float v7, v7

    mul-float v7, v7, p4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, v13, v3

    .line 350
    const/4 v3, 0x1

    const/4 v7, 0x1

    aget v7, v13, v7

    int-to-float v7, v7

    mul-float v7, v7, p4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, v13, v3

    .line 352
    const/4 v3, 0x0

    aget v3, v13, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v3, v7

    const/4 v7, 0x1

    aget v7, v13, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {v5, v3, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 355
    const/4 v3, 0x3

    move/from16 v0, p5

    if-ge v0, v3, :cond_1

    const/high16 v6, 0x3f00

    .line 357
    .local v6, finalAlpha:F
    :goto_0
    mul-float v7, v14, p4

    const/16 v8, 0x190

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x4000

    invoke-direct {v9, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x4000

    invoke-direct {v10, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/4 v12, 0x0

    move-object/from16 v3, p2

    move-object/from16 v11, p6

    invoke-virtual/range {v2 .. v12}, Lcom/cyanogenmod/trebuchet/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V

    .line 361
    new-instance v3, Lcom/cyanogenmod/trebuchet/FolderIcon$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/cyanogenmod/trebuchet/FolderIcon$2;-><init>(Lcom/cyanogenmod/trebuchet/FolderIcon;Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V

    const-wide/16 v7, 0x190

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7, v8}, Lcom/cyanogenmod/trebuchet/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    .end local v2           #dragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;
    .end local v4           #from:Landroid/graphics/Rect;
    .end local v5           #to:Landroid/graphics/Rect;
    .end local v6           #finalAlpha:F
    .end local v13           #center:[I
    .end local v14           #scale:F
    :goto_1
    return-void

    .line 355
    .restart local v2       #dragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;
    .restart local v4       #from:Landroid/graphics/Rect;
    .restart local v5       #to:Landroid/graphics/Rect;
    .restart local v13       #center:[I
    .restart local v14       #scale:F
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 367
    .end local v2           #dragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;
    .end local v4           #from:Landroid/graphics/Rect;
    .end local v5           #to:Landroid/graphics/Rect;
    .end local v13           #center:[I
    .end local v14           #scale:F
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->addItem(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V

    goto :goto_1
.end method

.method private willAcceptItem(Lcom/cyanogenmod/trebuchet/ItemInfo;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 262
    iget v0, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->itemType:I

    .line 263
    .local v0, itemType:I
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolder:Lcom/cyanogenmod/trebuchet/Folder;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Folder;->isFull()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-boolean v2, v2, Lcom/cyanogenmod/trebuchet/FolderInfo;->opened:Z

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Ljava/lang/Object;)Z
    .locals 2
    .parameter "dragInfo"

    .prologue
    .line 270
    move-object v0, p1

    check-cast v0, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 271
    .local v0, item:Lcom/cyanogenmod/trebuchet/ItemInfo;
    invoke-direct {p0, v0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->willAcceptItem(Lcom/cyanogenmod/trebuchet/ItemInfo;)Z

    move-result v1

    return v1
.end method

.method public addItem(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V
    .locals 7
    .parameter "item"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/FolderInfo;->add(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V

    .line 276
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-wide v2, v1, Lcom/cyanogenmod/trebuchet/FolderInfo;->id:J

    const/4 v4, 0x0

    iget v5, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellX:I

    iget v6, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellY:I

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;JIII)V

    .line 277
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 497
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 499
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolder:Lcom/cyanogenmod/trebuchet/Folder;

    if-nez v5, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolder:Lcom/cyanogenmod/trebuchet/Folder;

    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/Folder;->getItemCount()I

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAnimating:Z

    if-eqz v5, :cond_0

    .line 502
    :cond_2
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolder:Lcom/cyanogenmod/trebuchet/Folder;

    invoke-virtual {v5, v6}, Lcom/cyanogenmod/trebuchet/Folder;->getItemsInReadingOrder(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 507
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-boolean v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAnimating:Z

    if-eqz v5, :cond_3

    .line 508
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAnimParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    iget-object v5, v5, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5}, Lcom/cyanogenmod/trebuchet/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    .line 515
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 516
    .local v3, nItemsInPreview:I
    iget-boolean v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAnimating:Z

    if-nez v5, :cond_4

    .line 517
    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_0

    .line 518
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 519
    .local v4, v:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v0, v5, v7

    .line 521
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, v1, v5}, Lcom/cyanogenmod/trebuchet/FolderIcon;->computePreviewItemDrawingParams(ILcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;)Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    move-result-object v5

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    .line 522
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    iput-object v0, v5, Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 523
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, p1, v5}, Lcom/cyanogenmod/trebuchet/FolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;)V

    .line 517
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 510
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #i:I
    .end local v3           #nItemsInPreview:I
    .end local v4           #v:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 511
    .restart local v4       #v:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v0, v5, v7

    .line 512
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 526
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #v:Landroid/widget/TextView;
    .restart local v3       #nItemsInPreview:I
    :cond_4
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAnimParams:Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, p1, v5}, Lcom/cyanogenmod/trebuchet/FolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/cyanogenmod/trebuchet/FolderIcon$PreviewItemDrawingParams;)V

    goto :goto_0
.end method

.method public getTextVisible()Z
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolderName:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdd(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->invalidate()V

    .line 583
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->requestLayout()V

    .line 584
    return-void
.end method

.method public onDragEnter(Ljava/lang/Object;)V
    .locals 5
    .parameter "dragInfo"

    .prologue
    .line 280
    check-cast p1, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .end local p1
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->willAcceptItem(Lcom/cyanogenmod/trebuchet/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 282
    .local v1, lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 283
    .local v0, layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    iget v3, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    iget v4, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v3, v4}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->setCell(II)V

    .line 284
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    invoke-virtual {v2, v0}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->setCellLayout(Lcom/cyanogenmod/trebuchet/CellLayout;)V

    .line 285
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->animateToAcceptState()V

    .line 286
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->showFolderAccept(Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;)V

    goto :goto_0
.end method

.method public onDragExit(Ljava/lang/Object;)V
    .locals 1
    .parameter "dragInfo"

    .prologue
    .line 314
    check-cast p1, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .end local p1
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->willAcceptItem(Lcom/cyanogenmod/trebuchet/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    goto :goto_0
.end method

.method public onDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 14
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    .line 373
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->makeShortcut()Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    move-result-object v6

    .line 388
    .local v6, item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :goto_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolder:Lcom/cyanogenmod/trebuchet/Folder;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Folder;->notifyDrop()V

    .line 389
    iget-object v7, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget-object v11, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object v5, p0

    move-object v8, v3

    move v9, v4

    invoke-direct/range {v5 .. v11}, Lcom/cyanogenmod/trebuchet/FolderIcon;->onDrop(Lcom/cyanogenmod/trebuchet/ShortcutInfo;Landroid/view/View;Landroid/graphics/Rect;FILjava/lang/Runnable;)V

    .line 390
    .end local v6           #item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :goto_1
    return-void

    .line 376
    :cond_0
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;

    if-eqz v0, :cond_2

    .line 377
    iget-object v12, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v12, Lcom/cyanogenmod/trebuchet/FolderInfo;

    .line 378
    .local v12, folder:Lcom/cyanogenmod/trebuchet/FolderInfo;
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolder:Lcom/cyanogenmod/trebuchet/Folder;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Folder;->notifyDrop()V

    .line 379
    iget-object v0, v12, Lcom/cyanogenmod/trebuchet/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 380
    .local v1, fItem:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    iget-object v2, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/FolderIcon;->onDrop(Lcom/cyanogenmod/trebuchet/ShortcutInfo;Landroid/view/View;Landroid/graphics/Rect;FILjava/lang/Runnable;)V

    goto :goto_2

    .line 382
    .end local v1           #fItem:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0, v12}, Lcom/cyanogenmod/trebuchet/Launcher;->removeFolder(Lcom/cyanogenmod/trebuchet/FolderInfo;)V

    .line 383
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-static {v0, v12}, Lcom/cyanogenmod/trebuchet/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;)V

    goto :goto_1

    .line 386
    .end local v12           #folder:Lcom/cyanogenmod/trebuchet/FolderInfo;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v6, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v6, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .restart local v6       #item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    goto :goto_0
.end method

.method public onItemsChanged()V
    .locals 0

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->invalidate()V

    .line 578
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->requestLayout()V

    .line 579
    return-void
.end method

.method public onRemove(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->invalidate()V

    .line 588
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->requestLayout()V

    .line 589
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cyanogenmod/trebuchet/FolderIcon;->sStaticValuesDirty:Z

    .line 141
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolderName:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 595
    return-void
.end method

.method public performCreateAnimation(Lcom/cyanogenmod/trebuchet/ShortcutInfo;Landroid/view/View;Lcom/cyanogenmod/trebuchet/ShortcutInfo;Landroid/view/View;Landroid/graphics/Rect;FLjava/lang/Runnable;)V
    .locals 8
    .parameter "destInfo"
    .parameter "destView"
    .parameter "srcInfo"
    .parameter "srcView"
    .parameter "dstRect"
    .parameter "scaleRelativeToDragLayer"
    .parameter "postAnimationRunnable"

    .prologue
    const/4 v5, 0x1

    .line 296
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v7, v0, v5

    .line 297
    .local v7, animateDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->computePreviewDrawingParams(II)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v6, p7

    .line 300
    invoke-direct/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/FolderIcon;->onDrop(Lcom/cyanogenmod/trebuchet/ShortcutInfo;Landroid/view/View;Landroid/graphics/Rect;FILjava/lang/Runnable;)V

    .line 304
    const/16 v0, 0x15e

    invoke-direct {p0, v7, v0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;I)V

    .line 306
    new-instance v0, Lcom/cyanogenmod/trebuchet/FolderIcon$1;

    invoke-direct {v0, p0, p1}, Lcom/cyanogenmod/trebuchet/FolderIcon$1;-><init>(Lcom/cyanogenmod/trebuchet/FolderIcon;Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 311
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 565
    if-eqz p1, :cond_0

    .line 566
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolderName:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setVisibility(I)V

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolderName:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setVisibility(I)V

    goto :goto_0
.end method
