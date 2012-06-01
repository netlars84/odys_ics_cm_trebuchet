.class public Lcom/cyanogenmod/trebuchet/ButtonDropTarget;
.super Landroid/widget/TextView;
.source "ButtonDropTarget.java"

# interfaces
.implements Lcom/cyanogenmod/trebuchet/DragController$DragListener;
.implements Lcom/cyanogenmod/trebuchet/DropTarget;


# instance fields
.field protected mActive:Z

.field private mBottomDragPadding:I

.field protected final mHoverPaint:Landroid/graphics/Paint;

.field protected mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

.field protected mSearchDropTargetBar:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

.field protected final mTransitionDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->mHoverPaint:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->mTransitionDuration:I

    .line 52
    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->mBottomDragPadding:I

    .line 53
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getDropTargetDelegate(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)Lcom/cyanogenmod/trebuchet/DropTarget;
    .locals 1
    .parameter "d"

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "outRect"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 97
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->mBottomDragPadding:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 98
    return-void
.end method

.method public getLocationInDragLayer([I)V
    .locals 1
    .parameter "loc"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/cyanogenmod/trebuchet/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 107
    return-void
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->mActive:Z

    return v0
.end method

.method public onDragEnd()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onDragEnter(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 71
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->mHoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/DragView;->setPaint(Landroid/graphics/Paint;)V

    .line 72
    return-void
.end method

.method public onDragExit(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 79
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/DragView;->setPaint(Landroid/graphics/Paint;)V

    .line 80
    return-void
.end method

.method public onDragOver(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 76
    return-void
.end method

.method public onDragStart(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;I)V
    .locals 0
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 84
    return-void
.end method

.method public onDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 68
    return-void
.end method

.method setLauncher(Lcom/cyanogenmod/trebuchet/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    .line 57
    return-void
.end method

.method public setSearchDropTargetBar(Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;)V
    .locals 0
    .parameter "searchDropTargetBar"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->mSearchDropTargetBar:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    .line 65
    return-void
.end method
