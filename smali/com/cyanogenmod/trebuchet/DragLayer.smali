.class public Lcom/cyanogenmod/trebuchet/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;
    }
.end annotation


# instance fields
.field private mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mCurrentResizeFrame:Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;

.field private mDragController:Lcom/cyanogenmod/trebuchet/DragController;

.field private mDropAnim:Landroid/animation/ValueAnimator;

.field private mDropView:Landroid/view/View;

.field private mDropViewAlpha:F

.field private mDropViewPos:[I

.field private mDropViewScale:F

.field private mFadeOutAnim:Landroid/animation/ValueAnimator;

.field private mHitRect:Landroid/graphics/Rect;

.field private mHoverPointClosesFolder:Z

.field private mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

.field private mQsbIndex:I

.field private final mResizeFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpXY:[I

.field private mWorkspaceIndex:I

.field private mXDown:I

.field private mYDown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mTmpXY:[I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    .line 60
    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 61
    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 62
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 63
    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropView:Landroid/view/View;

    .line 65
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropViewPos:[I

    .line 68
    iput-boolean v4, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mHoverPointClosesFolder:Z

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mHitRect:Landroid/graphics/Rect;

    .line 70
    iput v3, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mWorkspaceIndex:I

    .line 71
    iput v3, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mQsbIndex:I

    .line 83
    invoke-virtual {p0, v4}, Lcom/cyanogenmod/trebuchet/DragLayer;->setMotionEventSplittingEnabled(Z)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/DragLayer;->setChildrenDrawingOrderEnabled(Z)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/cyanogenmod/trebuchet/DragLayer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropViewPos:[I

    return-object v0
.end method

.method static synthetic access$102(Lcom/cyanogenmod/trebuchet/DragLayer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropViewScale:F

    return p1
.end method

.method static synthetic access$202(Lcom/cyanogenmod/trebuchet/DragLayer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropViewAlpha:F

    return p1
.end method

.method static synthetic access$300(Lcom/cyanogenmod/trebuchet/DragLayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/DragLayer;->fadeOutDragView()V

    return-void
.end method

.method static synthetic access$400(Lcom/cyanogenmod/trebuchet/DragLayer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/cyanogenmod/trebuchet/DragLayer;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropView:Landroid/view/View;

    return-object p1
.end method

.method private animateViewIntoPosition(Landroid/view/View;IIIIFLjava/lang/Runnable;I)V
    .locals 13
    .parameter "view"
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toX"
    .parameter "toY"
    .parameter "finalScale"
    .parameter "onCompleteRunnable"
    .parameter "duration"

    .prologue
    .line 484
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p3

    move/from16 v0, p3

    invoke-direct {v4, p2, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 486
    .local v4, from:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p5

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 487
    .local v5, to:Landroid/graphics/Rect;
    const/high16 v6, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v2, p0

    move-object v3, p1

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v12}, Lcom/cyanogenmod/trebuchet/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V

    .line 488
    return-void
.end method

.method private fadeOutDragView()V
    .locals 3

    .prologue
    .line 582
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 583
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 584
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 585
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 586
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/cyanogenmod/trebuchet/DragLayer$4;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/trebuchet/DragLayer$4;-><init>(Lcom/cyanogenmod/trebuchet/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 596
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/cyanogenmod/trebuchet/DragLayer$5;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/trebuchet/DragLayer$5;-><init>(Lcom/cyanogenmod/trebuchet/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 601
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 602
    return-void

    .line 584
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .locals 9
    .parameter "ev"
    .parameter "intercept"

    .prologue
    const/4 v6, 0x1

    .line 108
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 109
    .local v2, hitRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 110
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 112
    .local v5, y:I
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;

    .line 113
    .local v0, child:Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;
    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 114
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;->getLeft()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;->getTop()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {v0, v7, v8}, Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 116
    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mCurrentResizeFrame:Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;

    .line 117
    iput v4, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mXDown:I

    .line 118
    iput v5, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mYDown:I

    .line 119
    invoke-virtual {p0, v6}, Lcom/cyanogenmod/trebuchet/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    .line 140
    .end local v0           #child:Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;
    :goto_0
    return v6

    .line 125
    :cond_1
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v7}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cyanogenmod/trebuchet/Workspace;->getOpenFolder()Lcom/cyanogenmod/trebuchet/Folder;

    move-result-object v1

    .line 126
    .local v1, currentFolder:Lcom/cyanogenmod/trebuchet/Folder;
    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v7}, Lcom/cyanogenmod/trebuchet/Launcher;->isFolderClingVisible()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz p2, :cond_3

    .line 127
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Folder;->isEditingName()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 128
    invoke-direct {p0, v1, p1}, Lcom/cyanogenmod/trebuchet/DragLayer;->isEventOverFolderTextRegion(Lcom/cyanogenmod/trebuchet/Folder;Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 129
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Folder;->dismissEditingName()V

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/cyanogenmod/trebuchet/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 135
    invoke-direct {p0, v1, p1}, Lcom/cyanogenmod/trebuchet/DragLayer;->isEventOverFolder(Lcom/cyanogenmod/trebuchet/Folder;Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 136
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v7}, Lcom/cyanogenmod/trebuchet/Launcher;->closeFolder()V

    goto :goto_0

    .line 140
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isEventOverFolder(Lcom/cyanogenmod/trebuchet/Folder;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "folder"
    .parameter "ev"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 104
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private isEventOverFolderTextRegion(Lcom/cyanogenmod/trebuchet/Folder;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "folder"
    .parameter "ev"

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/Folder;->getEditTextRegion()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 99
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private sendTapOutsideFolderAccessibilityEvent(Z)V
    .locals 4
    .parameter "isEditingName"

    .prologue
    .line 191
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    if-eqz p1, :cond_1

    const v1, 0x7f09005f

    .line 193
    .local v1, stringId:I
    :goto_0
    const/16 v2, 0x8

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 195
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/DragLayer;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 196
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 199
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    .end local v1           #stringId:I
    :cond_0
    return-void

    .line 192
    :cond_1
    const v1, 0x7f09005e

    goto :goto_0
.end method

.method private updateChildIndices()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mWorkspaceIndex:I

    .line 619
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getSearchBar()Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mQsbIndex:I

    .line 621
    :cond_0
    return-void
.end method


# virtual methods
.method public addResizeFrame(Lcom/cyanogenmod/trebuchet/ItemInfo;Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;Lcom/cyanogenmod/trebuchet/CellLayout;)V
    .locals 8
    .parameter "itemInfo"
    .parameter "widget"
    .parameter "cellLayout"

    .prologue
    const/4 v7, -0x1

    .line 389
    new-instance v0, Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;Lcom/cyanogenmod/trebuchet/CellLayout;Lcom/cyanogenmod/trebuchet/DragLayer;)V

    .line 392
    .local v0, resizeFrame:Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;
    new-instance v6, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;

    invoke-direct {v6, v7, v7}, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;-><init>(II)V

    .line 393
    .local v6, lp:Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->customPosition:Z

    .line 395
    invoke-virtual {p0, v0, v6}, Lcom/cyanogenmod/trebuchet/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 399
    return-void
.end method

.method public animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V
    .locals 17
    .parameter "view"
    .parameter "from"
    .parameter "to"
    .parameter "finalAlpha"
    .parameter "finalScale"
    .parameter "duration"
    .parameter "motionInterpolator"
    .parameter "alphaInterpolator"
    .parameter "onCompleteRunnable"
    .parameter "fadeOut"

    .prologue
    .line 513
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v13, v3

    .line 515
    .local v13, dist:F
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 516
    .local v15, res:Landroid/content/res/Resources;
    const v3, 0x7f0a001c

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v14, v3

    .line 519
    .local v14, maxDist:F
    if-gez p6, :cond_0

    .line 520
    const v3, 0x7f0a001a

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p6

    .line 521
    cmpg-float v3, v13, v14

    if-gez v3, :cond_0

    .line 522
    move/from16 v0, p6

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    div-float v5, v13, v14

    invoke-interface {v4, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 p6, v0

    .line 526
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    .line 527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 530
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    .line 531
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 534
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropView:Landroid/view/View;

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v12

    .line 536
    .local v12, initialAlpha:F
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 537
    if-eqz p8, :cond_3

    if-nez p7, :cond_4

    .line 538
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 541
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    move/from16 v0, p6

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v16, v0

    new-instance v3, Lcom/cyanogenmod/trebuchet/DragLayer$2;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p5

    move/from16 v11, p4

    invoke-direct/range {v3 .. v12}, Lcom/cyanogenmod/trebuchet/DragLayer$2;-><init>(Lcom/cyanogenmod/trebuchet/DragLayer;Landroid/view/View;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/graphics/Rect;Landroid/graphics/Rect;FFF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/cyanogenmod/trebuchet/DragLayer$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move/from16 v2, p10

    invoke-direct {v4, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/DragLayer$3;-><init>(Lcom/cyanogenmod/trebuchet/DragLayer;Ljava/lang/Runnable;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 579
    return-void

    .line 542
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public animateViewIntoPosition(Lcom/cyanogenmod/trebuchet/DragView;Landroid/view/View;)V
    .locals 1
    .parameter "dragView"
    .parameter "child"

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cyanogenmod/trebuchet/DragLayer;->animateViewIntoPosition(Lcom/cyanogenmod/trebuchet/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 403
    return-void
.end method

.method public animateViewIntoPosition(Lcom/cyanogenmod/trebuchet/DragView;Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 17
    .parameter "dragView"
    .parameter "child"
    .parameter "duration"
    .parameter "onFinishAnimationRunnable"

    .prologue
    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 426
    .local v14, lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 427
    .local v15, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/cyanogenmod/trebuchet/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 429
    const/4 v3, 0x2

    new-array v12, v3, [I

    .line 430
    .local v12, coord:[I
    const/4 v3, 0x0

    iget v4, v14, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->x:I

    aput v4, v12, v3

    .line 431
    const/4 v3, 0x1

    iget v4, v14, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->y:I

    aput v4, v12, v3

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/cyanogenmod/trebuchet/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v9

    .line 435
    .local v9, scale:F
    const/4 v3, 0x0

    aget v7, v12, v3

    .line 436
    .local v7, toX:I
    const/4 v3, 0x1

    aget v8, v12, v3

    .line 437
    .local v8, toY:I
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object/from16 v16, p2

    .line 438
    check-cast v16, Landroid/widget/TextView;

    .line 439
    .local v16, tv:Landroid/widget/TextView;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v13, v3, v4

    .line 442
    .local v13, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v8, v3

    .line 443
    invoke-virtual/range {p1 .. p1}, Lcom/cyanogenmod/trebuchet/DragView;->getHeight()I

    move-result v3

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v8, v3

    .line 445
    invoke-virtual/range {p1 .. p1}, Lcom/cyanogenmod/trebuchet/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    .line 457
    .end local v13           #d:Landroid/graphics/drawable/Drawable;
    .end local v16           #tv:Landroid/widget/TextView;
    :goto_0
    iget v5, v15, Landroid/graphics/Rect;->left:I

    .line 458
    .local v5, fromX:I
    iget v6, v15, Landroid/graphics/Rect;->top:I

    .line 459
    .local v6, fromY:I
    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 460
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 461
    new-instance v10, Lcom/cyanogenmod/trebuchet/DragLayer$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v10, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/DragLayer$1;-><init>(Lcom/cyanogenmod/trebuchet/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    .local v10, onCompleteRunnable:Ljava/lang/Runnable;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v11, p3

    .line 477
    invoke-direct/range {v3 .. v11}, Lcom/cyanogenmod/trebuchet/DragLayer;->animateViewIntoPosition(Landroid/view/View;IIIIFLjava/lang/Runnable;I)V

    .line 479
    return-void

    .line 446
    .end local v5           #fromX:I
    .end local v6           #fromY:I
    .end local v10           #onCompleteRunnable:Ljava/lang/Runnable;
    :cond_0
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/cyanogenmod/trebuchet/FolderIcon;

    if-eqz v3, :cond_1

    .line 448
    sget v3, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v8, v3

    .line 450
    invoke-virtual/range {p1 .. p1}, Lcom/cyanogenmod/trebuchet/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    goto :goto_0

    .line 452
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/cyanogenmod/trebuchet/DragView;->getHeight()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v8, v3

    .line 453
    invoke-virtual/range {p1 .. p1}, Lcom/cyanogenmod/trebuchet/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    goto :goto_0
.end method

.method public animateViewIntoPosition(Lcom/cyanogenmod/trebuchet/DragView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "dragView"
    .parameter "child"
    .parameter "onFinishAnimationRunnable"

    .prologue
    .line 418
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/cyanogenmod/trebuchet/DragLayer;->animateViewIntoPosition(Lcom/cyanogenmod/trebuchet/DragView;Landroid/view/View;ILjava/lang/Runnable;)V

    .line 419
    return-void
.end method

.method public animateViewIntoPosition(Lcom/cyanogenmod/trebuchet/DragView;[IFLjava/lang/Runnable;)V
    .locals 10
    .parameter "dragView"
    .parameter "pos"
    .parameter "scale"
    .parameter "onFinishRunnable"

    .prologue
    .line 407
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 408
    .local v9, r:Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v9}, Lcom/cyanogenmod/trebuchet/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 409
    iget v2, v9, Landroid/graphics/Rect;->left:I

    .line 410
    .local v2, fromX:I
    iget v3, v9, Landroid/graphics/Rect;->top:I

    .line 412
    .local v3, fromY:I
    const/4 v0, 0x0

    aget v4, p2, v0

    const/4 v0, 0x1

    aget v5, p2, v0

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/cyanogenmod/trebuchet/DragLayer;->animateViewIntoPosition(Landroid/view/View;IIIIFLjava/lang/Runnable;I)V

    .line 414
    return-void
.end method

.method public clearAllResizeFrames()V
    .locals 3

    .prologue
    .line 371
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 372
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;

    .line 373
    .local v0, frame:Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 375
    .end local v0           #frame:Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;
    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 377
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    .line 650
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 651
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 654
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->save(I)I

    .line 655
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropViewPos:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int v2, v4, v5

    .line 656
    .local v2, xPos:I
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropViewPos:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int v3, v4, v5

    .line 657
    .local v3, yPos:I
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 658
    .local v1, width:I
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 659
    .local v0, height:I
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 660
    iget v4, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropViewScale:F

    sub-float v4, v6, v4

    int-to-float v5, v1

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    iget v5, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropViewScale:F

    sub-float v5, v6, v5

    int-to-float v6, v0

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 661
    iget v4, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropViewScale:F

    iget v5, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropViewScale:F

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 662
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropView:Landroid/view/View;

    iget v5, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropViewAlpha:F

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 663
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 664
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 666
    .end local v0           #height:I
    .end local v1           #width:I
    .end local v2           #xPos:I
    .end local v3           #yPos:I
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/cyanogenmod/trebuchet/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .parameter "childCount"
    .parameter "i"

    .prologue
    const/4 v1, -0x1

    .line 627
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getChildDrawingOrder(II)I

    move-result p2

    .line 644
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 631
    .restart local p2
    :cond_1
    iget v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mWorkspaceIndex:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mQsbIndex:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->isDrawingBackgroundGradient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    iget v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mQsbIndex:I

    if-ne p2, v0, :cond_2

    .line 640
    iget p2, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mWorkspaceIndex:I

    goto :goto_0

    .line 641
    :cond_2
    iget v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mWorkspaceIndex:I

    if-ne p2, v0, :cond_0

    .line 642
    iget p2, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mQsbIndex:I

    goto :goto_0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 9
    .parameter "descendant"
    .parameter "coord"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 271
    const/high16 v1, 0x3f80

    .line 272
    .local v1, scale:F
    const/4 v4, 0x2

    new-array v0, v4, [F

    aget v4, p2, v7

    int-to-float v4, v4

    aput v4, v0, v7

    aget v4, p2, v8

    int-to-float v4, v4

    aput v4, v0, v8

    .line 273
    .local v0, pt:[F
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 275
    aget v4, v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 276
    aget v4, v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v8

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 278
    .local v3, viewParent:Landroid/view/ViewParent;
    :goto_0
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_0

    if-eq v3, p0, :cond_0

    move-object v2, v3

    .line 279
    check-cast v2, Landroid/view/View;

    .line 280
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 281
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 282
    aget v4, v0, v7

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 283
    aget v4, v0, v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v8

    .line 284
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 285
    goto :goto_0

    .line 286
    .end local v2           #view:Landroid/view/View;
    :cond_0
    aget v4, v0, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v7

    .line 287
    aget v4, v0, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v8

    .line 288
    return v1
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6
    .parameter "descendant"
    .parameter "r"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 248
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mTmpXY:[I

    aput v4, v1, v4

    .line 249
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mTmpXY:[I

    aput v4, v1, v5

    .line 250
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mTmpXY:[I

    invoke-virtual {p0, p1, v1}, Lcom/cyanogenmod/trebuchet/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 251
    .local v0, scale:F
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mTmpXY:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mTmpXY:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mTmpXY:[I

    aget v3, v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mTmpXY:[I

    aget v4, v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 253
    return v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)V
    .locals 2
    .parameter "child"
    .parameter "loc"

    .prologue
    const/4 v1, 0x0

    .line 257
    aput v1, p2, v1

    .line 258
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 260
    return-void
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "v"
    .parameter "r"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 292
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 293
    .local v1, loc:[I
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/DragLayer;->getLocationInWindow([I)V

    .line 294
    aget v5, v1, v8

    .line 295
    .local v5, x:I
    aget v6, v1, v9

    .line 297
    .local v6, y:I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 298
    aget v3, v1, v8

    .line 299
    .local v3, vX:I
    aget v4, v1, v9

    .line 301
    .local v4, vY:I
    sub-int v0, v3, v5

    .line 302
    .local v0, left:I
    sub-int v2, v4, v6

    .line 303
    .local v2, top:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p2, v0, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 304
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 156
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/Workspace;->getOpenFolder()Lcom/cyanogenmod/trebuchet/Folder;

    move-result-object v1

    .line 157
    .local v1, currentFolder:Lcom/cyanogenmod/trebuchet/Folder;
    if-nez v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v3

    .line 160
    :cond_1
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 163
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 174
    :goto_1
    :pswitch_1
    invoke-direct {p0, v1, p1}, Lcom/cyanogenmod/trebuchet/DragLayer;->isEventOverFolder(Lcom/cyanogenmod/trebuchet/Folder;Landroid/view/MotionEvent;)Z

    move-result v2

    .line 175
    .local v2, isOverFolder:Z
    if-nez v2, :cond_3

    iget-boolean v5, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mHoverPointClosesFolder:Z

    if-nez v5, :cond_3

    .line 176
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Folder;->isEditingName()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/cyanogenmod/trebuchet/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 177
    iput-boolean v4, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mHoverPointClosesFolder:Z

    move v3, v4

    .line 178
    goto :goto_0

    .line 165
    .end local v2           #isOverFolder:Z
    :pswitch_2
    invoke-direct {p0, v1, p1}, Lcom/cyanogenmod/trebuchet/DragLayer;->isEventOverFolder(Lcom/cyanogenmod/trebuchet/Folder;Landroid/view/MotionEvent;)Z

    move-result v2

    .line 166
    .restart local v2       #isOverFolder:Z
    if-nez v2, :cond_2

    .line 167
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Folder;->isEditingName()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/cyanogenmod/trebuchet/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 168
    iput-boolean v4, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mHoverPointClosesFolder:Z

    move v3, v4

    .line 169
    goto :goto_0

    .line 171
    :cond_2
    iput-boolean v3, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_1

    .line 179
    :cond_3
    if-eqz v2, :cond_4

    .line 180
    iput-boolean v3, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_0

    :cond_4
    move v3, v4

    .line 182
    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v0, 0x1

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 146
    invoke-direct {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    :goto_0
    return v0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DragLayer;->clearAllResizeFrames()V

    .line 151
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 356
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 357
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DragLayer;->getChildCount()I

    move-result v1

    .line 358
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 359
    invoke-virtual {p0, v3}, Lcom/cyanogenmod/trebuchet/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 361
    .local v2, flp:Landroid/widget/FrameLayout$LayoutParams;
    instance-of v5, v2, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 362
    check-cast v4, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;

    .line 363
    .local v4, lp:Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;
    iget-boolean v5, v4, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->customPosition:Z

    if-eqz v5, :cond_0

    .line 364
    iget v5, v4, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->x:I

    iget v6, v4, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->y:I

    iget v7, v4, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->x:I

    iget v8, v4, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->y:I

    iget v9, v4, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 358
    .end local v4           #lp:Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    .end local v0           #child:Landroid/view/View;
    .end local v2           #flp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 213
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 214
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 216
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 218
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/cyanogenmod/trebuchet/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v4

    .line 224
    :cond_1
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mCurrentResizeFrame:Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;

    if-eqz v5, :cond_2

    .line 225
    const/4 v1, 0x1

    .line 226
    packed-switch v0, :pswitch_data_0

    .line 236
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    .line 237
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    invoke-virtual {v4, p1}, Lcom/cyanogenmod/trebuchet/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 228
    :pswitch_0
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mCurrentResizeFrame:Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;

    iget v6, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mXDown:I

    sub-int v6, v2, v6

    iget v7, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mYDown:I

    sub-int v7, v3, v7

    invoke-virtual {v5, v6, v7}, Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_1

    .line 232
    :pswitch_1
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mCurrentResizeFrame:Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;

    iget v6, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mXDown:I

    sub-int v6, v2, v6

    iget v7, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mYDown:I

    sub-int v7, v3, v7

    invoke-virtual {v5, v6, v7}, Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;->commitResizeForDelta(II)V

    .line 233
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mCurrentResizeFrame:Lcom/cyanogenmod/trebuchet/AppWidgetResizeFrame;

    goto :goto_1

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 606
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 607
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/DragLayer;->updateChildIndices()V

    .line 608
    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 612
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 613
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/DragLayer;->updateChildIndices()V

    .line 614
    return-void
.end method

.method public setup(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/DragController;)V
    .locals 0
    .parameter "launcher"
    .parameter "controller"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    .line 89
    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/DragLayer;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    .line 90
    return-void
.end method
