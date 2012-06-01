.class public Lcom/cyanogenmod/trebuchet/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;,
        Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mCellHeight:I

.field private final mCellInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

.field private mCellWidth:I

.field private mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

.field private mCountX:I

.field private mCountY:I

.field private mCrosshairsAnimator:Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

.field private mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

.field private mCrosshairsVisibility:F

.field private final mDragCell:[I

.field private final mDragCenter:Landroid/graphics/Point;

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Point;

.field private mDragging:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mFolderLeaveBehindCell:[I

.field private mFolderOuterRings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundAlpha:I

.field private mForegroundPadding:I

.field private mForegroundRect:Landroid/graphics/Rect;

.field private mHeightGap:I

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIsDragOverlapping:Z

.field private mLastDownOnOccupiedCell:Z

.field private mMaxGap:I

.field private mNormalBackground:Landroid/graphics/drawable/Drawable;

.field mOccupied:[[Z

.field private mOriginalCellHeight:I

.field private mOriginalCellWidth:I

.field private mOriginalHeightGap:I

.field private mOriginalWidthGap:I

.field private mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverScrollLeft:Landroid/graphics/drawable/Drawable;

.field private mOverScrollRight:Landroid/graphics/drawable/Drawable;

.field private mPressedOrFocusedIcon:Lcom/cyanogenmod/trebuchet/BubbleTextView;

.field private final mRect:Landroid/graphics/Rect;

.field private mReorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollingTransformsDirty:Z

.field mTempLocation:[I

.field private final mTmpPoint:[I

.field private final mTmpPointF:Landroid/graphics/PointF;

.field private final mTmpXY:[I

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 146
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mScrollingTransformsDirty:Z

    .line 74
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 75
    new-instance v12, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    invoke-direct {v12}, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    .line 79
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTmpXY:[I

    .line 80
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTmpPoint:[I

    .line 81
    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    .line 82
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTempLocation:[I

    .line 85
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 89
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    .line 90
    const/4 v12, 0x2

    new-array v12, v12, [I

    fill-array-data v12, :array_0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mFolderLeaveBehindCell:[I

    .line 92
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mForegroundAlpha:I

    .line 94
    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 106
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mIsDragOverlapping:Z

    .line 107
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragCenter:Landroid/graphics/Point;

    .line 111
    const/4 v12, 0x4

    new-array v12, v12, [Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    .line 112
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    array-length v12, v12

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineAlphas:[F

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    array-length v12, v12

    new-array v12, v12, [Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineAnims:[Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    .line 117
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineCurrent:I

    .line 118
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 122
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 123
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsAnimator:Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    .line 124
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsVisibility:F

    .line 126
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 130
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragCell:[I

    .line 132
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragging:Z

    .line 150
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/cyanogenmod/trebuchet/CellLayout;->setWillNotDraw(Z)V

    .line 152
    sget-object v12, Lcom/cyanogenmod/trebuchet/R$styleable;->CellLayout:[I

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v12, v2, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 154
    .local v3, a:Landroid/content/res/TypedArray;
    const/4 v12, 0x0

    const/16 v13, 0xa

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOriginalCellWidth:I

    .line 156
    const/4 v12, 0x1

    const/16 v13, 0xa

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOriginalCellHeight:I

    .line 158
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOriginalWidthGap:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    .line 159
    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOriginalHeightGap:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mHeightGap:I

    .line 160
    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mMaxGap:I

    .line 161
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getCellCountX()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    .line 162
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getCellCountY()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    .line 163
    move-object/from16 v0, p0

    iget v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Z

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOccupied:[[Z

    .line 165
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/cyanogenmod/trebuchet/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 171
    .local v9, res:Landroid/content/res/Resources;
    const v12, 0x7f020018

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .line 172
    const v12, 0x7f020019

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    .line 174
    const v12, 0x7f020030

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    .line 175
    const v12, 0x7f020031

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    .line 176
    const v12, 0x7f0b0019

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mForegroundPadding:I

    .line 179
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 184
    const v12, 0x7f020012

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 185
    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x4020

    invoke-direct {v12, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 188
    const v12, 0x7f0a0016

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 189
    .local v5, animDuration:I
    new-instance v12, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    int-to-long v13, v5

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    invoke-direct/range {v12 .. v16}, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;-><init>(JFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsAnimator:Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    .line 190
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsAnimator:Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    invoke-virtual {v12}, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/cyanogenmod/trebuchet/CellLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/cyanogenmod/trebuchet/CellLayout$1;-><init>(Lcom/cyanogenmod/trebuchet/CellLayout;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsAnimator:Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    invoke-virtual {v12}, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragCell:[I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragCell:[I

    const/4 v15, 0x1

    const/16 v16, -0x1

    aput v16, v14, v15

    aput v16, v12, v13

    .line 199
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    array-length v12, v12

    if-ge v8, v12, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    new-instance v13, Landroid/graphics/Point;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v13, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    aput-object v13, v12, v8

    .line 199
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 207
    :cond_0
    const v12, 0x7f0a0018

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 208
    .local v6, duration:I
    const/4 v7, 0x0

    .line 209
    .local v7, fromAlphaValue:F
    const v12, 0x7f0a0019

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-float v11, v12

    .line 211
    .local v11, toAlphaValue:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineAlphas:[F

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/util/Arrays;->fill([FF)V

    .line 213
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineAnims:[Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    array-length v12, v12

    if-ge v8, v12, :cond_1

    .line 214
    new-instance v4, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    int-to-long v12, v6

    const/4 v14, 0x0

    invoke-direct {v4, v12, v13, v14, v11}, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;-><init>(JFF)V

    .line 216
    .local v4, anim:Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;
    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 217
    move v10, v8

    .line 218
    .local v10, thisIndex:I
    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/cyanogenmod/trebuchet/CellLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4, v10}, Lcom/cyanogenmod/trebuchet/CellLayout$2;-><init>(Lcom/cyanogenmod/trebuchet/CellLayout;Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;I)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 243
    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/cyanogenmod/trebuchet/CellLayout$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4}, Lcom/cyanogenmod/trebuchet/CellLayout$3;-><init>(Lcom/cyanogenmod/trebuchet/CellLayout;Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineAnims:[Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    aput-object v4, v12, v8

    .line 213
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 254
    .end local v4           #anim:Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;
    .end local v10           #thisIndex:I
    :cond_1
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    .line 255
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    .line 257
    new-instance v12, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    .line 258
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/cyanogenmod/trebuchet/CellLayout;->addView(Landroid/view/View;)V

    .line 259
    return-void

    .line 90
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$002(Lcom/cyanogenmod/trebuchet/CellLayout;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsVisibility:F

    return p1
.end method

.method static synthetic access$100(Lcom/cyanogenmod/trebuchet/CellLayout;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineAlphas:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/cyanogenmod/trebuchet/CellLayout;)[Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cyanogenmod/trebuchet/CellLayout;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method private clearOccupiedCells()V
    .locals 4

    .prologue
    .line 1562
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    iget v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    .line 1563
    const/4 v1, 0x0

    .local v1, y:I
    :goto_1
    iget v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    .line 1564
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 1563
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1562
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1567
    .end local v1           #y:I
    :cond_1
    return-void
.end method

.method private clearTagCellInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 715
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    .line 716
    .local v0, cellInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 717
    iput v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cellX:I

    .line 718
    iput v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cellY:I

    .line 719
    iput v3, v0, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanX:I

    .line 720
    iput v3, v0, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanY:I

    .line 721
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 722
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 8
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1540
    const/4 v4, 0x0

    .local v4, y:I
    :goto_0
    if-ge v4, p4, :cond_7

    .line 1541
    const/4 v3, 0x0

    .local v3, x:I
    :goto_1
    if-ge v3, p3, :cond_6

    .line 1542
    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-nez v7, :cond_1

    move v0, v5

    .line 1543
    .local v0, available:Z
    :goto_2
    move v1, v3

    .local v1, i:I
    :goto_3
    add-int v7, v3, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_0

    if-ge v3, p3, :cond_0

    .line 1544
    move v2, v4

    .local v2, j:I
    :goto_4
    add-int v7, v4, p2

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_4

    if-ge v4, p4, :cond_4

    .line 1545
    if-eqz v0, :cond_2

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_2

    move v0, v5

    .line 1546
    :goto_5
    if-nez v0, :cond_3

    .line 1550
    .end local v2           #j:I
    :cond_0
    if-eqz v0, :cond_5

    .line 1551
    aput v3, p0, v6

    .line 1552
    aput v4, p0, v5

    .line 1558
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v3           #x:I
    :goto_6
    return v5

    .restart local v3       #x:I
    :cond_1
    move v0, v6

    .line 1542
    goto :goto_2

    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_2
    move v0, v6

    .line 1545
    goto :goto_5

    .line 1544
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1543
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1541
    .end local v2           #j:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1540
    .end local v0           #available:Z
    .end local v1           #i:I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3           #x:I
    :cond_7
    move v5, v6

    .line 1558
    goto :goto_6
.end method

.method static heightInLandscape(Landroid/content/res/Resources;I)I
    .locals 4
    .parameter "r"
    .parameter "numCells"

    .prologue
    .line 276
    const v2, 0x7f0b000b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 277
    .local v0, cellHeight:I
    const v2, 0x7f0b000c

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0b000d

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 280
    .local v1, minGap:I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method

.method private invalidateBubbleTextView(Lcom/cyanogenmod/trebuchet/BubbleTextView;)V
    .locals 6
    .parameter "icon"

    .prologue
    .line 295
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v0

    .line 296
    .local v0, padding:I
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/cyanogenmod/trebuchet/CellLayout;->invalidate(IIII)V

    .line 300
    return-void
.end method

.method private markCellsForView(IIIIZ)V
    .locals 3
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "value"

    .prologue
    .line 1638
    move v0, p1

    .local v0, x:I
    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    .line 1639
    move v1, p2

    .local v1, y:I
    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_0

    iget v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    .line 1640
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, v0

    aput-boolean p5, v2, v1

    .line 1639
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1638
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1643
    .end local v1           #y:I
    :cond_1
    return-void
.end method

.method public static rectToCell(Landroid/content/res/Resources;II[I)[I
    .locals 9
    .parameter "resources"
    .parameter "width"
    .parameter "height"
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1477
    const v5, 0x7f0b000a

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1478
    .local v1, actualWidth:I
    const v5, 0x7f0b000b

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1479
    .local v0, actualHeight:I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1482
    .local v2, smallerSize:I
    int-to-float v5, p1

    int-to-float v6, v2

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 1483
    .local v3, spanX:I
    int-to-float v5, p2

    int-to-float v6, v2

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 1485
    .local v4, spanY:I
    if-nez p3, :cond_0

    .line 1486
    const/4 v5, 0x2

    new-array p3, v5, [I

    .end local p3
    aput v3, p3, v7

    aput v4, p3, v8

    .line 1490
    :goto_0
    return-object p3

    .line 1488
    .restart local p3
    :cond_0
    aput v3, p3, v7

    .line 1489
    aput v4, p3, v8

    goto :goto_0
.end method

.method private setChildrenAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildCount()I

    move-result v0

    .line 949
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 950
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 949
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 952
    :cond_0
    return-void
.end method

.method private setFastChildrenAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 955
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildCount()I

    move-result v0

    .line 956
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 957
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setFastAlpha(F)V

    .line 956
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 959
    :cond_0
    return-void
.end method

.method static widthInPortrait(Landroid/content/res/Resources;I)I
    .locals 4
    .parameter "r"
    .parameter "numCells"

    .prologue
    .line 265
    const v2, 0x7f0b000a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 266
    .local v0, cellWidth:I
    const v2, 0x7f0b000c

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0b000d

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 269
    .local v1, minGap:I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;Z)Z
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "childId"
    .parameter "params"
    .parameter "markCells"

    .prologue
    .line 558
    move-object v0, p4

    .line 562
    .local v0, lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    iget v1, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_3

    iget v1, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_3

    .line 565
    iget v1, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    iput v1, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellHSpan:I

    .line 566
    :cond_0
    iget v1, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    iput v1, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellVSpan:I

    .line 568
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 570
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v1, p1, p2, v0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 572
    if-eqz p5, :cond_2

    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 574
    :cond_2
    const/4 v1, 0x1

    .line 576
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public animateChildToPosition(Landroid/view/View;IIII)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 967
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildrenLayout()Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-result-object v5

    .line 968
    invoke-virtual {v5, p1}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOccupied:[[Z

    aget-object v0, v0, p2

    aget-boolean v0, v0, p3

    if-nez v0, :cond_1

    .line 969
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 970
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 973
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 974
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 975
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    :cond_0
    iget v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->x:I

    .line 979
    iget v6, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->y:I

    .line 980
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOccupied:[[Z

    iget v8, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    aget-object v7, v7, v8

    iget v8, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    aput-boolean v4, v7, v8

    .line 981
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOccupied:[[Z

    aget-object v7, v7, p2

    aput-boolean v3, v7, p3

    .line 983
    iput-boolean v3, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 984
    iput p2, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    iput p2, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    .line 985
    iput p3, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    iput p3, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    .line 986
    invoke-virtual {v5, v0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->setupLp(Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;)V

    .line 987
    iput-boolean v4, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 988
    iget v1, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->x:I

    .line 989
    iget v5, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->y:I

    .line 991
    iput v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->x:I

    .line 992
    iput v6, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->y:I

    .line 993
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 995
    const-string v7, "x"

    new-array v8, v9, [I

    aput v2, v8, v4

    aput v1, v8, v3

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 996
    const-string v2, "y"

    new-array v7, v9, [I

    aput v6, v7, v4

    aput v5, v7, v3

    invoke-static {v2, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 997
    new-array v5, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v4

    aput-object v2, v5, v3

    invoke-static {v0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 998
    int-to-long v4, p4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 999
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    new-instance v2, Lcom/cyanogenmod/trebuchet/CellLayout$4;

    invoke-direct {v2, p0, p1}, Lcom/cyanogenmod/trebuchet/CellLayout$4;-><init>(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1005
    new-instance v2, Lcom/cyanogenmod/trebuchet/CellLayout$5;

    invoke-direct {v2, p0, v0}, Lcom/cyanogenmod/trebuchet/CellLayout$5;-><init>(Lcom/cyanogenmod/trebuchet/CellLayout;Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1022
    int-to-long v4, p5

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1023
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    move v0, v3

    .line 1026
    :goto_0
    return v0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method buildChildrenLayer()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->buildLayer()V

    .line 637
    return-void
.end method

.method public calculateSpans(Lcom/cyanogenmod/trebuchet/ItemInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    .line 1507
    instance-of v3, p1, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 1508
    check-cast v3, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;

    iget v1, v3, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->minWidth:I

    .local v1, minWidth:I
    move-object v3, p1

    .line 1509
    check-cast v3, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;

    iget v0, v3, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->minHeight:I

    .line 1518
    .local v0, minHeight:I
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->rectToCell(II[I)[I

    move-result-object v2

    .line 1519
    .local v2, spans:[I
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanX:I

    .line 1520
    aget v3, v2, v4

    iput v3, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanY:I

    .line 1521
    .end local v0           #minHeight:I
    .end local v1           #minWidth:I
    .end local v2           #spans:[I
    :goto_1
    return-void

    .line 1510
    :cond_0
    instance-of v3, p1, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 1511
    check-cast v3, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;

    iget v1, v3, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->minWidth:I

    .restart local v1       #minWidth:I
    move-object v3, p1

    .line 1512
    check-cast v3, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;

    iget v0, v3, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->minHeight:I

    .restart local v0       #minHeight:I
    goto :goto_0

    .line 1515
    .end local v0           #minHeight:I
    .end local v1           #minWidth:I
    :cond_1
    iput v4, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanY:I

    iput v4, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanX:I

    goto :goto_1
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 534
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 537
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildCount()I

    move-result v1

    .line 538
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 539
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 540
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 538
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 542
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method cellToCenterPoint(II[I)V
    .locals 5
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 786
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getPaddingTop()I

    move-result v1

    .line 788
    .local v1, vStartPadding:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    iget v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p3, v2

    .line 789
    const/4 v2, 0x1

    iget v3, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p3, v2

    .line 790
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 5
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 770
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getPaddingTop()I

    move-result v1

    .line 772
    .local v1, vStartPadding:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aput v3, p3, v2

    .line 773
    const/4 v2, 0x1

    iget v3, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    aput v3, p3, v2

    .line 774
    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/RectF;)V
    .locals 15
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "resultRect"

    .prologue
    .line 1445
    iget v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    .line 1446
    .local v2, cellWidth:I
    iget v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellHeight:I

    .line 1447
    .local v1, cellHeight:I
    iget v8, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    .line 1448
    .local v8, widthGap:I
    iget v5, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mHeightGap:I

    .line 1450
    .local v5, heightGap:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getPaddingLeft()I

    move-result v3

    .line 1451
    .local v3, hStartPadding:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getPaddingTop()I

    move-result v6

    .line 1453
    .local v6, vStartPadding:I
    mul-int v11, p3, v2

    add-int/lit8 v12, p3, -0x1

    mul-int/2addr v12, v8

    add-int v7, v11, v12

    .line 1454
    .local v7, width:I
    mul-int v11, p4, v1

    add-int/lit8 v12, p4, -0x1

    mul-int/2addr v12, v5

    add-int v4, v11, v12

    .line 1456
    .local v4, height:I
    add-int v11, v2, v8

    mul-int v11, v11, p1

    add-int v9, v3, v11

    .line 1457
    .local v9, x:I
    add-int v11, v1, v5

    mul-int v11, v11, p2

    add-int v10, v6, v11

    .line 1459
    .local v10, y:I
    int-to-float v11, v9

    int-to-float v12, v10

    add-int v13, v9, v7

    int-to-float v13, v13

    add-int v14, v10, v4

    int-to-float v14, v14

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1460
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1670
    instance-of v0, p1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1132
    iget v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineCurrent:I

    .line 1133
    .local v0, oldIndex:I
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineAnims:[Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;->animateOut()V

    .line 1134
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragCell:[I

    const/4 v2, 0x0

    aput v3, v1, v2

    .line 1135
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 1136
    return-void
.end method

.method public clearFolderLeaveBehind()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 522
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 523
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 524
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->invalidate()V

    .line 525
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 494
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 495
    iget v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mForegroundAlpha:I

    if-lez v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 497
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 498
    .local v0, p:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 499
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 500
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 502
    .end local v0           #p:Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->enableHardwareLayers()V

    .line 285
    return-void
.end method

.method findCellForSpan([III)Z
    .locals 7
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v4, -0x1

    .line 1281
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method findCellForSpanIgnoring([IIILandroid/view/View;)Z
    .locals 7
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"

    .prologue
    const/4 v4, -0x1

    .line 1295
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersects([IIIII)Z
    .locals 7
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "intersectX"
    .parameter "intersectY"

    .prologue
    .line 1312
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z
    .locals 12
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "intersectX"
    .parameter "intersectY"
    .parameter "ignoreView"

    .prologue
    .line 1322
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 1324
    const/4 v3, 0x0

    .line 1326
    .local v3, foundCell:Z
    :goto_0
    const/4 v6, 0x0

    .line 1327
    .local v6, startX:I
    if-ltz p4, :cond_0

    .line 1328
    add-int/lit8 v10, p2, -0x1

    sub-int v10, p4, v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1330
    :cond_0
    iget v10, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    add-int/lit8 v11, p2, -0x1

    sub-int v1, v10, v11

    .line 1331
    .local v1, endX:I
    if-ltz p4, :cond_1

    .line 1332
    add-int/lit8 v10, p2, -0x1

    add-int v11, p4, v10

    const/4 v10, 0x1

    if-ne p2, v10, :cond_4

    const/4 v10, 0x1

    :goto_1
    add-int/2addr v10, v11

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1334
    :cond_1
    const/4 v7, 0x0

    .line 1335
    .local v7, startY:I
    if-ltz p5, :cond_2

    .line 1336
    add-int/lit8 v10, p3, -0x1

    sub-int v10, p5, v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1338
    :cond_2
    iget v10, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    add-int/lit8 v11, p3, -0x1

    sub-int v2, v10, v11

    .line 1339
    .local v2, endY:I
    if-ltz p5, :cond_3

    .line 1340
    add-int/lit8 v10, p3, -0x1

    add-int v11, p5, v10

    const/4 v10, 0x1

    if-ne p3, v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    add-int/2addr v10, v11

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1343
    :cond_3
    move v9, v7

    .local v9, y:I
    :goto_3
    if-ge v9, v2, :cond_b

    if-nez v3, :cond_b

    .line 1345
    move v8, v6

    .local v8, x:I
    :goto_4
    if-ge v8, v1, :cond_a

    .line 1346
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    if-ge v4, p2, :cond_8

    .line 1347
    const/4 v5, 0x0

    .local v5, j:I
    :goto_6
    if-ge v5, p3, :cond_7

    .line 1348
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOccupied:[[Z

    add-int v11, v8, v4

    aget-object v10, v10, v11

    add-int v11, v9, v5

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_6

    .line 1351
    add-int/2addr v8, v4

    .line 1345
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1332
    .end local v2           #endY:I
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v7           #startY:I
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 1340
    .restart local v2       #endY:I
    .restart local v7       #startY:I
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 1347
    .restart local v4       #i:I
    .restart local v5       #j:I
    .restart local v8       #x:I
    .restart local v9       #y:I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1346
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1356
    .end local v5           #j:I
    :cond_8
    if-eqz p1, :cond_9

    .line 1357
    const/4 v10, 0x0

    aput v8, p1, v10

    .line 1358
    const/4 v10, 0x1

    aput v9, p1, v10

    .line 1360
    :cond_9
    const/4 v3, 0x1

    .line 1343
    .end local v4           #i:I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1364
    .end local v8           #x:I
    :cond_b
    const/4 v10, -0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_c

    const/4 v10, -0x1

    move/from16 v0, p5

    if-ne v0, v10, :cond_c

    .line 1376
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 1377
    return v3

    .line 1369
    :cond_c
    const/16 p4, -0x1

    .line 1370
    const/16 p5, -0x1

    .line 1371
    goto/16 :goto_0
.end method

.method findNearestArea(IIIILandroid/view/View;Z[I)[I
    .locals 21
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "ignoreOccupied"
    .parameter "result"

    .prologue
    .line 1173
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 1178
    move/from16 v0, p1

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    move/from16 v17, v0

    add-int v16, v16, v17

    add-int/lit8 v17, p3, -0x1

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    sub-float v15, v15, v16

    float-to-int v0, v15

    move/from16 p1, v0

    .line 1179
    move/from16 v0, p2

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellHeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mHeightGap:I

    move/from16 v17, v0

    add-int v16, v16, v17

    add-int/lit8 v17, p4, -0x1

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    sub-float v15, v15, v16

    float-to-int v0, v15

    move/from16 p2, v0

    .line 1182
    if-eqz p7, :cond_1

    move-object/from16 v4, p7

    .line 1183
    .local v4, bestXY:[I
    :goto_0
    const-wide v2, 0x7fefffffffffffffL

    .line 1185
    .local v2, bestDistance:D
    move-object/from16 v0, p0

    iget v6, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    .line 1186
    .local v6, countX:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    .line 1187
    .local v7, countY:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOccupied:[[Z

    .line 1189
    .local v12, occupied:[[Z
    const/4 v14, 0x0

    .local v14, y:I
    :goto_1
    add-int/lit8 v15, p4, -0x1

    sub-int v15, v7, v15

    if-ge v14, v15, :cond_6

    .line 1191
    const/4 v13, 0x0

    .local v13, x:I
    :goto_2
    add-int/lit8 v15, p3, -0x1

    sub-int v15, v6, v15

    if-ge v13, v15, :cond_5

    .line 1192
    if-eqz p6, :cond_4

    .line 1193
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    move/from16 v0, p3

    if-ge v10, v0, :cond_4

    .line 1194
    const/4 v11, 0x0

    .local v11, j:I
    :goto_4
    move/from16 v0, p4

    if-ge v11, v0, :cond_3

    .line 1195
    add-int v15, v13, v10

    aget-object v15, v12, v15

    add-int v16, v14, v11

    aget-boolean v15, v15, v16

    if-eqz v15, :cond_2

    .line 1198
    add-int/2addr v13, v10

    .line 1191
    .end local v10           #i:I
    .end local v11           #j:I
    :cond_0
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1182
    .end local v2           #bestDistance:D
    .end local v4           #bestXY:[I
    .end local v6           #countX:I
    .end local v7           #countY:I
    .end local v12           #occupied:[[Z
    .end local v13           #x:I
    .end local v14           #y:I
    :cond_1
    const/4 v15, 0x2

    new-array v4, v15, [I

    goto :goto_0

    .line 1194
    .restart local v2       #bestDistance:D
    .restart local v4       #bestXY:[I
    .restart local v6       #countX:I
    .restart local v7       #countY:I
    .restart local v10       #i:I
    .restart local v11       #j:I
    .restart local v12       #occupied:[[Z
    .restart local v13       #x:I
    .restart local v14       #y:I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1193
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1204
    .end local v10           #i:I
    .end local v11           #j:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTmpXY:[I

    .line 1205
    .local v5, cellXY:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->cellToCenterPoint(II[I)V

    .line 1207
    const/4 v15, 0x0

    aget v15, v5, v15

    sub-int v15, v15, p1

    int-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    const/16 v17, 0x1

    aget v17, v5, v17

    sub-int v17, v17, p2

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 1209
    .local v8, distance:D
    cmpg-double v15, v8, v2

    if-gtz v15, :cond_0

    .line 1210
    move-wide v2, v8

    .line 1211
    const/4 v15, 0x0

    aput v13, v4, v15

    .line 1212
    const/4 v15, 0x1

    aput v14, v4, v15

    goto :goto_5

    .line 1189
    .end local v5           #cellXY:[I
    .end local v8           #distance:D
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1217
    .end local v13           #x:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 1220
    const-wide v15, 0x7fefffffffffffffL

    cmpl-double v15, v2, v15

    if-nez v15, :cond_7

    .line 1221
    const/4 v15, 0x0

    const/16 v16, -0x1

    aput v16, v4, v15

    .line 1222
    const/4 v15, 0x1

    const/16 v16, -0x1

    aput v16, v4, v15

    .line 1224
    :cond_7
    return-object v4
.end method

.method findNearestArea(IIII[I)[I
    .locals 8
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    .line 1260
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/cyanogenmod/trebuchet/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIILandroid/view/View;[I)[I
    .locals 8
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "result"

    .prologue
    .line 1242
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/cyanogenmod/trebuchet/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIII[I)[I
    .locals 7
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    .line 1153
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1665
    new-instance v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1675
    new-instance v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 909
    iget v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundAlphaMultiplier()F
    .locals 1

    .prologue
    .line 921
    iget v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mBackgroundAlphaMultiplier:F

    return v0
.end method

.method getCellHeight()I
    .locals 1

    .prologue
    .line 797
    iget v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellHeight:I

    return v0
.end method

.method getCellWidth()I
    .locals 1

    .prologue
    .line 793
    iget v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 962
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenLayout()Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    .line 331
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCountX()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    return v0
.end method

.method getCountY()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 3

    .prologue
    .line 1651
    iget v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingTop:I

    iget v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mHeightGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .locals 3

    .prologue
    .line 1646
    iget v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getExpandabilityArrayForView(Landroid/view/View;[I)V
    .locals 10
    .parameter "view"
    .parameter "expandability"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1575
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 1578
    .local v1, lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    aput v6, p2, v6

    .line 1579
    iget v4, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    add-int/lit8 v2, v4, -0x1

    .local v2, x:I
    :goto_0
    if-ltz v2, :cond_2

    .line 1580
    const/4 v0, 0x0

    .line 1581
    .local v0, flag:Z
    iget v3, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    .local v3, y:I
    :goto_1
    iget v4, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 1582
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 1581
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1584
    :cond_1
    if-eqz v0, :cond_4

    .line 1588
    .end local v0           #flag:Z
    .end local v3           #y:I
    :cond_2
    aput v6, p2, v7

    .line 1589
    iget v4, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    add-int/lit8 v3, v4, -0x1

    .restart local v3       #y:I
    :goto_2
    if-ltz v3, :cond_6

    .line 1590
    const/4 v0, 0x0

    .line 1591
    .restart local v0       #flag:Z
    iget v2, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    :goto_3
    iget v4, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_5

    .line 1592
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    .line 1591
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1585
    :cond_4
    aget v4, p2, v6

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v6

    .line 1579
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1594
    :cond_5
    if-eqz v0, :cond_8

    .line 1598
    .end local v0           #flag:Z
    :cond_6
    aput v6, p2, v8

    .line 1599
    iget v4, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellHSpan:I

    add-int v2, v4, v5

    :goto_4
    iget v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    if-ge v2, v4, :cond_a

    .line 1600
    const/4 v0, 0x0

    .line 1601
    .restart local v0       #flag:Z
    iget v3, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    :goto_5
    iget v4, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_9

    .line 1602
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_7

    const/4 v0, 0x1

    .line 1601
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1595
    :cond_8
    aget v4, p2, v7

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v7

    .line 1589
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1604
    :cond_9
    if-eqz v0, :cond_c

    .line 1608
    .end local v0           #flag:Z
    :cond_a
    aput v6, p2, v9

    .line 1609
    iget v4, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellVSpan:I

    add-int v3, v4, v5

    :goto_6
    iget v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    if-ge v3, v4, :cond_e

    .line 1610
    const/4 v0, 0x0

    .line 1611
    .restart local v0       #flag:Z
    iget v2, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    :goto_7
    iget v4, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_d

    .line 1612
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_b

    const/4 v0, 0x1

    .line 1611
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1605
    :cond_c
    aget v4, p2, v8

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v8

    .line 1599
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1614
    :cond_d
    if-eqz v0, :cond_f

    .line 1617
    .end local v0           #flag:Z
    :cond_e
    return-void

    .line 1615
    .restart local v0       #flag:Z
    :cond_f
    aget v4, p2, v9

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v9

    .line 1609
    add-int/lit8 v3, v3, 0x1

    goto :goto_6
.end method

.method getHeightGap()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mHeightGap:I

    return v0
.end method

.method getIsDragOverlapping()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getTag()Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;
    .locals 1

    .prologue
    .line 725
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getTag()Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVacantCell([III)Z
    .locals 6
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1534
    iget v3, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    iget v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOccupied:[[Z

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0
.end method

.method getWidthGap()I
    .locals 1

    .prologue
    .line 801
    iget v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    return v0
.end method

.method public hideFolderAccept(Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;)V
    .locals 1
    .parameter "fra"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->invalidate()V

    .line 513
    return-void
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 1833
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 1626
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    if-eq v0, v1, :cond_1

    .line 1629
    :cond_0
    :goto_0
    return-void

    .line 1627
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 1628
    .local v6, lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    iget v1, v6, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    iget v2, v6, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    iget v3, v6, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->markCellsForView(IIIIZ)V

    goto :goto_0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 1632
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    if-eq v0, v1, :cond_1

    .line 1635
    :cond_0
    :goto_0
    return-void

    .line 1633
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 1634
    .local v6, lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    iget v1, v6, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    iget v2, v6, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    iget v3, v6, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->markCellsForView(IIIIZ)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 641
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 642
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->screen:I

    .line 643
    return-void
.end method

.method onDragEnter()V
    .locals 1

    .prologue
    .line 1386
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragging:Z

    if-nez v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsAnimator:Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsAnimator:Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;->animateIn()V

    .line 1392
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragging:Z

    .line 1393
    return-void
.end method

.method onDragExit()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1402
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragging:Z

    if-eqz v0, :cond_0

    .line 1403
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragging:Z

    .line 1406
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsAnimator:Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsAnimator:Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;->animateOut()V

    .line 1412
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragCell:[I

    aput v3, v0, v2

    .line 1413
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragCell:[I

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 1414
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineAnims:[Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;->animateOut()V

    .line 1415
    iget v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineAnims:[Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineCurrent:I

    .line 1417
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setIsDragOverlapping(Z)V

    .line 1418
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 30
    .parameter "canvas"

    .prologue
    .line 370
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mBackgroundAlpha:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_0

    .line 373
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mIsDragOverlapping:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 375
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    .line 380
    .local v9, bg:Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mBackgroundAlpha:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mBackgroundAlphaMultiplier:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    const/high16 v28, 0x437f

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 382
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 385
    .end local v9           #bg:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsVisibility:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_4

    .line 386
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    .line 387
    .local v13, countX:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    .line 389
    .local v14, countY:I
    const v5, 0x3ecccccd

    .line 390
    .local v5, MAX_ALPHA:F
    const/16 v6, 0x258

    .line 391
    .local v6, MAX_VISIBLE_DISTANCE:I
    const v4, 0x3b03126f

    .line 393
    .local v4, DISTANCE_MULTIPLIER:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 394
    .local v15, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    .line 395
    .local v24, width:I
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    .line 397
    .local v18, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getPaddingLeft()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    div-int/lit8 v28, v24, 0x2

    sub-int v25, v27, v28

    .line 398
    .local v25, x:I
    const/4 v12, 0x0

    .local v12, col:I
    :goto_1
    if-gt v12, v13, :cond_4

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getPaddingTop()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mHeightGap:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    div-int/lit8 v28, v18, 0x2

    sub-int v26, v27, v28

    .line 400
    .local v26, y:I
    const/16 v23, 0x0

    .local v23, row:I
    :goto_2
    move/from16 v0, v23

    if-gt v0, v14, :cond_3

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragCenter:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    sub-int v28, v25, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragCenter:Landroid/graphics/Point;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    sub-int v29, v26, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/PointF;->set(FF)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/PointF;->length()F

    move-result v16

    .line 404
    .local v16, dist:F
    const v27, 0x3ecccccd

    const v28, 0x3b03126f

    const/high16 v29, 0x4416

    sub-float v29, v29, v16

    mul-float v28, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 406
    .local v7, alpha:F
    const/16 v27, 0x0

    cmpl-float v27, v7, v27

    if-lez v27, :cond_1

    .line 407
    add-int v27, v25, v24

    add-int v28, v26, v18

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 408
    const/high16 v27, 0x437f

    mul-float v27, v27, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsVisibility:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 409
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 411
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellHeight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mHeightGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v26, v26, v27

    .line 400
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 377
    .end local v4           #DISTANCE_MULTIPLIER:F
    .end local v5           #MAX_ALPHA:F
    .end local v6           #MAX_VISIBLE_DISTANCE:I
    .end local v7           #alpha:F
    .end local v12           #col:I
    .end local v13           #countX:I
    .end local v14           #countY:I
    .end local v15           #d:Landroid/graphics/drawable/Drawable;
    .end local v16           #dist:F
    .end local v18           #height:I
    .end local v23           #row:I
    .end local v24           #width:I
    .end local v25           #x:I
    .end local v26           #y:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .restart local v9       #bg:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 413
    .end local v9           #bg:Landroid/graphics/drawable/Drawable;
    .restart local v4       #DISTANCE_MULTIPLIER:F
    .restart local v5       #MAX_ALPHA:F
    .restart local v6       #MAX_VISIBLE_DISTANCE:I
    .restart local v12       #col:I
    .restart local v13       #countX:I
    .restart local v14       #countY:I
    .restart local v15       #d:Landroid/graphics/drawable/Drawable;
    .restart local v18       #height:I
    .restart local v23       #row:I
    .restart local v24       #width:I
    .restart local v25       #x:I
    .restart local v26       #y:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v25, v25, v27

    .line 398
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 417
    .end local v4           #DISTANCE_MULTIPLIER:F
    .end local v5           #MAX_ALPHA:F
    .end local v6           #MAX_VISIBLE_DISTANCE:I
    .end local v12           #col:I
    .end local v13           #countX:I
    .end local v14           #countY:I
    .end local v15           #d:Landroid/graphics/drawable/Drawable;
    .end local v18           #height:I
    .end local v23           #row:I
    .end local v24           #width:I
    .end local v25           #x:I
    .end local v26           #y:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    .line 418
    .local v22, paint:Landroid/graphics/Paint;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineAlphas:[F

    move-object/from16 v27, v0

    aget v7, v27, v19

    .line 420
    .restart local v7       #alpha:F
    const/16 v27, 0x0

    cmpl-float v27, v7, v27

    if-lez v27, :cond_5

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    move-object/from16 v27, v0

    aget-object v20, v27, v19

    .line 422
    .local v20, p:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineAnims:[Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    move-object/from16 v27, v0

    aget-object v27, v27, v19

    invoke-virtual/range {v27 .. v27}, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 423
    .local v8, b:Landroid/graphics/Bitmap;
    const/high16 v27, 0x3f00

    add-float v27, v27, v7

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 424
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v22

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 418
    .end local v8           #b:Landroid/graphics/Bitmap;
    .end local v20           #p:Landroid/graphics/Point;
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 430
    .end local v7           #alpha:F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPressedOrFocusedIcon:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPressedOrFocusedIcon:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v21

    .line 432
    .local v21, padding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPressedOrFocusedIcon:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getPressedOrFocusedBackground()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 433
    .restart local v8       #b:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_7

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPressedOrFocusedIcon:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getPaddingLeft()I

    move-result v28

    add-int v27, v27, v28

    sub-int v27, v27, v21

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPressedOrFocusedIcon:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getTop()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getPaddingTop()I

    move-result v29

    add-int v28, v28, v29

    sub-int v28, v28, v21

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 442
    .end local v8           #b:Landroid/graphics/Bitmap;
    .end local v21           #padding:I
    :cond_7
    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    .line 446
    .local v17, fra:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;
    sget-object v15, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 447
    .restart local v15       #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v17 .. v17}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->getOuterRingSize()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v24, v0

    .line 448
    .restart local v24       #width:I
    move/from16 v18, v24

    .line 449
    .restart local v18       #height:I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mCellX:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mCellY:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTempLocation:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->cellToPoint(II[I)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    add-int v10, v27, v28

    .line 452
    .local v10, centerX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    sget v28, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    div-int/lit8 v28, v28, 0x2

    add-int v11, v27, v28

    .line 454
    .local v11, centerY:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 455
    div-int/lit8 v27, v24, 0x2

    sub-int v27, v10, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-int/lit8 v28, v18, 0x2

    sub-int v28, v11, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 456
    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v24

    move/from16 v3, v18

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 457
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 461
    sget-object v15, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 462
    invoke-virtual/range {v17 .. v17}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->getInnerRingSize()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v24, v0

    .line 463
    move/from16 v18, v24

    .line 464
    move-object/from16 v0, v17

    iget v0, v0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mCellX:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mCellY:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTempLocation:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->cellToPoint(II[I)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    add-int v10, v27, v28

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    sget v28, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    div-int/lit8 v28, v28, 0x2

    add-int v11, v27, v28

    .line 468
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 469
    div-int/lit8 v27, v24, 0x2

    sub-int v27, v10, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-int/lit8 v28, v24, 0x2

    sub-int v28, v11, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 470
    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v24

    move/from16 v3, v18

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 471
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 472
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 442
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    .line 475
    .end local v10           #centerX:I
    .end local v11           #centerY:I
    .end local v15           #d:Landroid/graphics/drawable/Drawable;
    .end local v17           #fra:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;
    .end local v18           #height:I
    .end local v24           #width:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    if-ltz v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    if-ltz v27, :cond_9

    .line 476
    sget-object v15, Lcom/cyanogenmod/trebuchet/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    .line 477
    .restart local v15       #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    .line 478
    .restart local v24       #width:I
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    .line 480
    .restart local v18       #height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTempLocation:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->cellToPoint(II[I)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    add-int v10, v27, v28

    .line 482
    .restart local v10       #centerX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    sget v28, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    div-int/lit8 v28, v28, 0x2

    add-int v11, v27, v28

    .line 484
    .restart local v11       #centerY:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 485
    div-int/lit8 v27, v24, 0x2

    sub-int v27, v10, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-int/lit8 v28, v24, 0x2

    sub-int v28, v11, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 486
    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v24

    move/from16 v3, v18

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 487
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 490
    .end local v10           #centerX:I
    .end local v11           #centerY:I
    .end local v15           #d:Landroid/graphics/drawable/Drawable;
    .end local v18           #height:I
    .end local v24           #width:I
    :cond_9
    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1428
    if-eqz p1, :cond_0

    .line 1429
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 1430
    .local v0, lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->dropped:Z

    .line 1431
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1433
    .end local v0           #lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 700
    .local v0, action:I
    if-nez v0, :cond_0

    .line 701
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->clearTagCellInfo()V

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    const/4 v1, 0x1

    .line 711
    :goto_0
    return v1

    .line 708
    :cond_1
    if-nez v0, :cond_2

    .line 709
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setTagToCellInfoForPoint(II)V

    .line 711
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildCount()I

    move-result v1

    .line 883
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 884
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 885
    .local v0, child:Landroid/view/View;
    iget v3, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingLeft:I

    iget v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingTop:I

    sub-int v5, p4, p2

    iget v6, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingRight:I

    sub-int/2addr v5, v6

    sub-int v6, p5, p3

    iget v7, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 883
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 888
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 24
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 824
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 825
    .local v17, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 827
    .local v18, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 828
    .local v8, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 830
    .local v9, heightSpecSize:I
    if-eqz v17, :cond_0

    if-nez v8, :cond_1

    .line 831
    :cond_0
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 834
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    move/from16 v19, v0

    add-int/lit8 v14, v19, -0x1

    .line 835
    .local v14, numWidthGaps:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 837
    .local v13, numHeightGaps:I
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v19

    if-nez v19, :cond_2

    .line 838
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingLeft:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingRight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    move/from16 v20, v0

    div-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/CellLayout;->mOriginalCellWidth:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    .line 839
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingTop:I

    move/from16 v19, v0

    sub-int v19, v9, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingBottom:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    move/from16 v20, v0

    div-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/CellLayout;->mOriginalCellHeight:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellHeight:I

    .line 842
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOriginalWidthGap:I

    move/from16 v19, v0

    if-ltz v19, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOriginalHeightGap:I

    move/from16 v19, v0

    if-gez v19, :cond_7

    .line 843
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingLeft:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingRight:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    .line 844
    .local v7, hSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingTop:I

    move/from16 v19, v0

    sub-int v19, v9, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingBottom:I

    move/from16 v20, v0

    sub-int v16, v19, v20

    .line 845
    .local v16, vSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOriginalCellWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v6, v7, v19

    .line 846
    .local v6, hFreeSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOriginalCellHeight:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v15, v16, v19

    .line 847
    .local v15, vFreeSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mMaxGap:I

    move/from16 v20, v0

    if-lez v14, :cond_5

    div-int v19, v6, v14

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    .line 848
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mMaxGap:I

    move/from16 v20, v0

    if-lez v13, :cond_6

    div-int v19, v15, v13

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/CellLayout;->mHeightGap:I

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mHeightGap:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->setCellDimensions(IIII)V

    .line 855
    .end local v6           #hFreeSpace:I
    .end local v7           #hSpace:I
    .end local v15           #vFreeSpace:I
    .end local v16           #vSpace:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mHeightGap:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->setCellDimensions(IIII)V

    .line 858
    move/from16 v12, v18

    .line 859
    .local v12, newWidth:I
    move v11, v9

    .line 860
    .local v11, newHeight:I
    const/high16 v19, -0x8000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 861
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingLeft:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingRight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v12, v19, v20

    .line 863
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingBottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellHeight:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mHeightGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v11, v19, v20

    .line 865
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/cyanogenmod/trebuchet/CellLayout;->setMeasuredDimension(II)V

    .line 868
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildCount()I

    move-result v5

    .line 869
    .local v5, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    if-ge v10, v5, :cond_8

    .line 870
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 871
    .local v2, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingLeft:I

    move/from16 v19, v0

    sub-int v19, v12, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingRight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    const/high16 v20, 0x4000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 873
    .local v3, childWidthMeasureSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingTop:I

    move/from16 v19, v0

    sub-int v19, v11, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingBottom:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    const/high16 v20, 0x4000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 875
    .local v4, childheightMeasureSpec:I
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 869
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 847
    .end local v2           #child:Landroid/view/View;
    .end local v3           #childWidthMeasureSpec:I
    .end local v4           #childheightMeasureSpec:I
    .end local v5           #count:I
    .end local v10           #i:I
    .end local v11           #newHeight:I
    .end local v12           #newWidth:I
    .restart local v6       #hFreeSpace:I
    .restart local v7       #hSpace:I
    .restart local v15       #vFreeSpace:I
    .restart local v16       #vSpace:I
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 848
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 851
    .end local v6           #hFreeSpace:I
    .end local v7           #hSpace:I
    .end local v15           #vFreeSpace:I
    .end local v16           #vSpace:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOriginalWidthGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    .line 852
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOriginalHeightGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/CellLayout;->mHeightGap:I

    goto/16 :goto_2

    .line 877
    .restart local v5       #count:I
    .restart local v10       #i:I
    .restart local v11       #newHeight:I
    .restart local v12       #newWidth:I
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/cyanogenmod/trebuchet/CellLayout;->setMeasuredDimension(II)V

    .line 878
    return-void
.end method

.method public onMove(Landroid/view/View;II)V
    .locals 7
    .parameter "view"
    .parameter "newCellX"
    .parameter "newCellY"

    .prologue
    .line 1620
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 1621
    .local v6, lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 1622
    iget v3, v6, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->markCellsForView(IIIIZ)V

    .line 1623
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .parameter "alpha"

    .prologue
    .line 934
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v1, 0x0

    .line 892
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 893
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 894
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mForegroundPadding:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mForegroundPadding:I

    iget v3, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mForegroundPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    iget v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mForegroundPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 896
    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 735
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 736
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getPaddingTop()I

    move-result v1

    .line 738
    .local v1, vStartPadding:I
    sub-int v4, p1, v0

    iget v5, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v7

    .line 739
    sub-int v4, p2, v1

    iget v5, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mHeightGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v8

    .line 741
    iget v2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    .line 742
    .local v2, xAxis:I
    iget v3, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    .line 744
    .local v3, yAxis:I
    aget v4, p3, v7

    if-gez v4, :cond_0

    aput v7, p3, v7

    .line 745
    :cond_0
    aget v4, p3, v7

    if-lt v4, v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    aput v4, p3, v7

    .line 746
    :cond_1
    aget v4, p3, v8

    if-gez v4, :cond_2

    aput v7, p3, v8

    .line 747
    :cond_2
    aget v4, p3, v8

    if-lt v4, v3, :cond_3

    add-int/lit8 v4, v3, -0x1

    aput v4, p3, v8

    .line 748
    :cond_3
    return-void
.end method

.method public rectToCell(II[I)[I
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "result"

    .prologue
    .line 1471
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/cyanogenmod/trebuchet/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->clearOccupiedCells()V

    .line 582
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->removeAllViews()V

    .line 583
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->clearOccupiedCells()V

    .line 589
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->removeAllViewsInLayout()V

    .line 591
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 600
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 601
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 606
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->removeViewAt(I)V

    .line 607
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 611
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 612
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->removeViewInLayout(Landroid/view/View;)V

    .line 613
    return-void
.end method

.method public removeViews(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 617
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v1, p1, p2}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->removeViews(II)V

    .line 621
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 625
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v1, p1, p2}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->removeViewsInLayout(II)V

    .line 629
    return-void
.end method

.method protected resetOverscrollTransforms()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 350
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mScrollingTransformsDirty:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0, v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->setOverscrollTransformsDirty(Z)V

    .line 352
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setTranslationX(F)V

    .line 353
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setRotationY(F)V

    .line 354
    const/high16 v0, 0x44a0

    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->getScreenDensity()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setCameraDistance(F)V

    .line 357
    invoke-virtual {p0, v2, v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->setOverScrollAmount(FZ)V

    .line 358
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setPivotX(F)V

    .line 359
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setPivotY(F)V

    .line 361
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 938
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setChildrenAlpha(F)V

    .line 939
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 940
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 925
    iput p1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mBackgroundAlpha:F

    .line 926
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->invalidate()V

    .line 927
    return-void
.end method

.method public setBackgroundAlphaMultiplier(F)V
    .locals 0
    .parameter "multiplier"

    .prologue
    .line 917
    iput p1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 918
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 900
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 901
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 906
    return-void
.end method

.method public setFastAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 943
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastChildrenAlpha(F)V

    .line 944
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFastAlpha(F)V

    .line 945
    return-void
.end method

.method public setFastBackgroundAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 913
    iput p1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mBackgroundAlpha:F

    .line 914
    return-void
.end method

.method public setFolderLeaveBehindCell(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 517
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 518
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->invalidate()V

    .line 519
    return-void
.end method

.method public setGridSize(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 288
    iput p1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    .line 289
    iput p2, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    .line 290
    iget v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountX:I

    iget v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOccupied:[[Z

    .line 291
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->requestLayout()V

    .line 292
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1
    .parameter "isDragOverlapping"

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    .line 336
    iput-boolean p1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mIsDragOverlapping:Z

    .line 337
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->invalidate()V

    .line 339
    :cond_0
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 545
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 546
    return-void
.end method

.method setOverScrollAmount(FZ)V
    .locals 2
    .parameter "r"
    .parameter "left"

    .prologue
    .line 303
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 304
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 309
    :cond_0
    :goto_0
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mForegroundAlpha:I

    .line 310
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 311
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->invalidate()V

    .line 312
    return-void

    .line 305
    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected setOverscrollTransformsDirty(Z)V
    .locals 0
    .parameter "dirty"

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mScrollingTransformsDirty:Z

    .line 347
    return-void
.end method

.method setPressedOrFocusedIcon(Lcom/cyanogenmod/trebuchet/BubbleTextView;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPressedOrFocusedIcon:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    .line 318
    .local v0, oldIcon:Lcom/cyanogenmod/trebuchet/BubbleTextView;
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPressedOrFocusedIcon:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    .line 319
    if-eqz v0, :cond_0

    .line 320
    invoke-direct {p0, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->invalidateBubbleTextView(Lcom/cyanogenmod/trebuchet/BubbleTextView;)V

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPressedOrFocusedIcon:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPressedOrFocusedIcon:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    invoke-direct {p0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->invalidateBubbleTextView(Lcom/cyanogenmod/trebuchet/BubbleTextView;)V

    .line 325
    :cond_1
    return-void
.end method

.method public setTagToCellInfoForPoint(II)V
    .locals 13
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v12, 0x1

    .line 646
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    .line 647
    .local v0, cellInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 648
    .local v5, frame:Landroid/graphics/Rect;
    iget v10, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mScrollX:I

    add-int v8, p1, v10

    .line 649
    .local v8, x:I
    iget v10, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mScrollY:I

    add-int v9, p2, v10

    .line 650
    .local v9, y:I
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 652
    .local v3, count:I
    const/4 v4, 0x0

    .line 653
    .local v4, found:Z
    add-int/lit8 v6, v3, -0x1

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_1

    .line 654
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mChildren:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    invoke-virtual {v10, v6}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 655
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 657
    .local v7, lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v10

    if-eqz v10, :cond_3

    :cond_0
    iget-boolean v10, v7, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v10, :cond_3

    .line 659
    invoke-virtual {v2, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 664
    iget v10, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingLeft:I

    iget v11, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mPaddingTop:I

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 666
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 667
    iput-object v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 668
    iget v10, v7, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    iput v10, v0, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cellX:I

    .line 669
    iget v10, v7, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    iput v10, v0, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cellY:I

    .line 670
    iget v10, v7, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellHSpan:I

    iput v10, v0, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanX:I

    .line 671
    iget v10, v7, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellVSpan:I

    iput v10, v0, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanY:I

    .line 672
    const/4 v4, 0x1

    .line 678
    .end local v2           #child:Landroid/view/View;
    .end local v7           #lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    :cond_1
    iput-boolean v4, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 680
    if-nez v4, :cond_2

    .line 681
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTmpXY:[I

    .line 682
    .local v1, cellXY:[I
    invoke-virtual {p0, v8, v9, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->pointToCellExact(II[I)V

    .line 684
    const/4 v10, 0x0

    iput-object v10, v0, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 685
    const/4 v10, 0x0

    aget v10, v1, v10

    iput v10, v0, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cellX:I

    .line 686
    aget v10, v1, v12

    iput v10, v0, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cellY:I

    .line 687
    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanX:I

    .line 688
    iput v12, v0, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanY:I

    .line 690
    .end local v1           #cellXY:[I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 691
    return-void

    .line 653
    .restart local v2       #child:Landroid/view/View;
    .restart local v7       #lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public showFolderAccept(Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;)V
    .locals 1
    .parameter "fra"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    return-void
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 17
    .parameter "v"
    .parameter "dragOutline"
    .parameter "originX"
    .parameter "originY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "dragOffset"
    .parameter "dragRegion"

    .prologue
    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragCell:[I

    const/4 v3, 0x0

    aget v12, v2, v3

    .line 1063
    .local v12, oldDragCellX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragCell:[I

    const/4 v3, 0x1

    aget v13, v2, v3

    .line 1064
    .local v13, oldDragCellY:I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragCell:[I

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/cyanogenmod/trebuchet/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object v11

    .line 1065
    .local v11, nearest:[I
    if-eqz p1, :cond_1

    if-nez p7, :cond_1

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragCenter:Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v4, v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 1071
    :goto_0
    if-nez p2, :cond_2

    if-nez p1, :cond_2

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1073
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->invalidate()V

    .line 1129
    :cond_0
    :goto_1
    return-void

    .line 1068
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragCenter:Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 1078
    :cond_2
    if-eqz v11, :cond_4

    const/4 v2, 0x0

    aget v2, v11, v2

    if-ne v2, v12, :cond_3

    const/4 v2, 0x1

    aget v2, v11, v2

    if-eq v2, v13, :cond_4

    .line 1080
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mTmpPoint:[I

    move-object/from16 v16, v0

    .line 1081
    .local v16, topLeft:[I
    const/4 v2, 0x0

    aget v2, v11, v2

    const/4 v3, 0x1

    aget v3, v11, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v3, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->cellToPoint(II[I)V

    .line 1083
    const/4 v2, 0x0

    aget v9, v16, v2

    .line 1084
    .local v9, left:I
    const/4 v2, 0x1

    aget v15, v16, v2

    .line 1086
    .local v15, top:I
    if-eqz p1, :cond_5

    if-nez p7, :cond_5

    .line 1089
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1090
    .local v10, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v2

    .line 1091
    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v15, v2

    .line 1096
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v15, v2

    .line 1098
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    mul-int v2, v2, p5

    add-int/lit8 v3, p5, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v9, v2

    .line 1116
    .end local v10           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineCurrent:I

    .line 1117
    .local v14, oldIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineAnims:[Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    aget-object v2, v2, v14

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;->animateOut()V

    .line 1118
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    array-length v3, v3

    rem-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineCurrent:I

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineCurrent:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v9, v15}, Landroid/graphics/Point;->set(II)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineAnims:[Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineCurrent:I

    aget-object v2, v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineAnims:[Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mDragOutlineCurrent:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/InterruptibleInOutAnimator;->animateIn()V

    .line 1126
    .end local v9           #left:I
    .end local v14           #oldIndex:I
    .end local v15           #top:I
    .end local v16           #topLeft:[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1127
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->invalidate()V

    goto/16 :goto_1

    .line 1101
    .restart local v9       #left:I
    .restart local v15       #top:I
    .restart local v16       #topLeft:[I
    :cond_5
    if-eqz p7, :cond_6

    if-eqz p8, :cond_6

    .line 1104
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    mul-int v3, v3, p5

    add-int/lit8 v4, p5, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v9, v2

    .line 1106
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v15, v2

    goto :goto_2

    .line 1109
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellWidth:I

    mul-int v2, v2, p5

    add-int/lit8 v3, p5, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mWidthGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v9, v2

    .line 1111
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mCellHeight:I

    mul-int v2, v2, p6

    add-int/lit8 v3, p6, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cyanogenmod/trebuchet/CellLayout;->mHeightGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v15, v2

    goto/16 :goto_2
.end method
