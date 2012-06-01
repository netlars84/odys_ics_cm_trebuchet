.class public Lcom/cyanogenmod/trebuchet/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/DragController$ScrollRunnable;,
        Lcom/cyanogenmod/trebuchet/DragController$DragListener;
    }
.end annotation


# static fields
.field public static DRAG_ACTION_COPY:I

.field public static DRAG_ACTION_MOVE:I


# instance fields
.field private final mCoordinatesTemp:[I

.field private mDistanceSinceScroll:I

.field private mDragLayerRect:Landroid/graphics/Rect;

.field private mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

.field private mDragScroller:Lcom/cyanogenmod/trebuchet/DragScroller;

.field private mDragging:Z

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/cyanogenmod/trebuchet/DropTarget;

.field private mLastTouch:[I

.field private mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mMoveTarget:Landroid/view/View;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/cyanogenmod/trebuchet/DragController$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mScrollZone:I

.field private mTmpPoint:[I

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/cyanogenmod/trebuchet/DragController;->DRAG_ACTION_MOVE:I

    .line 46
    const/4 v0, 0x1

    sput v0, Lcom/cyanogenmod/trebuchet/DragController;->DRAG_ACTION_COPY:I

    return-void
.end method

.method public constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;)V
    .locals 3
    .parameter "launcher"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mVibrator:Landroid/os/Vibrator;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 66
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mCoordinatesTemp:[I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mListeners:Ljava/util/ArrayList;

    .line 98
    iput v2, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollState:I

    .line 99
    new-instance v0, Lcom/cyanogenmod/trebuchet/DragController$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/trebuchet/DragController$ScrollRunnable;-><init>(Lcom/cyanogenmod/trebuchet/DragController;)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollRunnable:Lcom/cyanogenmod/trebuchet/DragController$ScrollRunnable;

    .line 105
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLastTouch:[I

    .line 106
    iput v2, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDistanceSinceScroll:I

    .line 108
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mTmpPoint:[I

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    .line 138
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mHandler:Landroid/os/Handler;

    .line 140
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollZone:I

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/cyanogenmod/trebuchet/DragController;)Lcom/cyanogenmod/trebuchet/DragScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragScroller:Lcom/cyanogenmod/trebuchet/DragScroller;

    return-object v0
.end method

.method static synthetic access$102(Lcom/cyanogenmod/trebuchet/DragController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollState:I

    return p1
.end method

.method static synthetic access$202(Lcom/cyanogenmod/trebuchet/DragController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDistanceSinceScroll:I

    return p1
.end method

.method private drop(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    .line 567
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/DragController;->mCoordinatesTemp:[I

    .line 568
    .local v1, coordinates:[I
    float-to-int v3, p1

    float-to-int v4, p2

    invoke-direct {p0, v3, v4, v1}, Lcom/cyanogenmod/trebuchet/DragController;->findDropTarget(II[I)Lcom/cyanogenmod/trebuchet/DropTarget;

    move-result-object v2

    .line 570
    .local v2, dropTarget:Lcom/cyanogenmod/trebuchet/DropTarget;
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    const/4 v4, 0x0

    aget v4, v1, v4

    iput v4, v3, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->x:I

    .line 571
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    aget v4, v1, v5

    iput v4, v3, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->y:I

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, accepted:Z
    if-eqz v2, :cond_0

    .line 574
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    iput-boolean v5, v3, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragComplete:Z

    .line 575
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/cyanogenmod/trebuchet/DropTarget;->onDragExit(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 576
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/cyanogenmod/trebuchet/DropTarget;->acceptDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 577
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/cyanogenmod/trebuchet/DropTarget;->onDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 578
    const/4 v0, 0x1

    .line 581
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    iget-object v3, v3, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragSource:Lcom/cyanogenmod/trebuchet/DragSource;

    check-cast v2, Landroid/view/View;

    .end local v2           #dropTarget:Lcom/cyanogenmod/trebuchet/DropTarget;
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    invoke-interface {v3, v2, v4, v0}, Lcom/cyanogenmod/trebuchet/DragSource;->onDropCompleted(Landroid/view/View;Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;Z)V

    .line 582
    return-void
.end method

.method private endDrag()V
    .locals 4

    .prologue
    .line 387
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragging:Z

    if-eqz v2, :cond_1

    .line 388
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragging:Z

    .line 389
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/DragController$DragListener;

    .line 390
    .local v1, listener:Lcom/cyanogenmod/trebuchet/DragController$DragListener;
    invoke-interface {v1}, Lcom/cyanogenmod/trebuchet/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    .line 392
    .end local v1           #listener:Lcom/cyanogenmod/trebuchet/DragController$DragListener;
    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    iget-object v2, v2, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    if-eqz v2, :cond_1

    .line 393
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    iget-object v2, v2, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/DragView;->remove()V

    .line 394
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    .line 397
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private findDropTarget(II[I)Lcom/cyanogenmod/trebuchet/DropTarget;
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 585
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 587
    .local v4, r:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 588
    .local v2, dropTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/DropTarget;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 589
    .local v0, count:I
    add-int/lit8 v3, v0, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_3

    .line 590
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cyanogenmod/trebuchet/DropTarget;

    .line 591
    .local v5, target:Lcom/cyanogenmod/trebuchet/DropTarget;
    invoke-interface {v5}, Lcom/cyanogenmod/trebuchet/DropTarget;->isDropEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 589
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 594
    :cond_1
    invoke-interface {v5, v4}, Lcom/cyanogenmod/trebuchet/DropTarget;->getHitRect(Landroid/graphics/Rect;)V

    .line 597
    invoke-interface {v5, p3}, Lcom/cyanogenmod/trebuchet/DropTarget;->getLocationInDragLayer([I)V

    .line 598
    aget v6, p3, v9

    invoke-interface {v5}, Lcom/cyanogenmod/trebuchet/DropTarget;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    aget v7, p3, v10

    invoke-interface {v5}, Lcom/cyanogenmod/trebuchet/DropTarget;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 600
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    iput p1, v6, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->x:I

    .line 601
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    iput p2, v6, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->y:I

    .line 602
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 603
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    invoke-interface {v5, v6}, Lcom/cyanogenmod/trebuchet/DropTarget;->getDropTargetDelegate(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)Lcom/cyanogenmod/trebuchet/DropTarget;

    move-result-object v1

    .line 604
    .local v1, delegate:Lcom/cyanogenmod/trebuchet/DropTarget;
    if-eqz v1, :cond_2

    .line 605
    move-object v5, v1

    .line 606
    invoke-interface {v5, p3}, Lcom/cyanogenmod/trebuchet/DropTarget;->getLocationInDragLayer([I)V

    .line 610
    :cond_2
    aget v6, p3, v9

    sub-int v6, p1, v6

    aput v6, p3, v9

    .line 611
    aget v6, p3, v10

    sub-int v6, p2, v6

    aput v6, p3, v10

    .line 616
    .end local v1           #delegate:Lcom/cyanogenmod/trebuchet/DropTarget;
    .end local v5           #target:Lcom/cyanogenmod/trebuchet/DropTarget;
    :goto_1
    return-object v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getClampedDragLayerPos(FF)[I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/DragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 404
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mTmpPoint:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 405
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mTmpPoint:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 406
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mTmpPoint:[I

    return-object v0
.end method

.method private handleMoveEvent(II)V
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    .line 458
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    iget-object v4, v4, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    invoke-virtual {v4, p1, p2}, Lcom/cyanogenmod/trebuchet/DragView;->move(II)V

    .line 461
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mCoordinatesTemp:[I

    .line 462
    .local v0, coordinates:[I
    invoke-direct {p0, p1, p2, v0}, Lcom/cyanogenmod/trebuchet/DragController;->findDropTarget(II[I)Lcom/cyanogenmod/trebuchet/DropTarget;

    move-result-object v2

    .line 463
    .local v2, dropTarget:Lcom/cyanogenmod/trebuchet/DropTarget;
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    const/4 v5, 0x0

    aget v5, v0, v5

    iput v5, v4, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->x:I

    .line 464
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    const/4 v5, 0x1

    aget v5, v0, v5

    iput v5, v4, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->y:I

    .line 465
    if-eqz v2, :cond_5

    .line 466
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    invoke-interface {v2, v4}, Lcom/cyanogenmod/trebuchet/DropTarget;->getDropTargetDelegate(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)Lcom/cyanogenmod/trebuchet/DropTarget;

    move-result-object v1

    .line 467
    .local v1, delegate:Lcom/cyanogenmod/trebuchet/DropTarget;
    if-eqz v1, :cond_0

    .line 468
    move-object v2, v1

    .line 471
    :cond_0
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLastDropTarget:Lcom/cyanogenmod/trebuchet/DropTarget;

    if-eq v4, v2, :cond_2

    .line 472
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLastDropTarget:Lcom/cyanogenmod/trebuchet/DropTarget;

    if-eqz v4, :cond_1

    .line 473
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLastDropTarget:Lcom/cyanogenmod/trebuchet/DropTarget;

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    invoke-interface {v4, v5}, Lcom/cyanogenmod/trebuchet/DropTarget;->onDragExit(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 475
    :cond_1
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    invoke-interface {v2, v4}, Lcom/cyanogenmod/trebuchet/DropTarget;->onDragEnter(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 477
    :cond_2
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    invoke-interface {v2, v4}, Lcom/cyanogenmod/trebuchet/DropTarget;->onDragOver(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 483
    .end local v1           #delegate:Lcom/cyanogenmod/trebuchet/DropTarget;
    :cond_3
    :goto_0
    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLastDropTarget:Lcom/cyanogenmod/trebuchet/DropTarget;

    .line 487
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v3

    .line 488
    .local v3, slop:I
    iget v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDistanceSinceScroll:I

    int-to-double v4, v4

    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLastTouch:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v6, p1

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLastTouch:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v8, p2

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDistanceSinceScroll:I

    .line 490
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLastTouch:[I

    const/4 v5, 0x0

    aput p1, v4, v5

    .line 491
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLastTouch:[I

    const/4 v5, 0x1

    aput p2, v4, v5

    .line 493
    iget v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollZone:I

    if-ge p1, v4, :cond_6

    .line 494
    iget v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollState:I

    if-nez v4, :cond_4

    iget v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDistanceSinceScroll:I

    if-le v4, v3, :cond_4

    .line 495
    const/4 v4, 0x1

    iput v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollState:I

    .line 496
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragScroller:Lcom/cyanogenmod/trebuchet/DragScroller;

    const/4 v5, 0x0

    invoke-interface {v4, p1, p2, v5}, Lcom/cyanogenmod/trebuchet/DragScroller;->onEnterScrollArea(III)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 497
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollRunnable:Lcom/cyanogenmod/trebuchet/DragController$ScrollRunnable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/cyanogenmod/trebuchet/DragController$ScrollRunnable;->setDirection(I)V

    .line 498
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollRunnable:Lcom/cyanogenmod/trebuchet/DragController$ScrollRunnable;

    const-wide/16 v6, 0x258

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 517
    :cond_4
    :goto_1
    return-void

    .line 479
    .end local v3           #slop:I
    :cond_5
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLastDropTarget:Lcom/cyanogenmod/trebuchet/DropTarget;

    if-eqz v4, :cond_3

    .line 480
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLastDropTarget:Lcom/cyanogenmod/trebuchet/DropTarget;

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    invoke-interface {v4, v5}, Lcom/cyanogenmod/trebuchet/DropTarget;->onDragExit(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    goto :goto_0

    .line 501
    .restart local v3       #slop:I
    :cond_6
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollZone:I

    sub-int/2addr v4, v5

    if-le p1, v4, :cond_7

    .line 502
    iget v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollState:I

    if-nez v4, :cond_4

    iget v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDistanceSinceScroll:I

    if-le v4, v3, :cond_4

    .line 503
    const/4 v4, 0x1

    iput v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollState:I

    .line 504
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragScroller:Lcom/cyanogenmod/trebuchet/DragScroller;

    const/4 v5, 0x1

    invoke-interface {v4, p1, p2, v5}, Lcom/cyanogenmod/trebuchet/DragScroller;->onEnterScrollArea(III)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 505
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollRunnable:Lcom/cyanogenmod/trebuchet/DragController$ScrollRunnable;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/cyanogenmod/trebuchet/DragController$ScrollRunnable;->setDirection(I)V

    .line 506
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollRunnable:Lcom/cyanogenmod/trebuchet/DragController$ScrollRunnable;

    const-wide/16 v6, 0x258

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 510
    :cond_7
    iget v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 511
    const/4 v4, 0x0

    iput v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollState:I

    .line 512
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollRunnable:Lcom/cyanogenmod/trebuchet/DragController$ScrollRunnable;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/cyanogenmod/trebuchet/DragController$ScrollRunnable;->setDirection(I)V

    .line 513
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollRunnable:Lcom/cyanogenmod/trebuchet/DragController$ScrollRunnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 514
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragScroller:Lcom/cyanogenmod/trebuchet/DragScroller;

    invoke-interface {v4}, Lcom/cyanogenmod/trebuchet/DragScroller;->onExitScrollArea()Z

    goto :goto_1
.end method


# virtual methods
.method public addDragListener(Lcom/cyanogenmod/trebuchet/DragController$DragListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    return-void
.end method

.method public addDropTarget(Lcom/cyanogenmod/trebuchet/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    return-void
.end method

.method public cancelDrag()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 360
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragging:Z

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLastDropTarget:Lcom/cyanogenmod/trebuchet/DropTarget;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLastDropTarget:Lcom/cyanogenmod/trebuchet/DropTarget;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/cyanogenmod/trebuchet/DropTarget;->onDragExit(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->cancelled:Z

    .line 365
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragComplete:Z

    .line 366
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragSource:Lcom/cyanogenmod/trebuchet/DragSource;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/cyanogenmod/trebuchet/DragSource;->onDropCompleted(Landroid/view/View;Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;Z)V

    .line 368
    :cond_1
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/DragController;->endDrag()V

    .line 369
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragging:Z

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dragging()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragging:Z

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragging:Z

    return v0
.end method

.method public onAppsRemoved(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ApplicationInfo;>;"
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    if-eqz v4, :cond_1

    .line 373
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    iget-object v3, v4, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 374
    .local v3, rawDragInfo:Ljava/lang/Object;
    instance-of v4, v3, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 375
    check-cast v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 376
    .local v0, dragInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    .line 377
    .local v2, info:Lcom/cyanogenmod/trebuchet/ApplicationInfo;
    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, v2, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DragController;->cancelDrag()V

    .line 384
    .end local v0           #dragInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/cyanogenmod/trebuchet/ApplicationInfo;
    .end local v3           #rawDragInfo:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 419
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/cyanogenmod/trebuchet/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v1

    .line 420
    .local v1, dragLayerPos:[I
    const/4 v4, 0x0

    aget v2, v1, v4

    .line 421
    .local v2, dragLayerX:I
    const/4 v4, 0x1

    aget v3, v1, v4

    .line 423
    .local v3, dragLayerY:I
    packed-switch v0, :pswitch_data_0

    .line 443
    :goto_0
    :pswitch_0
    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragging:Z

    return v4

    .line 428
    :pswitch_1
    iput v2, p0, Lcom/cyanogenmod/trebuchet/DragController;->mMotionDownX:I

    .line 429
    iput v3, p0, Lcom/cyanogenmod/trebuchet/DragController;->mMotionDownY:I

    .line 430
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLastDropTarget:Lcom/cyanogenmod/trebuchet/DropTarget;

    goto :goto_0

    .line 433
    :pswitch_2
    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragging:Z

    if-eqz v4, :cond_0

    .line 434
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-direct {p0, v4, v5}, Lcom/cyanogenmod/trebuchet/DragController;->drop(FF)V

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/DragController;->endDrag()V

    goto :goto_0

    .line 439
    :pswitch_3
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DragController;->cancelDrag()V

    goto :goto_0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 523
    iget-boolean v6, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragging:Z

    if-nez v6, :cond_0

    .line 563
    :goto_0
    return v4

    .line 527
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 528
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/cyanogenmod/trebuchet/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v1

    .line 529
    .local v1, dragLayerPos:[I
    aget v2, v1, v4

    .line 530
    .local v2, dragLayerX:I
    aget v3, v1, v5

    .line 532
    .local v3, dragLayerY:I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v4, v5

    .line 563
    goto :goto_0

    .line 535
    :pswitch_0
    iput v2, p0, Lcom/cyanogenmod/trebuchet/DragController;->mMotionDownX:I

    .line 536
    iput v3, p0, Lcom/cyanogenmod/trebuchet/DragController;->mMotionDownY:I

    .line 538
    iget v6, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollZone:I

    if-lt v2, v6, :cond_1

    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollZone:I

    sub-int/2addr v6, v7

    if-le v2, v6, :cond_2

    .line 539
    :cond_1
    iput v5, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollState:I

    .line 540
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollRunnable:Lcom/cyanogenmod/trebuchet/DragController$ScrollRunnable;

    const-wide/16 v7, 0x258

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 542
    :cond_2
    iput v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollState:I

    goto :goto_1

    .line 546
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/cyanogenmod/trebuchet/DragController;->handleMoveEvent(II)V

    goto :goto_1

    .line 550
    :pswitch_2
    invoke-direct {p0, v2, v3}, Lcom/cyanogenmod/trebuchet/DragController;->handleMoveEvent(II)V

    .line 552
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollRunnable:Lcom/cyanogenmod/trebuchet/DragController$ScrollRunnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 553
    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragging:Z

    if-eqz v4, :cond_3

    .line 554
    int-to-float v4, v2

    int-to-float v6, v3

    invoke-direct {p0, v4, v6}, Lcom/cyanogenmod/trebuchet/DragController;->drop(FF)V

    .line 556
    :cond_3
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/DragController;->endDrag()V

    goto :goto_1

    .line 559
    :pswitch_3
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DragController;->cancelDrag()V

    goto :goto_1

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeDropTarget(Lcom/cyanogenmod/trebuchet/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 653
    return-void
.end method

.method public setDragScoller(Lcom/cyanogenmod/trebuchet/DragScroller;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 620
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/DragController;->mDragScroller:Lcom/cyanogenmod/trebuchet/DragScroller;

    .line 621
    return-void
.end method

.method setMoveTarget(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/DragController;->mMoveTarget:Landroid/view/View;

    .line 451
    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 659
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/DragController;->mScrollView:Landroid/view/View;

    .line 660
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 624
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/DragController;->mWindowToken:Landroid/os/IBinder;

    .line 625
    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IILcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 17
    .parameter "b"
    .parameter "dragLayerX"
    .parameter "dragLayerY"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "dragOffset"
    .parameter "dragRegion"

    .prologue
    .line 257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v4, :cond_0

    .line 258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Lcom/cyanogenmod/trebuchet/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 261
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cyanogenmod/trebuchet/DragController;->mWindowToken:Landroid/os/IBinder;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cyanogenmod/trebuchet/DragController$DragListener;

    .line 264
    .local v15, listener:Lcom/cyanogenmod/trebuchet/DragController$DragListener;
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-interface {v15, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/DragController$DragListener;->onDragStart(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;I)V

    goto :goto_0

    .line 267
    .end local v15           #listener:Lcom/cyanogenmod/trebuchet/DragController$DragListener;
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mMotionDownX:I

    sub-int v6, v4, p2

    .line 268
    .local v6, registrationX:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mMotionDownY:I

    sub-int v7, v4, p3

    .line 270
    .local v7, registrationY:I
    if-nez p8, :cond_4

    const/4 v12, 0x0

    .line 271
    .local v12, dragRegionLeft:I
    :goto_1
    if-nez p8, :cond_5

    const/4 v13, 0x0

    .line 273
    .local v13, dragRegionTop:I
    :goto_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mDragging:Z

    .line 275
    new-instance v4, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    invoke-direct {v4}, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragComplete:Z

    .line 278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cyanogenmod/trebuchet/DragController;->mMotionDownX:I

    add-int v8, p2, v12

    sub-int/2addr v5, v8

    iput v5, v4, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->xOffset:I

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cyanogenmod/trebuchet/DragController;->mMotionDownY:I

    add-int v8, p3, v13

    sub-int/2addr v5, v8

    iput v5, v4, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->yOffset:I

    .line 280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    move-object/from16 v0, p4

    iput-object v0, v4, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragSource:Lcom/cyanogenmod/trebuchet/DragSource;

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    move-object/from16 v0, p5

    iput-object v0, v4, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v8, 0x23

    invoke-virtual {v4, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/DragController;->mDragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    move-object/from16 v16, v0

    new-instance v3, Lcom/cyanogenmod/trebuchet/DragView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v11}, Lcom/cyanogenmod/trebuchet/DragView;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/graphics/Bitmap;IIIIII)V

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    .line 288
    .local v3, dragView:Lcom/cyanogenmod/trebuchet/DragView;
    if-eqz p7, :cond_2

    .line 289
    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, p7

    invoke-direct {v4, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v3, v4}, Lcom/cyanogenmod/trebuchet/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    .line 291
    :cond_2
    if-eqz p8, :cond_3

    .line 292
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p8

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Lcom/cyanogenmod/trebuchet/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 295
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cyanogenmod/trebuchet/DragController;->mMotionDownY:I

    invoke-virtual {v3, v4, v5}, Lcom/cyanogenmod/trebuchet/DragView;->show(II)V

    .line 296
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cyanogenmod/trebuchet/DragController;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cyanogenmod/trebuchet/DragController;->mMotionDownY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/cyanogenmod/trebuchet/DragController;->handleMoveEvent(II)V

    .line 297
    return-void

    .line 270
    .end local v3           #dragView:Lcom/cyanogenmod/trebuchet/DragView;
    .end local v12           #dragRegionLeft:I
    .end local v13           #dragRegionTop:I
    :cond_4
    move-object/from16 v0, p8

    iget v12, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 271
    .restart local v12       #dragRegionLeft:I
    :cond_5
    move-object/from16 v0, p8

    iget v13, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2
.end method

.method public startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V
    .locals 10
    .parameter "v"
    .parameter "bmp"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "dragRegion"

    .prologue
    .line 207
    iget-object v9, p0, Lcom/cyanogenmod/trebuchet/DragController;->mCoordinatesTemp:[I

    .line 208
    .local v9, loc:[I
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragController;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p1, v9}, Lcom/cyanogenmod/trebuchet/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 209
    const/4 v0, 0x0

    aget v2, v9, v0

    .line 210
    .local v2, dragLayerX:I
    const/4 v0, 0x1

    aget v3, v9, v0

    .line 212
    .local v3, dragLayerY:I
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/cyanogenmod/trebuchet/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 214
    sget v0, Lcom/cyanogenmod/trebuchet/DragController;->DRAG_ACTION_MOVE:I

    if-ne p5, v0, :cond_0

    .line 215
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_0
    return-void
.end method
