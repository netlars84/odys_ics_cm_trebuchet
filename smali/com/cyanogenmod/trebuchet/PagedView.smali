.class public abstract Lcom/cyanogenmod/trebuchet/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/PagedView$ScrollInterpolator;,
        Lcom/cyanogenmod/trebuchet/PagedView$PageSwitchListener;
    }
.end annotation


# instance fields
.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field protected mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCenterPagesVertically:Z

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mChoiceMode:I

.field protected mClearDirtyPages:Z

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field protected mDeferScrollUpdate:Z

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownMotionX:F

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mForceScreenScrolled:Z

.field protected mHandleFadeInAdjacentScreens:Z

.field private mHasScrollIndicator:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenScroll:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field protected mOverScrollX:I

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutPaddingBottom:I

.field protected mPageLayoutPaddingLeft:I

.field protected mPageLayoutPaddingRight:I

.field protected mPageLayoutPaddingTop:I

.field protected mPageLayoutWidthGap:I

.field protected mPageSpacing:I

.field private mPageSwitchListener:Lcom/cyanogenmod/trebuchet/PagedView$PageSwitchListener;

.field private mPagingTouchSlop:I

.field private mScrollIndicator:Landroid/widget/ImageView;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field protected mSnapVelocity:I

.field protected mTempVisiblePagesRange:[I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyanogenmod/trebuchet/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mSnapVelocity:I

    .line 79
    iput-boolean v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mFirstLayout:Z

    .line 82
    iput v4, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mNextPage:I

    .line 92
    iput v4, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastScreenScroll:I

    .line 102
    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    .line 103
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mForceScreenScrolled:Z

    .line 107
    iput-boolean v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mAllowLongPress:Z

    .line 120
    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCellCountX:I

    .line 121
    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCellCountY:I

    .line 123
    iput-boolean v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mAllowOverScroll:Z

    .line 125
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTempVisiblePagesRange:[I

    .line 133
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLayoutScale:F

    .line 137
    iput v4, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mActivePointerId:I

    .line 153
    iput-boolean v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mContentIsRefreshable:Z

    .line 156
    iput-boolean v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mFadeInAdjacentScreens:Z

    .line 159
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mHandleFadeInAdjacentScreens:Z

    .line 163
    iput-boolean v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mUsePagingTouchSlop:Z

    .line 166
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mDeferScrollUpdate:Z

    .line 168
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mIsPageMoving:Z

    .line 171
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mIsDataReady:Z

    .line 174
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mClearDirtyPages:Z

    .line 181
    iput-boolean v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mHasScrollIndicator:Z

    .line 1742
    new-instance v1, Lcom/cyanogenmod/trebuchet/PagedView$2;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/trebuchet/PagedView$2;-><init>(Lcom/cyanogenmod/trebuchet/PagedView;)V

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 204
    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChoiceMode:I

    .line 206
    sget-object v1, Lcom/cyanogenmod/trebuchet/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 208
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->setPageSpacing(I)V

    .line 209
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPageLayoutPaddingTop:I

    .line 211
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPageLayoutPaddingBottom:I

    .line 213
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPageLayoutPaddingLeft:I

    .line 215
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPageLayoutPaddingRight:I

    .line 217
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPageLayoutWidthGap:I

    .line 219
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPageLayoutHeightGap:I

    .line 221
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicatorPaddingLeft:I

    .line 223
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicatorPaddingRight:I

    .line 225
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 228
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->init()V

    .line 229
    return-void
.end method

.method static synthetic access$100(Lcom/cyanogenmod/trebuchet/PagedView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1298
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1301
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 1311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1313
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1314
    .local v1, pointerId:I
    iget v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1318
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1319
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionX:F

    .line 1320
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionY:F

    .line 1321
    const/4 v3, 0x0

    iput v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionXRemainder:F

    .line 1322
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mActivePointerId:I

    .line 1323
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1324
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1327
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 1318
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .parameter "f"

    .prologue
    const/high16 v1, 0x3f80

    .line 1062
    sub-float/2addr p1, v1

    .line 1063
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1308
    :cond_0
    return-void
.end method

.method private updateScrollingIndicator()V
    .locals 2

    .prologue
    .line 1846
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 1853
    :cond_0
    :goto_0
    return-void

    .line 1847
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1849
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getScrollingIndicator()Landroid/widget/ImageView;

    .line 1850
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1851
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->updateScrollingIndicatorPosition()V

    goto :goto_0
.end method

.method private updateScrollingIndicatorPosition()V
    .locals 14

    .prologue
    .line 1856
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1880
    :cond_0
    :goto_0
    return-void

    .line 1857
    :cond_1
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 1858
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v6

    .line 1859
    .local v6, numPages:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getMeasuredWidth()I

    move-result v8

    .line 1860
    .local v8, pageWidth:I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1861
    .local v4, lastChildIndex:I
    invoke-virtual {p0, v4}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/trebuchet/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v5, v10, v11

    .line 1862
    .local v5, maxScrollX:I
    iget v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int v10, v8, v10

    iget v11, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int v9, v10, v11

    .line 1863
    .local v9, trackWidth:I
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v11

    sub-int v3, v10, v11

    .line 1866
    .local v3, indicatorWidth:I
    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getScrollX()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1867
    .local v7, offset:F
    div-int v2, v9, v6

    .line 1868
    .local v2, indicatorSpace:I
    sub-int v10, v9, v2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v11, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int v1, v10, v11

    .line 1869
    .local v1, indicatorPos:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->hasElasticScrollIndicator()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1870
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    if-eq v10, v2, :cond_2

    .line 1871
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1872
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->requestLayout()V

    .line 1878
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    int-to-float v11, v1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1879
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_0

    .line 1875
    :cond_3
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int v0, v10, v11

    .line 1876
    .local v0, indicatorCenterOffset:I
    add-int/2addr v1, v0

    goto :goto_1
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1067
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1071
    .local v2, screenSize:I
    const/high16 v3, 0x4000

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1073
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1089
    :goto_0
    return-void

    .line 1076
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1077
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1080
    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1081
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1082
    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mOverScrollX:I

    .line 1083
    const/4 v3, 0x0

    iput v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollX:I

    .line 1088
    :goto_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->invalidate()V

    goto :goto_0

    .line 1085
    :cond_2
    iget v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mOverScrollX:I

    .line 1086
    iget v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mMaxScrollX:I

    iput v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollX:I

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 806
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 807
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 809
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 810
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    .line 811
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 818
    :cond_1
    :goto_0
    return-void

    .line 813
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 814
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 815
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 1521
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mAllowLongPress:Z

    return v0
.end method

.method protected animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "v"
    .parameter "r"

    .prologue
    .line 979
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 981
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 982
    new-instance v1, Lcom/cyanogenmod/trebuchet/PagedView$1;

    invoke-direct {v1, p0, p2}, Lcom/cyanogenmod/trebuchet/PagedView$1;-><init>(Lcom/cyanogenmod/trebuchet/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 987
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 988
    return-void
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    .prologue
    .line 1033
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mAllowLongPress:Z

    if-eqz v1, :cond_0

    .line 1034
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mAllowLongPress:Z

    .line 1038
    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1039
    .local v0, currentPage:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1040
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1043
    .end local v0           #currentPage:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .locals 1

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1780
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1782
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 395
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollX:I

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollY:I

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/cyanogenmod/trebuchet/PagedView;->scrollTo(II)V

    .line 400
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->invalidate()V

    .line 426
    :cond_2
    :goto_0
    return-void

    .line 401
    :cond_3
    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mNextPage:I

    if-eq v1, v3, :cond_2

    .line 402
    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    .line 403
    iput v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mNextPage:I

    .line 404
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->notifyPageSwitchListener()V

    .line 407
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v1, :cond_4

    .line 408
    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->loadAssociatedPages(I)V

    .line 409
    iput-boolean v4, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 414
    :cond_4
    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    if-nez v1, :cond_5

    .line 415
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->pageEndMoving()V

    .line 419
    :cond_5
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 420
    const/16 v1, 0x1000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 422
    .local v0, ev:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1092
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1094
    .local v2, screenSize:I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1096
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1113
    :goto_0
    return-void

    .line 1097
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/cyanogenmod/trebuchet/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1100
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1101
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1104
    :cond_1
    const v3, 0x3e0f5c29

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1105
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1106
    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mOverScrollX:I

    .line 1107
    const/4 v3, 0x0

    iput v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollX:I

    .line 1112
    :goto_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->invalidate()V

    goto :goto_0

    .line 1109
    :cond_2
    iget v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mOverScrollX:I

    .line 1110
    iget v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mMaxScrollX:I

    iput v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollX:I

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 991
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 992
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 11
    .parameter "ev"
    .parameter "touchSlopScale"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1003
    iget v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1004
    .local v0, pointerIndex:I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_1

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1008
    .local v2, x:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1009
    .local v6, y:F
    iget v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionX:F

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 1010
    .local v3, xDiff:I
    iget v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionY:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v7, v10

    .line 1012
    .local v7, yDiff:I
    iget v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchSlop:I

    int-to-float v10, v10

    mul-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1013
    .local v1, touchSlop:I
    iget v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPagingTouchSlop:I

    if-le v3, v10, :cond_5

    move v5, v9

    .line 1014
    .local v5, xPaged:Z
    :goto_1
    if-le v3, v1, :cond_6

    move v4, v9

    .line 1015
    .local v4, xMoved:Z
    :goto_2
    if-le v7, v1, :cond_2

    move v8, v9

    .line 1017
    .local v8, yMoved:Z
    :cond_2
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-eqz v8, :cond_0

    .line 1018
    :cond_3
    iget-boolean v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v10, :cond_7

    if-eqz v5, :cond_4

    .line 1020
    :goto_3
    iput v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    .line 1021
    iget v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTotalMotionX:F

    .line 1022
    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionX:F

    .line 1023
    const/4 v9, 0x0

    iput v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionXRemainder:F

    .line 1024
    iget v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollX:I

    int-to-float v9, v9

    iput v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchX:F

    .line 1025
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->pageBeginMoving()V

    .line 1028
    :cond_4
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->cancelCurrentPageLongPress()V

    goto :goto_0

    .end local v4           #xMoved:Z
    .end local v5           #xPaged:Z
    .end local v8           #yMoved:Z
    :cond_5
    move v5, v8

    .line 1013
    goto :goto_1

    .restart local v5       #xPaged:Z
    :cond_6
    move v4, v8

    .line 1014
    goto :goto_2

    .line 1018
    .restart local v4       #xMoved:Z
    .restart local v8       #yMoved:Z
    :cond_7
    if-eqz v4, :cond_4

    goto :goto_3
.end method

.method protected disableScrollingIndicator()V
    .locals 2

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1833
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mHasScrollIndicator:Z

    .line 1834
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    .line 1835
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 736
    iget v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mOverScrollX:I

    iget v7, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastScreenScroll:I

    if-ne v6, v7, :cond_0

    iget-boolean v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mForceScreenScrolled:Z

    if-eqz v6, :cond_1

    .line 737
    :cond_0
    iget v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mOverScrollX:I

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/trebuchet/PagedView;->screenScrolled(I)V

    .line 738
    iget v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mOverScrollX:I

    iput v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastScreenScroll:I

    .line 739
    iput-boolean v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mForceScreenScrolled:Z

    .line 743
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v4

    .line 744
    .local v4, pageCount:I
    if-lez v4, :cond_3

    .line 745
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/trebuchet/PagedView;->getVisiblePages([I)V

    .line 746
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v6, v9

    .line 747
    .local v3, leftScreen:I
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTempVisiblePagesRange:[I

    const/4 v7, 0x1

    aget v5, v6, v7

    .line 748
    .local v5, rightScreen:I
    if-eq v3, v8, :cond_3

    if-eq v5, v8, :cond_3

    .line 749
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getDrawingTime()J

    move-result-wide v0

    .line 751
    .local v0, drawingTime:J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 752
    iget v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollX:I

    iget v7, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollY:I

    iget v8, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollX:I

    iget v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mRight:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollY:I

    iget v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mBottom:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTop:I

    sub-int/2addr v9, v10

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 755
    move v2, v5

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_2

    .line 756
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 755
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 758
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 761
    .end local v0           #drawingTime:J
    .end local v2           #i:I
    .end local v3           #leftScreen:I
    .end local v5           #rightScreen:I
    :cond_3
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 790
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 792
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(I)V

    .line 801
    :goto_0
    return v0

    .line 795
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 796
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 797
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 801
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 1400
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 1401
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1402
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected flashScrollingIndicator(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1750
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->showScrollingIndicator(Z)V

    .line 1751
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x28a

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1752
    return-void

    .line 1750
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 829
    iget v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 830
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 832
    .local v2, v:Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 833
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 843
    :cond_0
    return-void

    .line 836
    :cond_1
    if-eq v2, p0, :cond_0

    .line 839
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 840
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 841
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .parameter "page"

    .prologue
    .line 1596
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 3
    .parameter "page"

    .prologue
    .line 1599
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v0

    .line 1600
    .local v0, count:I
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method protected getChildOffset(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 658
    iget v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChildOffsets:[I

    .line 661
    .local v0, childOffsets:[I
    :goto_0
    if-eqz v0, :cond_2

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 662
    aget v2, v0, p1

    .line 674
    :cond_0
    :goto_1
    return v2

    .line 658
    .end local v0           #childOffsets:[I
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChildOffsetsWithLayoutScale:[I

    goto :goto_0

    .line 664
    .restart local v0       #childOffsets:[I
    :cond_2
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 667
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 668
    .local v2, offset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, p1, :cond_3

    .line 669
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/trebuchet/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 671
    :cond_3
    if-eqz v0, :cond_0

    .line 672
    aput v2, v0, p1

    goto :goto_1
.end method

.method protected getChildWidth(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 1357
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1358
    .local v0, measuredWidth:I
    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mMinimumWidth:I

    .line 1359
    .local v1, minWidth:I
    if-le v1, v0, :cond_0

    .end local v1           #minWidth:I
    :goto_0
    return v1

    .restart local v1       #minWidth:I
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method getCurrentPage()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1901
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mNextPage:I

    .line 1902
    :goto_0
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f09004e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1901
    :cond_0
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 1504
    const/4 v2, -0x1

    .line 1505
    .local v2, result:I
    if-eqz p1, :cond_1

    .line 1506
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1507
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v0

    .line 1508
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1509
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1514
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_1
    return v1

    .line 1508
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #vp:Landroid/view/ViewParent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :cond_1
    move v1, v2

    .line 1514
    goto :goto_1
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 12

    .prologue
    .line 1363
    const v7, 0x7fffffff

    .line 1364
    .local v7, minDistanceFromScreenCenter:I
    const/4 v8, -0x1

    .line 1365
    .local v8, minDistanceFromScreenCenterIndex:I
    iget v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollX:I

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getMeasuredWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 1366
    .local v9, screenCenter:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v1

    .line 1367
    .local v1, childCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 1368
    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1369
    .local v6, layout:Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/cyanogenmod/trebuchet/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1370
    .local v2, childWidth:I
    div-int/lit8 v4, v2, 0x2

    .line 1371
    .local v4, halfChildWidth:I
    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildOffset(I)I

    move-result v10

    add-int v0, v10, v4

    .line 1372
    .local v0, childCenter:I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1373
    .local v3, distanceFromScreenCenter:I
    if-ge v3, v7, :cond_0

    .line 1374
    move v7, v3

    .line 1375
    move v8, v5

    .line 1367
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1378
    .end local v0           #childCenter:I
    .end local v2           #childWidth:I
    .end local v3           #distanceFromScreenCenter:I
    .end local v4           #halfChildWidth:I
    .end local v6           #layout:Landroid/view/View;
    :cond_1
    return v8
.end method

.method protected getRelativeChildOffset(I)I
    .locals 5
    .parameter "index"

    .prologue
    .line 679
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChildRelativeOffsets:[I

    array-length v2, v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 681
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChildRelativeOffsets:[I

    aget v0, v2, p1

    .line 689
    :cond_0
    :goto_0
    return v0

    .line 683
    :cond_1
    iget v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPaddingLeft:I

    iget v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPaddingRight:I

    add-int v1, v2, v3

    .line 684
    .local v1, padding:I
    iget v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 686
    .local v0, offset:I
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_0

    .line 687
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    goto :goto_0
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 5
    .parameter "child"

    .prologue
    .line 703
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 704
    .local v1, measuredWidth:I
    iget v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mMinimumWidth:I

    .line 705
    .local v2, minWidth:I
    if-le v2, v1, :cond_0

    move v0, v2

    .line 706
    .local v0, maxWidth:I
    :goto_0
    int-to-float v3, v0

    iget v4, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLayoutScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .end local v0           #maxWidth:I
    :cond_0
    move v0, v1

    .line 705
    goto :goto_0
.end method

.method protected getScaledRelativeChildOffset(I)I
    .locals 5
    .parameter "index"

    .prologue
    .line 694
    iget v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPaddingLeft:I

    iget v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPaddingRight:I

    add-int v1, v2, v3

    .line 695
    .local v1, padding:I
    iget v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/trebuchet/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 697
    .local v0, offset:I
    return v0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 8
    .parameter "screenScroll"
    .parameter "v"
    .parameter "page"

    .prologue
    const/high16 v7, 0x3f80

    .line 1046
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 1047
    .local v1, halfScreenSize:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, p1, v5

    .line 1049
    .local v2, screenCenter:I
    invoke-virtual {p0, p2}, Lcom/cyanogenmod/trebuchet/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPageSpacing:I

    add-int v4, v5, v6

    .line 1050
    .local v4, totalDistance:I
    invoke-virtual {p0, p3}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildOffset(I)I

    move-result v5

    invoke-virtual {p0, p3}, Lcom/cyanogenmod/trebuchet/PagedView;->getRelativeChildOffset(I)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v1

    sub-int v0, v2, v5

    .line 1053
    .local v0, delta:I
    int-to-float v5, v0

    int-to-float v6, v4

    mul-float/2addr v6, v7

    div-float v3, v5, v6

    .line 1054
    .local v3, scrollProgress:F
    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1055
    const/high16 v5, -0x4080

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1056
    return v3
.end method

.method protected getScrollingIndicator()Landroid/widget/ImageView;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1727
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mHasScrollIndicator:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1728
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1729
    const v2, 0x7f0e000c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    .line 1730
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mHasScrollIndicator:Z

    .line 1731
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mHasScrollIndicator:Z

    if-eqz v0, :cond_0

    .line 1732
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1735
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    return-object v0

    :cond_1
    move v0, v1

    .line 1730
    goto :goto_0
.end method

.method protected getVisiblePages([I)V
    .locals 10
    .parameter "range"

    .prologue
    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 710
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v1

    .line 711
    .local v1, pageCount:I
    if-lez v1, :cond_2

    .line 712
    invoke-virtual {p0, v8}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/trebuchet/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 713
    .local v2, pageWidth:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getMeasuredWidth()I

    move-result v4

    .line 714
    .local v4, screenWidth:I
    invoke-virtual {p0, v8}, Lcom/cyanogenmod/trebuchet/PagedView;->getScaledRelativeChildOffset(I)I

    move-result v6

    add-int v5, v6, v2

    .line 715
    .local v5, x:I
    const/4 v0, 0x0

    .line 716
    .local v0, leftScreen:I
    const/4 v3, 0x0

    .line 717
    .local v3, rightScreen:I
    :goto_0
    iget v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollX:I

    if-gt v5, v6, :cond_0

    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_0

    .line 718
    add-int/lit8 v0, v0, 0x1

    .line 719
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/trebuchet/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPageSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto :goto_0

    .line 721
    :cond_0
    move v3, v0

    .line 722
    :goto_1
    iget v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollX:I

    add-int/2addr v6, v4

    if-ge v5, v6, :cond_1

    add-int/lit8 v6, v1, -0x1

    if-ge v3, v6, :cond_1

    .line 723
    add-int/lit8 v3, v3, 0x1

    .line 724
    invoke-virtual {p0, v3}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/trebuchet/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPageSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto :goto_1

    .line 726
    :cond_1
    aput v0, p1, v8

    .line 727
    aput v3, p1, v9

    .line 732
    .end local v0           #leftScreen:I
    .end local v2           #pageWidth:I
    .end local v3           #rightScreen:I
    .end local v4           #screenWidth:I
    .end local v5           #x:I
    :goto_2
    return-void

    .line 729
    :cond_2
    aput v6, p1, v8

    .line 730
    aput v6, p1, v9

    goto :goto_2
.end method

.method protected hasElasticScrollIndicator()Z
    .locals 1

    .prologue
    .line 1842
    const/4 v0, 0x1

    return v0
.end method

.method protected hideScrollingIndicator(Z)V
    .locals 1
    .parameter "immediately"

    .prologue
    .line 1785
    const/16 v0, 0x28a

    invoke-virtual {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->hideScrollingIndicator(ZI)V

    .line 1786
    return-void
.end method

.method protected hideScrollingIndicator(ZI)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1789
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 1819
    :cond_0
    :goto_0
    return-void

    .line 1790
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1792
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getScrollingIndicator()Landroid/widget/ImageView;

    .line 1793
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1795
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->updateScrollingIndicatorPosition()V

    .line 1796
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 1797
    if-eqz p1, :cond_2

    .line 1798
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1799
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 1801
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1802
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1803
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/cyanogenmod/trebuchet/PagedView$3;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/trebuchet/PagedView$3;-><init>(Lcom/cyanogenmod/trebuchet/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1816
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected hitsNextPage(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 866
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->getRelativeChildOffset(I)I

    move-result v0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 284
    return p1
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 236
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 237
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/cyanogenmod/trebuchet/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/cyanogenmod/trebuchet/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 238
    const/4 v1, 0x0

    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    .line 239
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCenterPagesVertically:Z

    .line 241
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 242
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchSlop:I

    .line 243
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPagingTouchSlop:I

    .line 244
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mMaximumVelocity:I

    .line 245
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mDensity:F

    .line 246
    return-void
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 639
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v0

    .line 640
    .local v0, count:I
    if-nez v0, :cond_1

    .line 641
    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChildOffsets:[I

    .line 642
    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChildRelativeOffsets:[I

    .line 643
    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 655
    :cond_0
    return-void

    .line 647
    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChildOffsets:[I

    .line 648
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChildRelativeOffsets:[I

    .line 649
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 650
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 651
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChildOffsets:[I

    aput v3, v2, v1

    .line 652
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 653
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    .line 650
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected invalidatePageData()V
    .locals 2

    .prologue
    .line 1683
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->invalidatePageData(IZ)V

    .line 1684
    return-void
.end method

.method protected invalidatePageData(I)V
    .locals 1
    .parameter "currentPage"

    .prologue
    .line 1686
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->invalidatePageData(IZ)V

    .line 1687
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 7
    .parameter "currentPage"
    .parameter "immediateAndOnly"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1689
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mIsDataReady:Z

    if-nez v2, :cond_1

    .line 1722
    :cond_0
    :goto_0
    return-void

    .line 1693
    :cond_1
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mContentIsRefreshable:Z

    if-eqz v2, :cond_0

    .line 1695
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v5}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1696
    iput v4, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mNextPage:I

    .line 1699
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->syncPages()V

    .line 1703
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/cyanogenmod/trebuchet/PagedView;->measure(II)V

    .line 1707
    if-le p1, v4, :cond_2

    .line 1708
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/PagedView;->setCurrentPage(I)V

    .line 1712
    :cond_2
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v0

    .line 1713
    .local v0, count:I
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1714
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1715
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1714
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1719
    :cond_3
    iget v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2, p2}, Lcom/cyanogenmod/trebuchet/PagedView;->loadAssociatedPages(IZ)V

    .line 1720
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->requestLayout()V

    goto :goto_0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mIsDataReady:Z

    return v0
.end method

.method protected isPageMoving()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 1739
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadAssociatedPages(I)V
    .locals 1
    .parameter "page"

    .prologue
    .line 1563
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->loadAssociatedPages(IZ)V

    .line 1564
    return-void
.end method

.method protected loadAssociatedPages(IZ)V
    .locals 10
    .parameter "page"
    .parameter "immediateAndOnly"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1566
    iget-boolean v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mContentIsRefreshable:Z

    if-eqz v6, :cond_5

    .line 1567
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v1

    .line 1568
    .local v1, count:I
    if-ge p1, v1, :cond_5

    .line 1569
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->getAssociatedLowerPageBound(I)I

    move-result v4

    .line 1570
    .local v4, lowerPageBound:I
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->getAssociatedUpperPageBound(I)I

    move-result v5

    .line 1573
    .local v5, upperPageBound:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 1574
    if-eq v2, p1, :cond_1

    if-eqz p2, :cond_1

    .line 1573
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1577
    :cond_1
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/trebuchet/Page;

    .line 1578
    .local v3, layout:Lcom/cyanogenmod/trebuchet/Page;
    invoke-interface {v3}, Lcom/cyanogenmod/trebuchet/Page;->getPageChildCount()I

    move-result v0

    .line 1579
    .local v0, childCount:I
    if-gt v4, v2, :cond_3

    if-gt v2, v5, :cond_3

    .line 1580
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1581
    if-ne v2, p1, :cond_2

    if-eqz p2, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {p0, v2, v6}, Lcom/cyanogenmod/trebuchet/PagedView;->syncPageItems(IZ)V

    .line 1582
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move v6, v8

    .line 1581
    goto :goto_2

    .line 1584
    :cond_3
    iget-boolean v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mClearDirtyPages:Z

    if-eqz v6, :cond_0

    .line 1585
    if-lez v0, :cond_4

    .line 1586
    invoke-interface {v3}, Lcom/cyanogenmod/trebuchet/Page;->removeAllViewsOnPage()V

    .line 1588
    :cond_4
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1593
    .end local v0           #childCount:I
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #layout:Lcom/cyanogenmod/trebuchet/Page;
    .end local v4           #lowerPageBound:I
    .end local v5           #upperPageBound:I
    :cond_5
    return-void
.end method

.method protected notifyPageSwitchListener()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPageSwitchListener:Lcom/cyanogenmod/trebuchet/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPageSwitchListener:Lcom/cyanogenmod/trebuchet/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 322
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1293
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1275
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1276
    const/4 v1, 0x0

    .line 1277
    .local v1, vscroll:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1282
    .local v0, hscroll:F
    :goto_1
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 1283
    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    .line 1284
    :cond_2
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->scrollRight()V

    .line 1288
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1279
    .end local v0           #hscroll:F
    .end local v1           #vscroll:F
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1280
    .restart local v1       #vscroll:F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0       #hscroll:F
    goto :goto_1

    .line 1286
    :cond_4
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->scrollLeft()V

    goto :goto_2

    .line 1270
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1908
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1891
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1892
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1893
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 1894
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1895
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1896
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1898
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1885
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1886
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1887
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 883
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 886
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 974
    :cond_0
    :goto_0
    return v5

    .line 893
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 894
    .local v0, action:I
    if-ne v0, v9, :cond_2

    iget v7, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    if-eq v7, v5, :cond_0

    .line 899
    :cond_2
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 974
    :cond_3
    :goto_1
    :pswitch_0
    iget v7, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 905
    :pswitch_1
    iget v7, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mActivePointerId:I

    if-eq v7, v10, :cond_4

    .line 906
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 917
    :cond_4
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 918
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 920
    .local v4, y:F
    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mDownMotionX:F

    .line 921
    iput v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionX:F

    .line 922
    iput v4, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionY:F

    .line 923
    iput v8, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionXRemainder:F

    .line 924
    iput v8, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTotalMotionX:F

    .line 925
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mActivePointerId:I

    .line 926
    iput-boolean v5, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mAllowLongPress:Z

    .line 933
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getFinalX()I

    move-result v7

    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 934
    .local v3, xDist:I
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_5

    iget v7, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchSlop:I

    if-ge v3, v7, :cond_6

    :cond_5
    move v1, v5

    .line 935
    .local v1, finishedScrolling:Z
    :goto_2
    if-eqz v1, :cond_7

    .line 936
    iput v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    .line 937
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 944
    :goto_3
    iget v7, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    if-eq v7, v9, :cond_3

    iget v7, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 945
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 946
    invoke-virtual {p0, v2, v4}, Lcom/cyanogenmod/trebuchet/PagedView;->hitsPreviousPage(FF)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 947
    iput v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    goto :goto_1

    .end local v1           #finishedScrolling:Z
    :cond_6
    move v1, v6

    .line 934
    goto :goto_2

    .line 939
    .restart local v1       #finishedScrolling:Z
    :cond_7
    iput v5, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    goto :goto_3

    .line 948
    :cond_8
    invoke-virtual {p0, v2, v4}, Lcom/cyanogenmod/trebuchet/PagedView;->hitsNextPage(FF)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 949
    const/4 v7, 0x3

    iput v7, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    goto :goto_1

    .line 958
    .end local v1           #finishedScrolling:Z
    .end local v2           #x:F
    .end local v3           #xDist:I
    .end local v4           #y:F
    :pswitch_3
    iput v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    .line 959
    iput-boolean v6, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mAllowLongPress:Z

    .line 960
    iput v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mActivePointerId:I

    .line 961
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->releaseVelocityTracker()V

    goto :goto_1

    .line 965
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 966
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 899
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 559
    iget-boolean v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mIsDataReady:Z

    if-nez v9, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPaddingTop:I

    iget v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPaddingBottom:I

    add-int v8, v9, v10

    .line 565
    .local v8, verticalPadding:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v1

    .line 566
    .local v1, childCount:I
    const/4 v3, 0x0

    .line 567
    .local v3, childLeft:I
    if-lez v1, :cond_2

    .line 570
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/cyanogenmod/trebuchet/PagedView;->getRelativeChildOffset(I)I

    move-result v3

    .line 573
    iget v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPageSpacing:I

    if-gez v9, :cond_2

    .line 574
    sub-int v9, p4, p2

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v9}, Lcom/cyanogenmod/trebuchet/PagedView;->setPageSpacing(I)V

    .line 578
    :cond_2
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v1, :cond_5

    .line 579
    invoke-virtual {p0, v6}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 580
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_4

    .line 581
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 582
    .local v5, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 583
    .local v2, childHeight:I
    iget v4, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPaddingTop:I

    .line 584
    .local v4, childTop:I
    iget-boolean v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCenterPagesVertically:Z

    if-eqz v9, :cond_3

    .line 585
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v9, v8

    sub-int/2addr v9, v2

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v4, v9

    .line 589
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    add-int v10, v4, v2

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 591
    iget v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPageSpacing:I

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    .line 578
    .end local v2           #childHeight:I
    .end local v4           #childTop:I
    .end local v5           #childWidth:I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 595
    .end local v0           #child:Landroid/view/View;
    :cond_5
    iget-boolean v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_6

    iget v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 596
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/cyanogenmod/trebuchet/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 597
    iget v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v9}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildOffset(I)I

    move-result v9

    iget v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v10}, Lcom/cyanogenmod/trebuchet/PagedView;->getRelativeChildOffset(I)I

    move-result v10

    sub-int v7, v9, v10

    .line 598
    .local v7, newX:I
    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9}, Lcom/cyanogenmod/trebuchet/PagedView;->scrollTo(II)V

    .line 599
    iget-object v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9, v7}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 600
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/cyanogenmod/trebuchet/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 601
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mFirstLayout:Z

    .line 604
    .end local v7           #newX:I
    :cond_6
    iget-boolean v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_0

    iget v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 605
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mFirstLayout:Z

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 19
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 430
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mIsDataReady:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 431
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 505
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 436
    .local v15, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 437
    .local v16, widthSize:I
    const/high16 v17, 0x4000

    move/from16 v0, v17

    if-eq v15, v0, :cond_1

    .line 438
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Workspace can only be used in EXACTLY mode."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 446
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 447
    .local v8, heightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 448
    .local v9, heightSize:I
    const/4 v13, 0x0

    .line 450
    .local v13, maxChildHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mPaddingTop:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mPaddingBottom:I

    move/from16 v18, v0

    add-int v14, v17, v18

    .line 451
    .local v14, verticalPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mPaddingLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mPaddingRight:I

    move/from16 v18, v0

    add-int v10, v17, v18

    .line 457
    .local v10, horizontalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v3

    .line 458
    .local v3, childCount:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v3, :cond_4

    .line 460
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 461
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 464
    .local v12, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 465
    const/high16 v7, -0x8000

    .line 471
    .local v7, childWidthMode:I
    :goto_2
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 472
    const/high16 v5, -0x8000

    .line 477
    .local v5, childHeightMode:I
    :goto_3
    sub-int v17, v16, v10

    move/from16 v0, v17

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 479
    .local v6, childWidthMeasureSpec:I
    sub-int v17, v9, v14

    move/from16 v0, v17

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 482
    .local v4, childHeightMeasureSpec:I
    invoke-virtual {v2, v6, v4}, Landroid/view/View;->measure(II)V

    .line 483
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 458
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 467
    .end local v4           #childHeightMeasureSpec:I
    .end local v5           #childHeightMode:I
    .end local v6           #childWidthMeasureSpec:I
    .end local v7           #childWidthMode:I
    :cond_2
    const/high16 v7, 0x4000

    .restart local v7       #childWidthMode:I
    goto :goto_2

    .line 474
    :cond_3
    const/high16 v5, 0x4000

    .restart local v5       #childHeightMode:I
    goto :goto_3

    .line 488
    .end local v2           #child:Landroid/view/View;
    .end local v5           #childHeightMode:I
    .end local v7           #childWidthMode:I
    .end local v12           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-ne v8, v0, :cond_5

    .line 489
    add-int v9, v13, v14

    .line 492
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/cyanogenmod/trebuchet/PagedView;->setMeasuredDimension(II)V

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/PagedView;->invalidateCachedOffsets()V

    .line 498
    invoke-direct/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/PagedView;->updateScrollingIndicatorPosition()V

    .line 500
    if-lez v3, :cond_6

    .line 501
    add-int/lit8 v17, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildOffset(I)I

    move-result v17

    add-int/lit8 v18, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->getRelativeChildOffset(I)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/PagedView;->mMaxScrollX:I

    goto/16 :goto_0

    .line 503
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/PagedView;->mMaxScrollX:I

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->showScrollingIndicator(Z)V

    .line 345
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->hideScrollingIndicator(Z)V

    .line 350
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 776
    iget v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 777
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mNextPage:I

    .line 781
    .local v0, focusablePage:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 782
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 783
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 785
    :goto_1
    return v2

    .line 779
    .end local v0           #focusablePage:I
    .end local v1           #v:Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    .restart local v0       #focusablePage:I
    goto :goto_0

    .line 785
    .restart local v1       #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    .line 1122
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v17

    if-gtz v17, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 1264
    :goto_0
    return v17

    .line 1124
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/cyanogenmod/trebuchet/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1126
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1128
    .local v3, action:I
    and-int/lit16 v0, v3, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 1264
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v17, 0x1

    goto :goto_0

    .line 1134
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_2

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1139
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionX:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/PagedView;->mDownMotionX:F

    .line 1140
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionXRemainder:F

    .line 1141
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/PagedView;->mTotalMotionX:F

    .line 1142
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/PagedView;->mActivePointerId:I

    .line 1143
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1144
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/PagedView;->pageBeginMoving()V

    goto :goto_1

    .line 1149
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 1152
    .local v11, pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 1153
    .local v16, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionXRemainder:F

    move/from16 v18, v0

    add-float v17, v17, v18

    sub-float v5, v17, v16

    .line 1155
    .local v5, deltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mTotalMotionX:F

    move/from16 v17, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v18

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/PagedView;->mTotalMotionX:F

    .line 1160
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/high16 v18, 0x3f80

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_4

    .line 1161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchX:F

    move/from16 v17, v0

    add-float v17, v17, v5

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchX:F

    .line 1162
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mDeferScrollUpdate:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 1163
    float-to-int v0, v5

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/PagedView;->scrollBy(II)V

    .line 1168
    :goto_2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionX:F

    .line 1169
    float-to-int v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v5, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_1

    .line 1166
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/PagedView;->invalidate()V

    goto :goto_2

    .line 1171
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/PagedView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 1174
    .end local v5           #deltaX:F
    .end local v11           #pointerIndex:I
    .end local v16           #x:F
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/cyanogenmod/trebuchet/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1179
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 1180
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mActivePointerId:I

    .line 1181
    .local v4, activePointerId:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 1182
    .restart local v11       #pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 1183
    .restart local v16       #x:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1184
    .local v14, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1185
    invoke-virtual {v14, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    .line 1186
    .local v15, velocityX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mDownMotionX:F

    move/from16 v17, v0

    sub-float v17, v16, v17

    move/from16 v0, v17

    float-to-int v5, v0

    .line 1187
    .local v5, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v10

    .line 1188
    .local v10, pageWidth:I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    const v19, 0x3ecccccd

    mul-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_9

    const/4 v8, 0x1

    .line 1190
    .local v8, isSignificantMove:Z
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mSnapVelocity:I

    .line 1192
    .local v13, snapVelocity:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mTotalMotionX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mLastMotionXRemainder:F

    move/from16 v19, v0

    add-float v18, v18, v19

    sub-float v18, v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/PagedView;->mTotalMotionX:F

    .line 1194
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mTotalMotionX:F

    move/from16 v17, v0

    const/high16 v18, 0x41c8

    cmpl-float v17, v17, v18

    if-lez v17, :cond_a

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    if-le v0, v13, :cond_a

    const/4 v7, 0x1

    .line 1200
    .local v7, isFling:Z
    :goto_4
    const/4 v12, 0x0

    .line 1201
    .local v12, returnToOriginalPage:Z
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    const v19, 0x3ea8f5c3

    mul-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_6

    int-to-float v0, v15

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    int-to-float v0, v5

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_6

    if-eqz v7, :cond_6

    .line 1203
    const/4 v12, 0x1

    .line 1210
    :cond_6
    if-eqz v8, :cond_7

    if-lez v5, :cond_7

    if-eqz v7, :cond_8

    :cond_7
    if-eqz v7, :cond_c

    if-lez v15, :cond_c

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    if-lez v17, :cond_c

    .line 1212
    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget v6, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    .line 1213
    .local v6, finalPage:I
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v15}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPageWithVelocity(II)V

    .line 1245
    .end local v4           #activePointerId:I
    .end local v5           #deltaX:I
    .end local v6           #finalPage:I
    .end local v7           #isFling:Z
    .end local v8           #isSignificantMove:Z
    .end local v10           #pageWidth:I
    .end local v11           #pointerIndex:I
    .end local v12           #returnToOriginalPage:Z
    .end local v13           #snapVelocity:I
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:I
    .end local v16           #x:F
    :goto_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    .line 1246
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/PagedView;->mActivePointerId:I

    .line 1247
    invoke-direct/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1188
    .restart local v4       #activePointerId:I
    .restart local v5       #deltaX:I
    .restart local v10       #pageWidth:I
    .restart local v11       #pointerIndex:I
    .restart local v14       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v15       #velocityX:I
    .restart local v16       #x:F
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 1194
    .restart local v8       #isSignificantMove:Z
    .restart local v13       #snapVelocity:I
    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    .line 1212
    .restart local v7       #isFling:Z
    .restart local v12       #returnToOriginalPage:Z
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v6, v17, -0x1

    goto :goto_5

    .line 1214
    :cond_c
    if-eqz v8, :cond_d

    if-gez v5, :cond_d

    if-eqz v7, :cond_e

    :cond_d
    if-eqz v7, :cond_10

    if-gez v15, :cond_10

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    .line 1217
    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    .line 1218
    .restart local v6       #finalPage:I
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v15}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_6

    .line 1217
    .end local v6           #finalPage:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v6, v17, 0x1

    goto :goto_7

    .line 1220
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToDestination()V

    goto :goto_6

    .line 1222
    .end local v4           #activePointerId:I
    .end local v5           #deltaX:I
    .end local v7           #isFling:Z
    .end local v8           #isSignificantMove:Z
    .end local v10           #pageWidth:I
    .end local v11           #pointerIndex:I
    .end local v12           #returnToOriginalPage:Z
    .end local v13           #snapVelocity:I
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:I
    .end local v16           #x:F
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 1226
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1227
    .local v9, nextPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v9, v0, :cond_12

    .line 1228
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(I)V

    goto/16 :goto_6

    .line 1230
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToDestination()V

    goto/16 :goto_6

    .line 1232
    .end local v9           #nextPage:I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 1236
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1237
    .restart local v9       #nextPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v9, v0, :cond_14

    .line 1238
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(I)V

    goto/16 :goto_6

    .line 1240
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToDestination()V

    goto/16 :goto_6

    .line 1243
    .end local v9           #nextPage:I
    :cond_15
    invoke-virtual/range {p0 .. p1}, Lcom/cyanogenmod/trebuchet/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 1251
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 1252
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToDestination()V

    .line 1254
    :cond_16
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchState:I

    .line 1255
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cyanogenmod/trebuchet/PagedView;->mActivePointerId:I

    .line 1256
    invoke-direct/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1260
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/cyanogenmod/trebuchet/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 1329
    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 629
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mForceScreenScrolled:Z

    .line 634
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->invalidate()V

    .line 635
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->invalidateCachedOffsets()V

    .line 636
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 1116
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->dampedOverScroll(F)V

    .line 1117
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mIsPageMoving:Z

    .line 327
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->onPageBeginMoving()V

    .line 329
    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mIsPageMoving:Z

    .line 334
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->onPageEndMoving()V

    .line 336
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1333
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1334
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->indexToPage(I)I

    move-result v0

    .line 1335
    .local v0, page:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1336
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(I)V

    .line 1338
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 765
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->indexToPage(I)I

    move-result v0

    .line 766
    .local v0, page:I
    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 767
    :cond_0
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(I)V

    .line 768
    const/4 v1, 0x1

    .line 770
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter "disallowIntercept"

    .prologue
    .line 853
    if-eqz p1, :cond_0

    .line 856
    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 857
    .local v0, currentPage:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 859
    .end local v0           #currentPage:Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 860
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 6
    .parameter "screenScroll"

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->updateScrollingIndicator()V

    .line 613
    :cond_0
    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mHandleFadeInAdjacentScreens:Z

    if-nez v4, :cond_3

    .line 614
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 615
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 616
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 617
    invoke-virtual {p0, p1, v1, v2}, Lcom/cyanogenmod/trebuchet/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 618
    .local v3, scrollProgress:F
    const/high16 v4, 0x3f80

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v0, v4, v5

    .line 619
    .local v0, alpha:F
    invoke-virtual {v1, v0}, Landroid/view/View;->setFastAlpha(F)V

    .line 620
    invoke-virtual {v1}, Landroid/view/View;->fastInvalidate()V

    .line 614
    .end local v0           #alpha:F
    .end local v3           #scrollProgress:F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 623
    .end local v1           #child:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->invalidate()V

    .line 625
    .end local v2           #i:I
    :cond_3
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 368
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->scrollTo(II)V

    .line 369
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1489
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(I)V

    .line 1493
    :cond_0
    :goto_0
    return-void

    .line 1491
    :cond_1
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mNextPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1497
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(I)V

    .line 1501
    :cond_0
    :goto_0
    return-void

    .line 1499
    :cond_1
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 373
    iput p1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mUnboundedScrollX:I

    .line 375
    if-gez p1, :cond_1

    .line 376
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 377
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    .line 378
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->overScroll(F)V

    .line 390
    :cond_0
    :goto_0
    int-to-float v0, p1

    iput v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTouchX:F

    .line 391
    return-void

    .line 380
    :cond_1
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_2

    .line 381
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mMaxScrollX:I

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 382
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    .line 383
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->overScroll(F)V

    goto :goto_0

    .line 386
    :cond_2
    iput p1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mOverScrollX:I

    .line 387
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method protected scrollToNewPageWithoutMovingPages(I)V
    .locals 7
    .parameter "newCurrentPage"

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildOffset(I)I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->getRelativeChildOffset(I)I

    move-result v6

    sub-int v2, v5, v6

    .line 509
    .local v2, newX:I
    iget v5, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollX:I

    sub-int v0, v2, v5

    .line 511
    .local v0, delta:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v4

    .line 512
    .local v4, pageCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 513
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 514
    .local v3, page:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    .end local v3           #page:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->setCurrentPage(I)V

    .line 517
    return-void
.end method

.method setCurrentPage(I)V
    .locals 2
    .parameter "currentPage"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 316
    :goto_0
    return-void

    .line 311
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    .line 312
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->updateCurrentPageScroll()V

    .line 313
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->updateScrollingIndicator()V

    .line 314
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->notifyPageSwitchListener()V

    .line 315
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->invalidate()V

    goto :goto_0
.end method

.method protected setDataIsReady()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mIsDataReady:Z

    .line 261
    return-void
.end method

.method public setLayoutScale(F)V
    .locals 11
    .parameter "childrenScale"

    .prologue
    const/high16 v8, 0x4000

    .line 523
    iput p1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLayoutScale:F

    .line 524
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->invalidateCachedOffsets()V

    .line 527
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v1

    .line 528
    .local v1, childCount:I
    new-array v2, v1, [F

    .line 529
    .local v2, childrenX:[F
    new-array v3, v1, [F

    .line 530
    .local v3, childrenY:[F
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 531
    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 532
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v2, v5

    .line 533
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v7

    aput v7, v3, v5

    .line 530
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 536
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 537
    .local v6, widthSpec:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 538
    .local v4, heightSpec:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->requestLayout()V

    .line 539
    invoke-virtual {p0, v6, v4}, Lcom/cyanogenmod/trebuchet/PagedView;->measure(II)V

    .line 540
    iget v7, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLeft:I

    iget v8, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mTop:I

    iget v9, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mRight:I

    iget v10, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mBottom:I

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/cyanogenmod/trebuchet/PagedView;->layout(IIII)V

    .line 541
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    .line 542
    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 543
    .restart local v0       #child:Landroid/view/View;
    aget v7, v2, v5

    invoke-virtual {v0, v7}, Landroid/view/View;->setX(F)V

    .line 544
    aget v7, v3, v5

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    .line 541
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 549
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget v7, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v7}, Lcom/cyanogenmod/trebuchet/PagedView;->scrollToNewPageWithoutMovingPages(I)V

    .line 550
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 359
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 360
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageCount()I

    move-result v0

    .line 361
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 362
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_0
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .parameter "pageSpacing"

    .prologue
    .line 553
    iput p1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mPageSpacing:I

    .line 554
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->invalidateCachedOffsets()V

    .line 555
    return-void
.end method

.method protected showScrollingIndicator(Z)V
    .locals 1
    .parameter "immediately"

    .prologue
    .line 1755
    const/16 v0, 0x96

    invoke-virtual {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->showScrollingIndicator(ZI)V

    .line 1756
    return-void
.end method

.method protected showScrollingIndicator(ZI)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 1759
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 1776
    :cond_0
    :goto_0
    return-void

    .line 1760
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1762
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getScrollingIndicator()Landroid/widget/ImageView;

    .line 1763
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1765
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->updateScrollingIndicatorPosition()V

    .line 1766
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1767
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 1768
    if-eqz p1, :cond_2

    .line 1769
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 1771
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1772
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1773
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 1382
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x226

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(II)V

    .line 1383
    return-void
.end method

.method protected snapToPage(I)V
    .locals 1
    .parameter "whichPage"

    .prologue
    .line 1443
    const/16 v0, 0x226

    invoke-virtual {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(II)V

    .line 1444
    return-void
.end method

.method protected snapToPage(II)V
    .locals 5
    .parameter "whichPage"
    .parameter "duration"

    .prologue
    .line 1447
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1452
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1453
    .local v1, newX:I
    iget v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mUnboundedScrollX:I

    .line 1454
    .local v2, sX:I
    sub-int v0, v1, v2

    .line 1455
    .local v0, delta:I
    invoke-virtual {p0, p1, v0, p2}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(III)V

    .line 1456
    return-void
.end method

.method protected snapToPage(III)V
    .locals 7
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 1459
    iput p1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mNextPage:I

    .line 1461
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1462
    .local v6, focusedChild:Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 1464
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1467
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->pageBeginMoving()V

    .line 1468
    invoke-virtual {p0, p3}, Lcom/cyanogenmod/trebuchet/PagedView;->awakenScrollBars(I)Z

    .line 1469
    if-nez p3, :cond_1

    .line 1470
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 1473
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1474
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1478
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mDeferScrollUpdate:Z

    if-eqz v0, :cond_3

    .line 1479
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->loadAssociatedPages(I)V

    .line 1483
    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->notifyPageSwitchListener()V

    .line 1484
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->invalidate()V

    .line 1485
    return-void

    .line 1481
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    goto :goto_0
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    .line 1406
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1407
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1412
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildOffset(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->getRelativeChildOffset(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1413
    iget v3, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mUnboundedScrollX:I

    sub-int/2addr v2, v3

    .line 1416
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xfa

    if-ge v3, v4, :cond_0

    .line 1419
    const/16 v1, 0x226

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(II)V

    .line 1440
    :goto_0
    return-void

    .line 1427
    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    mul-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1428
    int-to-float v4, v1

    int-to-float v1, v1

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/trebuchet/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    .line 1431
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1432
    const/16 v4, 0x898

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1437
    const/high16 v4, 0x447a

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 1439
    invoke-virtual {p0, v0, v2, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public abstract syncPageItems(IZ)V
.end method

.method public abstract syncPages()V
.end method

.method protected updateCurrentPageScroll()V
    .locals 3

    .prologue
    .line 293
    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildOffset(I)I

    move-result v1

    iget v2, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    sub-int v0, v1, v2

    .line 294
    .local v0, newX:I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/PagedView;->scrollTo(II)V

    .line 295
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 296
    return-void
.end method
