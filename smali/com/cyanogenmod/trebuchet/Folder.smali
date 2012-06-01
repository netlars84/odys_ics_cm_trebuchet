.class public Lcom/cyanogenmod/trebuchet/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/cyanogenmod/trebuchet/DragSource;
.implements Lcom/cyanogenmod/trebuchet/DropTarget;
.implements Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;


# static fields
.field private static sDefaultFolderName:Ljava/lang/String;

.field private static sHintText:Ljava/lang/String;


# instance fields
.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field protected mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

.field private mCurrentDragInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;

.field private mCurrentDragView:Landroid/view/View;

.field private mDeleteFolderOnDropCompleted:Z

.field protected mDragController:Lcom/cyanogenmod/trebuchet/DragController;

.field private mDragInProgress:Z

.field private mEmptyCell:[I

.field private mExpandDuration:I

.field private mFolderIcon:Lcom/cyanogenmod/trebuchet/FolderIcon;

.field mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

.field private mFolderNameHeight:I

.field private final mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconRect:Landroid/graphics/Rect;

.field private final mInflater:Landroid/view/LayoutInflater;

.field protected mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEditingName:Z

.field private mItemAddedBackToSelfViaIcon:Z

.field private mItemsInReadingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mItemsInvalidated:Z

.field protected mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

.field private mMaxCountX:I

.field private mMaxCountY:I

.field private mMaxNumItems:I

.field private mMode:I

.field private mNewSize:Landroid/graphics/Rect;

.field private mOnExitAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

.field mOnExitAlarmListener:Lcom/cyanogenmod/trebuchet/OnAlarmListener;

.field private mPreviousTargetCell:[I

.field private mRearrangeOnClose:Z

.field private mReorderAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

.field mReorderAlarmListener:Lcom/cyanogenmod/trebuchet/OnAlarmListener;

.field private mState:I

.field private mSuppressFolderDeletion:Z

.field mSuppressOnAdd:Z

.field private mTargetCell:[I

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const/4 v1, -0x1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mState:I

    .line 81
    iput v4, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMode:I

    .line 82
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mRearrangeOnClose:Z

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mNewSize:Landroid/graphics/Rect;

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mIconRect:Landroid/graphics/Rect;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    .line 91
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mItemsInvalidated:Z

    .line 94
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mSuppressOnAdd:Z

    .line 95
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mTargetCell:[I

    .line 96
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mPreviousTargetCell:[I

    .line 97
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mEmptyCell:[I

    .line 98
    new-instance v1, Lcom/cyanogenmod/trebuchet/Alarm;

    invoke-direct {v1}, Lcom/cyanogenmod/trebuchet/Alarm;-><init>()V

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mReorderAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    .line 99
    new-instance v1, Lcom/cyanogenmod/trebuchet/Alarm;

    invoke-direct {v1}, Lcom/cyanogenmod/trebuchet/Alarm;-><init>()V

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mOnExitAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    .line 101
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mTempRect:Landroid/graphics/Rect;

    .line 102
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mDragInProgress:Z

    .line 103
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 104
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mSuppressFolderDeletion:Z

    .line 105
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 108
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mIsEditingName:Z

    .line 183
    new-instance v1, Lcom/cyanogenmod/trebuchet/Folder$1;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/trebuchet/Folder$1;-><init>(Lcom/cyanogenmod/trebuchet/Folder;)V

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 572
    new-instance v1, Lcom/cyanogenmod/trebuchet/Folder$6;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/trebuchet/Folder$6;-><init>(Lcom/cyanogenmod/trebuchet/Folder;)V

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mReorderAlarmListener:Lcom/cyanogenmod/trebuchet/OnAlarmListener;

    .line 665
    new-instance v1, Lcom/cyanogenmod/trebuchet/Folder$7;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/trebuchet/Folder$7;-><init>(Lcom/cyanogenmod/trebuchet/Folder;)V

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mOnExitAlarmListener:Lcom/cyanogenmod/trebuchet/OnAlarmListener;

    .line 122
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInflater:Landroid/view/LayoutInflater;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/LauncherApplication;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->getIconCache()Lcom/cyanogenmod/trebuchet/IconCache;

    move-result-object v1

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    .line 126
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMaxCountX:I

    .line 128
    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMaxCountY:I

    .line 129
    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMaxNumItems:I

    .line 130
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMaxCountX:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMaxCountY:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMaxNumItems:I

    if-gez v1, :cond_1

    .line 131
    :cond_0
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getCellCountX()I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMaxCountX:I

    .line 132
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getCellCountY()I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMaxCountY:I

    .line 133
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMaxCountX:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMaxCountY:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMaxNumItems:I

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 139
    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mExpandDuration:I

    .line 141
    sget-object v1, Lcom/cyanogenmod/trebuchet/Folder;->sDefaultFolderName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 142
    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cyanogenmod/trebuchet/Folder;->sDefaultFolderName:Ljava/lang/String;

    .line 144
    :cond_2
    sget-object v1, Lcom/cyanogenmod/trebuchet/Folder;->sHintText:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 145
    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cyanogenmod/trebuchet/Folder;->sHintText:Ljava/lang/String;

    .line 147
    :cond_3
    check-cast p1, Lcom/cyanogenmod/trebuchet/Launcher;

    .end local p1
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    .line 151
    invoke-virtual {p0, v4}, Lcom/cyanogenmod/trebuchet/Folder;->setFocusableInTouchMode(Z)V

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/cyanogenmod/trebuchet/Folder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cyanogenmod/trebuchet/Folder;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/cyanogenmod/trebuchet/Folder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/cyanogenmod/trebuchet/Folder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Folder;->setFocusOnFirstChild()V

    return-void
.end method

.method static synthetic access$400(Lcom/cyanogenmod/trebuchet/Folder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Folder;->onCloseComplete()V

    return-void
.end method

.method static synthetic access$500(Lcom/cyanogenmod/trebuchet/Folder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cyanogenmod/trebuchet/Folder;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mEmptyCell:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/cyanogenmod/trebuchet/Folder;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/cyanogenmod/trebuchet/Folder;[I[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/Folder;->realTimeReorder([I[I)V

    return-void
.end method

.method private arrangeChildren(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 863
    const/4 v0, 0x2

    new-array v13, v0, [I

    .line 864
    .local v13, vacant:[I
    if-nez p1, :cond_0

    .line 865
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object p1

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->removeAllViews()V

    .line 869
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 870
    .local v12, v:Landroid/view/View;
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0, v13, v10, v10}, Lcom/cyanogenmod/trebuchet/CellLayout;->getVacantCell([III)Z

    .line 871
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 872
    .local v9, lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    aget v0, v13, v4

    iput v0, v9, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    .line 873
    aget v0, v13, v10

    iput v0, v9, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    .line 874
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 875
    .local v1, info:Lcom/cyanogenmod/trebuchet/ItemInfo;
    iget v0, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    aget v2, v13, v4

    if-ne v0, v2, :cond_1

    iget v0, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    aget v2, v13, v10

    if-eq v0, v2, :cond_2

    .line 876
    :cond_1
    aget v0, v13, v4

    iput v0, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    .line 877
    aget v0, v13, v10

    iput v0, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    .line 878
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-wide v2, v2, Lcom/cyanogenmod/trebuchet/FolderInfo;->id:J

    iget v5, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    iget v6, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    invoke-static/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;JIII)V

    .line 881
    :cond_2
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    const/4 v7, -0x1

    iget-wide v2, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->id:J

    long-to-int v8, v2

    move-object v6, v12

    invoke-virtual/range {v5 .. v10}, Lcom/cyanogenmod/trebuchet/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;Z)Z

    goto :goto_0

    .line 883
    .end local v1           #info:Lcom/cyanogenmod/trebuchet/ItemInfo;
    .end local v9           #lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    .end local v12           #v:Landroid/view/View;
    :cond_3
    iput-boolean v10, p0, Lcom/cyanogenmod/trebuchet/Folder;->mItemsInvalidated:Z

    .line 884
    return-void
.end method

.method private centerAboutIcon()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f80

    .line 780
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;

    .line 782
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getDesiredWidth()I

    move-result v2

    add-int v3, v1, v2

    .line 783
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getDesiredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderNameHeight:I

    add-int v4, v1, v2

    .line 785
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    const v2, 0x7f0e001e

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/DragLayer;

    .line 787
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderIcon:Lcom/cyanogenmod/trebuchet/FolderIcon;

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Folder;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v5}, Lcom/cyanogenmod/trebuchet/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 789
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 790
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Folder;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    .line 791
    div-int/lit8 v6, v3, 0x2

    sub-int v6, v2, v6

    .line 792
    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v5, v2

    .line 795
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getCurrentDropLayout()Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v2

    .line 796
    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildrenLayout()Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-result-object v2

    .line 797
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 798
    invoke-virtual {v1, v2, v7}, Lcom/cyanogenmod/trebuchet/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 801
    iget v1, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v2, v8

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 803
    iget v2, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v8, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 806
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-lt v3, v8, :cond_0

    .line 807
    iget v1, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v8, v3

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v1, v8

    .line 809
    :cond_0
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-lt v4, v8, :cond_1

    .line 810
    iget v2, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    .line 813
    :cond_1
    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v1

    add-int/2addr v6, v7

    .line 814
    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v5, v2

    add-int/2addr v5, v7

    .line 815
    int-to-float v7, v6

    invoke-virtual {p0, v7}, Lcom/cyanogenmod/trebuchet/Folder;->setPivotX(F)V

    .line 816
    int-to-float v7, v5

    invoke-virtual {p0, v7}, Lcom/cyanogenmod/trebuchet/Folder;->setPivotY(F)V

    .line 817
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderIcon:Lcom/cyanogenmod/trebuchet/FolderIcon;

    invoke-virtual {v7}, Lcom/cyanogenmod/trebuchet/FolderIcon;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    int-to-float v6, v6

    mul-float/2addr v6, v10

    int-to-float v8, v3

    div-float/2addr v6, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 819
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderIcon:Lcom/cyanogenmod/trebuchet/FolderIcon;

    invoke-virtual {v7}, Lcom/cyanogenmod/trebuchet/FolderIcon;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    int-to-float v5, v5

    mul-float/2addr v5, v10

    int-to-float v8, v4

    div-float/2addr v5, v8

    mul-float/2addr v5, v7

    float-to-int v5, v5

    .line 821
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderIcon:Lcom/cyanogenmod/trebuchet/FolderIcon;

    int-to-float v6, v6

    invoke-virtual {v7, v6}, Lcom/cyanogenmod/trebuchet/FolderIcon;->setPivotX(F)V

    .line 822
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderIcon:Lcom/cyanogenmod/trebuchet/FolderIcon;

    int-to-float v5, v5

    invoke-virtual {v6, v5}, Lcom/cyanogenmod/trebuchet/FolderIcon;->setPivotY(F)V

    .line 824
    iget v5, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 825
    iput v3, v0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->width:I

    .line 826
    iput v4, v0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->height:I

    .line 827
    iput v1, v0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->x:I

    .line 828
    iput v2, v0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->y:I

    .line 832
    :goto_0
    return-void

    .line 830
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mNewSize:Landroid/graphics/Rect;

    add-int/2addr v3, v1

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method static fromXml(Landroid/content/Context;)Lcom/cyanogenmod/trebuchet/Folder;
    .locals 3
    .parameter "context"

    .prologue
    .line 365
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/Folder;

    return-object v0
.end method

.method private getDragViewVisualCenter(IIIILcom/cyanogenmod/trebuchet/DragView;[F)[F
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "recycle"

    .prologue
    .line 645
    if-nez p6, :cond_0

    .line 646
    const/4 v3, 0x2

    new-array v1, v3, [F

    .line 655
    .local v1, res:[F
    :goto_0
    sub-int v0, p1, p3

    .line 656
    .local v0, left:I
    sub-int v2, p2, p4

    .line 659
    .local v2, top:I
    const/4 v3, 0x0

    invoke-virtual {p5}, Lcom/cyanogenmod/trebuchet/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    aput v4, v1, v3

    .line 660
    const/4 v3, 0x1

    invoke-virtual {p5}, Lcom/cyanogenmod/trebuchet/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    int-to-float v4, v4

    aput v4, v1, v3

    .line 662
    return-object v1

    .line 648
    .end local v0           #left:I
    .end local v1           #res:[F
    .end local v2           #top:I
    :cond_0
    move-object v1, p6

    .restart local v1       #res:[F
    goto :goto_0
.end method

.method private getViewForInfo(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)Landroid/view/View;
    .locals 4
    .parameter "item"

    .prologue
    .line 1022
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->getCountY()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1023
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->getCountX()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1024
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v3, v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 1025
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1030
    .end local v0           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_2
    return-object v2

    .line 1023
    .restart local v0       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1022
    .end local v2           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1030
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private onCloseComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 895
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/DragLayer;

    .line 896
    .local v0, parent:Lcom/cyanogenmod/trebuchet/DragLayer;
    invoke-virtual {v0, p0}, Lcom/cyanogenmod/trebuchet/DragLayer;->removeView(Landroid/view/View;)V

    .line 897
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    invoke-virtual {v1, p0}, Lcom/cyanogenmod/trebuchet/DragController;->removeDropTarget(Lcom/cyanogenmod/trebuchet/DropTarget;)V

    .line 898
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->clearFocus()V

    .line 899
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderIcon:Lcom/cyanogenmod/trebuchet/FolderIcon;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->requestFocus()Z

    .line 901
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mRearrangeOnClose:Z

    if-eqz v1, :cond_0

    .line 902
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getItemCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/cyanogenmod/trebuchet/Folder;->setupContentForNumItems(I)V

    .line 903
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mRearrangeOnClose:Z

    .line 905
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getItemCount()I

    move-result v1

    if-gt v1, v3, :cond_1

    .line 906
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mDragInProgress:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mSuppressFolderDeletion:Z

    if-nez v1, :cond_2

    .line 907
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Folder;->replaceFolderWithFinalItem()V

    .line 912
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mSuppressFolderDeletion:Z

    .line 913
    return-void

    .line 908
    :cond_2
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mDragInProgress:Z

    if-eqz v1, :cond_1

    .line 909
    iput-boolean v3, p0, Lcom/cyanogenmod/trebuchet/Folder;->mDeleteFolderOnDropCompleted:Z

    goto :goto_0
.end method

.method private positionAndSizeAsIcon()V
    .locals 5

    .prologue
    const v3, 0x3f4ccccd

    const/4 v4, 0x0

    .line 373
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/cyanogenmod/trebuchet/DragLayer;

    if-nez v1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;

    .line 377
    .local v0, lp:Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 378
    invoke-virtual {p0, v3}, Lcom/cyanogenmod/trebuchet/Folder;->setScaleX(F)V

    .line 379
    invoke-virtual {p0, v3}, Lcom/cyanogenmod/trebuchet/Folder;->setScaleY(F)V

    .line 380
    invoke-virtual {p0, v4}, Lcom/cyanogenmod/trebuchet/Folder;->setAlpha(F)V

    .line 389
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mState:I

    goto :goto_0

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderIcon:Lcom/cyanogenmod/trebuchet/FolderIcon;

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Folder;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/cyanogenmod/trebuchet/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 383
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->width:I

    .line 384
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->height:I

    .line 385
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mIconRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->x:I

    .line 386
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mIconRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->y:I

    .line 387
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v1, v4}, Lcom/cyanogenmod/trebuchet/CellLayout;->setAlpha(F)V

    goto :goto_1
.end method

.method private realTimeReorder([I[I)V
    .locals 18
    .parameter "empty"
    .parameter "target"

    .prologue
    .line 587
    const/4 v8, 0x0

    .line 588
    .local v8, delay:I
    const/high16 v9, 0x41f0

    .line 589
    .local v9, delayAmount:F
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Folder;->readingOrderGreaterThan([I[I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 590
    const/4 v3, 0x0

    aget v3, p1, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->getCountX()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v3, v5, :cond_1

    const/4 v13, 0x1

    .line 591
    .local v13, wrap:Z
    :goto_0
    if-eqz v13, :cond_2

    const/4 v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v12, v3, 0x1

    .line 592
    .local v12, startY:I
    :goto_1
    move v15, v12

    .local v15, y:I
    :goto_2
    const/4 v3, 0x1

    aget v3, p2, v3

    if-gt v15, v3, :cond_d

    .line 593
    const/4 v3, 0x1

    aget v3, p1, v3

    if-ne v15, v3, :cond_3

    const/4 v3, 0x0

    aget v3, p1, v3

    add-int/lit8 v11, v3, 0x1

    .line 594
    .local v11, startX:I
    :goto_3
    const/4 v3, 0x1

    aget v3, p2, v3

    if-ge v15, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->getCountX()I

    move-result v3

    add-int/lit8 v10, v3, -0x1

    .line 595
    .local v10, endX:I
    :goto_4
    move v14, v11

    .local v14, x:I
    :goto_5
    if-gt v14, v10, :cond_5

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v3, v14, v15}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 597
    .local v4, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    const/4 v5, 0x0

    aget v5, p1, v5

    const/4 v6, 0x1

    aget v6, p1, v6

    const/16 v7, 0xe6

    invoke-virtual/range {v3 .. v8}, Lcom/cyanogenmod/trebuchet/CellLayout;->animateChildToPosition(Landroid/view/View;IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    const/4 v3, 0x0

    aput v14, p1, v3

    .line 600
    const/4 v3, 0x1

    aput v15, p1, v3

    .line 601
    int-to-float v3, v8

    add-float/2addr v3, v9

    float-to-int v8, v3

    .line 602
    float-to-double v5, v9

    const-wide v16, 0x3feccccccccccccdL

    mul-double v5, v5, v16

    double-to-float v9, v5

    .line 595
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 590
    .end local v4           #v:Landroid/view/View;
    .end local v10           #endX:I
    .end local v11           #startX:I
    .end local v12           #startY:I
    .end local v13           #wrap:Z
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 591
    .restart local v13       #wrap:Z
    :cond_2
    const/4 v3, 0x1

    aget v12, p1, v3

    goto :goto_1

    .line 593
    .restart local v12       #startY:I
    .restart local v15       #y:I
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 594
    .restart local v11       #startX:I
    :cond_4
    const/4 v3, 0x0

    aget v10, p2, v3

    goto :goto_4

    .line 592
    .restart local v10       #endX:I
    .restart local v14       #x:I
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 607
    .end local v10           #endX:I
    .end local v11           #startX:I
    .end local v12           #startY:I
    .end local v13           #wrap:Z
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_6
    const/4 v3, 0x0

    aget v3, p1, v3

    if-nez v3, :cond_8

    const/4 v13, 0x1

    .line 608
    .restart local v13       #wrap:Z
    :goto_6
    if-eqz v13, :cond_9

    const/4 v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v12, v3, -0x1

    .line 609
    .restart local v12       #startY:I
    :goto_7
    move v15, v12

    .restart local v15       #y:I
    :goto_8
    const/4 v3, 0x1

    aget v3, p2, v3

    if-lt v15, v3, :cond_d

    .line 610
    const/4 v3, 0x1

    aget v3, p1, v3

    if-ne v15, v3, :cond_a

    const/4 v3, 0x0

    aget v3, p1, v3

    add-int/lit8 v11, v3, -0x1

    .line 611
    .restart local v11       #startX:I
    :goto_9
    const/4 v3, 0x1

    aget v3, p2, v3

    if-le v15, v3, :cond_b

    const/4 v10, 0x0

    .line 612
    .restart local v10       #endX:I
    :goto_a
    move v14, v11

    .restart local v14       #x:I
    :goto_b
    if-lt v14, v10, :cond_c

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v3, v14, v15}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 614
    .restart local v4       #v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    const/4 v5, 0x0

    aget v5, p1, v5

    const/4 v6, 0x1

    aget v6, p1, v6

    const/16 v7, 0xe6

    invoke-virtual/range {v3 .. v8}, Lcom/cyanogenmod/trebuchet/CellLayout;->animateChildToPosition(Landroid/view/View;IIII)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 616
    const/4 v3, 0x0

    aput v14, p1, v3

    .line 617
    const/4 v3, 0x1

    aput v15, p1, v3

    .line 618
    int-to-float v3, v8

    add-float/2addr v3, v9

    float-to-int v8, v3

    .line 619
    float-to-double v5, v9

    const-wide v16, 0x3feccccccccccccdL

    mul-double v5, v5, v16

    double-to-float v9, v5

    .line 612
    :cond_7
    add-int/lit8 v14, v14, -0x1

    goto :goto_b

    .line 607
    .end local v4           #v:Landroid/view/View;
    .end local v10           #endX:I
    .end local v11           #startX:I
    .end local v12           #startY:I
    .end local v13           #wrap:Z
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_8
    const/4 v13, 0x0

    goto :goto_6

    .line 608
    .restart local v13       #wrap:Z
    :cond_9
    const/4 v3, 0x1

    aget v12, p1, v3

    goto :goto_7

    .line 610
    .restart local v12       #startY:I
    .restart local v15       #y:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->getCountX()I

    move-result v3

    add-int/lit8 v11, v3, -0x1

    goto :goto_9

    .line 611
    .restart local v11       #startX:I
    :cond_b
    const/4 v3, 0x0

    aget v10, p2, v3

    goto :goto_a

    .line 609
    .restart local v10       #endX:I
    .restart local v14       #x:I
    :cond_c
    add-int/lit8 v15, v15, -0x1

    goto :goto_8

    .line 624
    .end local v10           #endX:I
    .end local v11           #startX:I
    .end local v14           #x:I
    :cond_d
    return-void
.end method

.method private replaceFolderWithFinalItem()V
    .locals 12

    .prologue
    .line 916
    const/4 v1, 0x0

    .line 918
    .local v1, finalItem:Lcom/cyanogenmod/trebuchet/ItemInfo;
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 919
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #finalItem:Lcom/cyanogenmod/trebuchet/ItemInfo;
    check-cast v1, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 923
    .restart local v1       #finalItem:Lcom/cyanogenmod/trebuchet/ItemInfo;
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-wide v4, v2, Lcom/cyanogenmod/trebuchet/FolderInfo;->container:J

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget v2, v2, Lcom/cyanogenmod/trebuchet/FolderInfo;->screen:I

    invoke-virtual {v0, v4, v5, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getCellLayout(JI)Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v11

    .line 924
    .local v11, cellLayout:Lcom/cyanogenmod/trebuchet/CellLayout;
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderIcon:Lcom/cyanogenmod/trebuchet/FolderIcon;

    invoke-virtual {v11, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->removeView(Landroid/view/View;)V

    .line 925
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderIcon:Lcom/cyanogenmod/trebuchet/FolderIcon;

    instance-of v0, v0, Lcom/cyanogenmod/trebuchet/DropTarget;

    if-eqz v0, :cond_1

    .line 926
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderIcon:Lcom/cyanogenmod/trebuchet/FolderIcon;

    check-cast v0, Lcom/cyanogenmod/trebuchet/DropTarget;

    invoke-virtual {v2, v0}, Lcom/cyanogenmod/trebuchet/DragController;->removeDropTarget(Lcom/cyanogenmod/trebuchet/DropTarget;)V

    .line 928
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->removeFolder(Lcom/cyanogenmod/trebuchet/FolderInfo;)V

    .line 930
    if-eqz v1, :cond_2

    .line 931
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-wide v2, v2, Lcom/cyanogenmod/trebuchet/FolderInfo;->container:J

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget v4, v4, Lcom/cyanogenmod/trebuchet/FolderInfo;->screen:I

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget v5, v5, Lcom/cyanogenmod/trebuchet/FolderInfo;->cellX:I

    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget v6, v6, Lcom/cyanogenmod/trebuchet/FolderInfo;->cellY:I

    invoke-static/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;JIII)V

    .line 934
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    invoke-static {v0, v2}, Lcom/cyanogenmod/trebuchet/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;)V

    .line 937
    if-eqz v1, :cond_3

    .line 938
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    const v2, 0x7f030003

    check-cast v1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .end local v1           #finalItem:Lcom/cyanogenmod/trebuchet/ItemInfo;
    invoke-virtual {v0, v2, v11, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/cyanogenmod/trebuchet/ShortcutInfo;)Landroid/view/View;

    move-result-object v3

    .line 941
    .local v3, child:Landroid/view/View;
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v2

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-wide v4, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->container:J

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget v6, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->screen:I

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget v7, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->cellX:I

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget v8, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->cellY:I

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget v9, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->spanX:I

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget v10, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->spanY:I

    invoke-virtual/range {v2 .. v10}, Lcom/cyanogenmod/trebuchet/Workspace;->addInScreen(Landroid/view/View;JIIIII)V

    .line 944
    .end local v3           #child:Landroid/view/View;
    :cond_3
    return-void
.end method

.method private sendCustomAccessibilityEvent(ILjava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "text"

    .prologue
    .line 449
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 451
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Folder;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 452
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 455
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private setFocusOnFirstChild()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 458
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v1, v2, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 459
    .local v0, firstChild:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 462
    :cond_0
    return-void
.end method

.method private setupContentDimensions(I)V
    .locals 8
    .parameter "count"

    .prologue
    const/4 v6, 0x0

    .line 747
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 749
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v7}, Lcom/cyanogenmod/trebuchet/CellLayout;->getCountX()I

    move-result v0

    .line 750
    .local v0, countX:I
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v7}, Lcom/cyanogenmod/trebuchet/CellLayout;->getCountY()I

    move-result v1

    .line 751
    .local v1, countY:I
    const/4 v2, 0x0

    .line 753
    .local v2, done:Z
    :goto_0
    if-nez v2, :cond_7

    .line 754
    move v4, v0

    .line 755
    .local v4, oldCountX:I
    move v5, v1

    .line 756
    .local v5, oldCountY:I
    mul-int v7, v0, v1

    if-ge v7, p1, :cond_4

    .line 758
    if-le v0, v1, :cond_0

    iget v7, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMaxCountY:I

    if-ne v1, v7, :cond_3

    :cond_0
    iget v7, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMaxCountX:I

    if-ge v0, v7, :cond_3

    .line 759
    add-int/lit8 v0, v0, 0x1

    .line 763
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 769
    :cond_2
    :goto_2
    if-ne v0, v4, :cond_6

    if-ne v1, v5, :cond_6

    const/4 v2, 0x1

    .line 770
    :goto_3
    goto :goto_0

    .line 760
    :cond_3
    iget v7, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMaxCountY:I

    if-ge v1, v7, :cond_1

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 764
    :cond_4
    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v7, v0

    if-lt v7, p1, :cond_5

    if-lt v1, v0, :cond_5

    .line 765
    add-int/lit8 v7, v1, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 766
    :cond_5
    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v7, v1

    if-lt v7, p1, :cond_2

    .line 767
    add-int/lit8 v7, v0, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_6
    move v2, v6

    .line 769
    goto :goto_3

    .line 771
    .end local v4           #oldCountX:I
    .end local v5           #oldCountY:I
    :cond_7
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v6, v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setGridSize(II)V

    .line 772
    invoke-direct {p0, v3}, Lcom/cyanogenmod/trebuchet/Folder;->arrangeChildren(Ljava/util/ArrayList;)V

    .line 773
    return-void
.end method

.method private setupContentForNumItems(I)V
    .locals 2
    .parameter "count"

    .prologue
    const/4 v1, 0x0

    .line 835
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/Folder;->setupContentDimensions(I)V

    .line 837
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;

    .line 838
    .local v0, lp:Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;
    if-nez v0, :cond_0

    .line 839
    new-instance v0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;

    .end local v0           #lp:Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;
    invoke-direct {v0, v1, v1}, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;-><init>(II)V

    .line 840
    .restart local v0       #lp:Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->customPosition:Z

    .line 841
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    :cond_0
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Folder;->centerAboutIcon()V

    .line 844
    return-void
.end method

.method private updateItemLocationsInDatabase()V
    .locals 10

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v8

    .line 725
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 726
    .local v9, v:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 727
    .local v1, info:Lcom/cyanogenmod/trebuchet/ItemInfo;
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-wide v2, v2, Lcom/cyanogenmod/trebuchet/FolderInfo;->id:J

    const/4 v4, 0x0

    iget v5, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    iget v6, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    invoke-static/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;JIII)V

    goto :goto_0

    .line 730
    .end local v1           #info:Lcom/cyanogenmod/trebuchet/ItemInfo;
    .end local v9           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private updateTextViewFocus()V
    .locals 3

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 950
    .local v0, lastChild:Landroid/view/View;
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Folder;->getItemAt(I)Landroid/view/View;

    .line 951
    if-eqz v0, :cond_0

    .line 952
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/FolderEditText;->setNextFocusDownId(I)V

    .line 953
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/FolderEditText;->setNextFocusRightId(I)V

    .line 954
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/FolderEditText;->setNextFocusLeftId(I)V

    .line 955
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/FolderEditText;->setNextFocusUpId(I)V

    .line 957
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)Z
    .locals 4
    .parameter "d"

    .prologue
    const/4 v2, 0x1

    .line 519
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 520
    .local v0, item:Lcom/cyanogenmod/trebuchet/ItemInfo;
    iget v1, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->itemType:I

    .line 521
    .local v1, itemType:I
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->isFull()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public animateClosed()V
    .locals 14

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v10, v10, Lcom/cyanogenmod/trebuchet/DragLayer;

    if-nez v10, :cond_0

    .line 509
    :goto_0
    return-void

    .line 468
    :cond_0
    iget v10, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 469
    const-string v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 470
    .local v0, alpha:Landroid/animation/PropertyValuesHolder;
    const-string v10, "scaleX"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const v13, 0x3f666666

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 471
    .local v5, scaleX:Landroid/animation/PropertyValuesHolder;
    const-string v10, "scaleY"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const v13, 0x3f666666

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 472
    .local v6, scaleY:Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-static {p0, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 494
    .end local v5           #scaleX:Landroid/animation/PropertyValuesHolder;
    .end local v6           #scaleY:Landroid/animation/PropertyValuesHolder;
    .local v4, oa:Landroid/animation/ObjectAnimator;
    :goto_1
    new-instance v10, Lcom/cyanogenmod/trebuchet/Folder$5;

    invoke-direct {v10, p0}, Lcom/cyanogenmod/trebuchet/Folder$5;-><init>(Lcom/cyanogenmod/trebuchet/Folder;)V

    invoke-virtual {v4, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 507
    iget v10, p0, Lcom/cyanogenmod/trebuchet/Folder;->mExpandDuration:I

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 508
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 474
    .end local v0           #alpha:Landroid/animation/PropertyValuesHolder;
    .end local v4           #oa:Landroid/animation/ObjectAnimator;
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;

    .line 476
    .local v3, lp:Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;
    const-string v10, "width"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/cyanogenmod/trebuchet/Folder;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 477
    .local v7, width:Landroid/animation/PropertyValuesHolder;
    const-string v10, "height"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/cyanogenmod/trebuchet/Folder;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 478
    .local v2, height:Landroid/animation/PropertyValuesHolder;
    const-string v10, "x"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/cyanogenmod/trebuchet/Folder;->mIconRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 479
    .local v8, x:Landroid/animation/PropertyValuesHolder;
    const-string v10, "y"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/cyanogenmod/trebuchet/Folder;->mIconRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 480
    .local v9, y:Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x4

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    const/4 v11, 0x2

    aput-object v8, v10, v11

    const/4 v11, 0x3

    aput-object v9, v10, v11

    invoke-static {v3, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 481
    .restart local v4       #oa:Landroid/animation/ObjectAnimator;
    new-instance v10, Lcom/cyanogenmod/trebuchet/Folder$4;

    invoke-direct {v10, p0}, Lcom/cyanogenmod/trebuchet/Folder$4;-><init>(Lcom/cyanogenmod/trebuchet/Folder;)V

    invoke-virtual {v4, v10}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 487
    const-string v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 488
    .restart local v0       #alpha:Landroid/animation/PropertyValuesHolder;
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    const/4 v11, 0x1

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-static {v10, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 489
    .local v1, alphaOa:Landroid/animation/ObjectAnimator;
    iget v10, p0, Lcom/cyanogenmod/trebuchet/Folder;->mExpandDuration:I

    int-to-long v10, v10

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 490
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v11, 0x4000

    invoke-direct {v10, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 491
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1
.end method

.method public animateOpen()V
    .locals 14

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Folder;->positionAndSizeAsIcon()V

    .line 395
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v10, v10, Lcom/cyanogenmod/trebuchet/DragLayer;

    if-nez v10, :cond_0

    .line 446
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;

    .line 400
    .local v3, lp:Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Folder;->centerAboutIcon()V

    .line 401
    iget v10, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 402
    const-string v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 403
    .local v0, alpha:Landroid/animation/PropertyValuesHolder;
    const-string v10, "scaleX"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 404
    .local v5, scaleX:Landroid/animation/PropertyValuesHolder;
    const-string v10, "scaleY"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 405
    .local v6, scaleY:Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-static {p0, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 425
    .end local v5           #scaleX:Landroid/animation/PropertyValuesHolder;
    .end local v6           #scaleY:Landroid/animation/PropertyValuesHolder;
    .local v4, oa:Landroid/animation/ObjectAnimator;
    :goto_1
    new-instance v10, Lcom/cyanogenmod/trebuchet/Folder$3;

    invoke-direct {v10, p0}, Lcom/cyanogenmod/trebuchet/Folder$3;-><init>(Lcom/cyanogenmod/trebuchet/Folder;)V

    invoke-virtual {v4, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 444
    iget v10, p0, Lcom/cyanogenmod/trebuchet/Folder;->mExpandDuration:I

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 445
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 407
    .end local v0           #alpha:Landroid/animation/PropertyValuesHolder;
    .end local v4           #oa:Landroid/animation/ObjectAnimator;
    :cond_1
    const-string v10, "width"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/cyanogenmod/trebuchet/Folder;->mNewSize:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 408
    .local v7, width:Landroid/animation/PropertyValuesHolder;
    const-string v10, "height"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/cyanogenmod/trebuchet/Folder;->mNewSize:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 409
    .local v2, height:Landroid/animation/PropertyValuesHolder;
    const-string v10, "x"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/cyanogenmod/trebuchet/Folder;->mNewSize:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 410
    .local v8, x:Landroid/animation/PropertyValuesHolder;
    const-string v10, "y"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/cyanogenmod/trebuchet/Folder;->mNewSize:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 411
    .local v9, y:Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x4

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    const/4 v11, 0x2

    aput-object v8, v10, v11

    const/4 v11, 0x3

    aput-object v9, v10, v11

    invoke-static {v3, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 412
    .restart local v4       #oa:Landroid/animation/ObjectAnimator;
    new-instance v10, Lcom/cyanogenmod/trebuchet/Folder$2;

    invoke-direct {v10, p0}, Lcom/cyanogenmod/trebuchet/Folder$2;-><init>(Lcom/cyanogenmod/trebuchet/Folder;)V

    invoke-virtual {v4, v10}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 418
    const-string v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 419
    .restart local v0       #alpha:Landroid/animation/PropertyValuesHolder;
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    const/4 v11, 0x1

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-static {v10, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 420
    .local v1, alphaOa:Landroid/animation/ObjectAnimator;
    iget v10, p0, Lcom/cyanogenmod/trebuchet/Folder;->mExpandDuration:I

    int-to-long v10, v10

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 421
    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v11, 0x4000

    invoke-direct {v10, v11}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 422
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1
.end method

.method bind(Lcom/cyanogenmod/trebuchet/FolderInfo;)V
    .locals 8
    .parameter "info"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    .line 323
    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 324
    .local v1, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ShortcutInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v5, overflow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ShortcutInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/cyanogenmod/trebuchet/Folder;->setupContentForNumItems(I)V

    .line 326
    const/4 v2, 0x0

    .line 327
    .local v2, count:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 328
    .local v0, child:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Folder;->createAndAddShortcut(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 329
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    .end local v0           #child:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :cond_1
    invoke-direct {p0, v2}, Lcom/cyanogenmod/trebuchet/Folder;->setupContentForNumItems(I)V

    .line 341
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 342
    .local v4, item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    invoke-virtual {v6, v4}, Lcom/cyanogenmod/trebuchet/FolderInfo;->remove(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V

    .line 343
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-static {v6, v4}, Lcom/cyanogenmod/trebuchet/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;)V

    goto :goto_1

    .line 346
    .end local v4           #item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/cyanogenmod/trebuchet/Folder;->mItemsInvalidated:Z

    .line 347
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Folder;->updateTextViewFocus()V

    .line 348
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    invoke-virtual {v6, p0}, Lcom/cyanogenmod/trebuchet/FolderInfo;->addListener(Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;)V

    .line 350
    sget-object v6, Lcom/cyanogenmod/trebuchet/Folder;->sDefaultFolderName:Ljava/lang/String;

    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-object v7, v7, Lcom/cyanogenmod/trebuchet/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 351
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-object v7, v7, Lcom/cyanogenmod/trebuchet/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/cyanogenmod/trebuchet/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :goto_2
    return-void

    .line 353
    :cond_3
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/cyanogenmod/trebuchet/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public completeDragExit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 672
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->closeFolder()V

    .line 673
    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mCurrentDragInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 674
    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mCurrentDragView:Landroid/view/View;

    .line 675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mSuppressOnAdd:Z

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mRearrangeOnClose:Z

    .line 677
    return-void
.end method

.method protected createAndAddShortcut(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 538
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030003

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 540
    .local v1, textView:Landroid/widget/TextView;
    new-instance v2, Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Folder;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    invoke-virtual {p1, v3}, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->getIcon(Lcom/cyanogenmod/trebuchet/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 542
    iget-object v2, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 545
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 552
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    iget v3, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellX:I

    iget v6, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellY:I

    invoke-virtual {v2, v3, v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    iget v2, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellX:I

    if-ltz v2, :cond_0

    iget v2, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellY:I

    if-ltz v2, :cond_0

    iget v2, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellX:I

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->getCountX()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget v2, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellY:I

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->getCountY()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 554
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Folder;->findAndSetEmptyCells(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    move v5, v0

    .line 563
    :goto_0
    return v5

    .line 559
    :cond_1
    new-instance v4, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    iget v0, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellX:I

    iget v2, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellY:I

    iget v3, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->spanX:I

    iget v6, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->spanY:I

    invoke-direct {v4, v0, v2, v3, v6}, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;-><init>(IIII)V

    .line 561
    .local v4, lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    new-instance v0, Lcom/cyanogenmod/trebuchet/FolderKeyEventListener;

    invoke-direct {v0}, Lcom/cyanogenmod/trebuchet/FolderKeyEventListener;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 562
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    const/4 v2, -0x1

    iget-wide v6, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->id:J

    long-to-int v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;Z)Z

    goto :goto_0
.end method

.method public dismissEditingName()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 251
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Folder;->doneEditingFolderName(Z)V

    .line 252
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public doneEditingFolderName(Z)V
    .locals 5
    .parameter "commit"

    .prologue
    const/4 v4, 0x0

    .line 255
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    sget-object v2, Lcom/cyanogenmod/trebuchet/Folder;->sHintText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, newTitle:Ljava/lang/String;
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen;->getHideIconLabels(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    invoke-static {v1, v2}, Lcom/cyanogenmod/trebuchet/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;)V

    .line 264
    if-eqz p1, :cond_1

    .line 265
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContext:Landroid/content/Context;

    const v3, 0x7f090061

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/cyanogenmod/trebuchet/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->requestFocus()Z

    .line 272
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v4, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 273
    iput-boolean v4, p0, Lcom/cyanogenmod/trebuchet/Folder;->mIsEditingName:Z

    .line 274
    return-void
.end method

.method protected findAndSetEmptyCells(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 527
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 528
    .local v0, emptyCell:[I
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    iget v4, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->spanX:I

    iget v5, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->spanY:I

    invoke-virtual {v3, v0, v4, v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->findCellForSpan([III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    aget v2, v0, v2

    iput v2, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellX:I

    .line 530
    aget v2, v0, v1

    iput v2, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellY:I

    .line 533
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getDropTargetDelegate(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)Lcom/cyanogenmod/trebuchet/DropTarget;
    .locals 1
    .parameter "d"

    .prologue
    .line 743
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditTextRegion()Landroid/view/View;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    return-object v0
.end method

.method getInfo()Lcom/cyanogenmod/trebuchet/FolderInfo;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    return-object v0
.end method

.method public getItemAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 891
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildrenLayout()Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildrenLayout()Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemsInReadingOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1041
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Folder;->getItemsInReadingOrder(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItemsInReadingOrder(Z)Ljava/util/ArrayList;
    .locals 5
    .parameter "includeCurrentDragItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1045
    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/Folder;->mItemsInvalidated:Z

    if-eqz v4, :cond_4

    .line 1046
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1047
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/CellLayout;->getCountY()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1048
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/CellLayout;->getCountX()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1049
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v4, v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 1050
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1051
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 1052
    .local v1, info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Folder;->mCurrentDragInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    if-ne v1, v4, :cond_0

    if-eqz p1, :cond_1

    .line 1053
    :cond_0
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    .end local v1           #info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1047
    .end local v3           #v:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1058
    .end local v0           #i:I
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/cyanogenmod/trebuchet/Folder;->mItemsInvalidated:Z

    .line 1060
    .end local v2           #j:I
    :cond_4
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object v4
.end method

.method public getLocationInDragLayer([I)V
    .locals 1
    .parameter "loc"

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/cyanogenmod/trebuchet/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 1065
    return-void
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x1

    return v0
.end method

.method public isEditingName()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mIsEditingName:Z

    return v0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mMaxNumItems:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDrop()V
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_0

    .line 734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 736
    :cond_0
    return-void
.end method

.method public onAdd(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V
    .locals 7
    .parameter "item"

    .prologue
    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mItemsInvalidated:Z

    .line 993
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mSuppressOnAdd:Z

    if-eqz v0, :cond_0

    .line 1002
    :goto_0
    return-void

    .line 994
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Folder;->findAndSetEmptyCells(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 996
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/cyanogenmod/trebuchet/Folder;->setupContentForNumItems(I)V

    .line 997
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Folder;->findAndSetEmptyCells(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)Z

    .line 999
    :cond_1
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Folder;->createAndAddShortcut(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)Z

    .line 1000
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-wide v2, v1, Lcom/cyanogenmod/trebuchet/FolderInfo;->id:J

    const/4 v4, 0x0

    iget v5, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellX:I

    iget v6, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellY:I

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;JIII)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 202
    .local v2, tag:Ljava/lang/Object;
    instance-of v3, v2, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 204
    check-cast v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 205
    .local v0, item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 206
    .local v1, pos:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 207
    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    new-instance v4, Landroid/graphics/Rect;

    aget v5, v1, v7

    aget v6, v1, v9

    aget v7, v1, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v1, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 209
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 211
    .end local v0           #item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .end local v1           #pos:[I
    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, -0x1

    .line 567
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mPreviousTargetCell:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 568
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mPreviousTargetCell:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 569
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mOnExitAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Alarm;->cancelAlarm()V

    .line 570
    return-void
.end method

.method public onDragExit(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 3
    .parameter "d"

    .prologue
    .line 682
    iget-boolean v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mOnExitAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mOnExitAlarmListener:Lcom/cyanogenmod/trebuchet/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Alarm;->setOnAlarmListener(Lcom/cyanogenmod/trebuchet/OnAlarmListener;)V

    .line 684
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mOnExitAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Alarm;->setAlarm(J)V

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mReorderAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Alarm;->cancelAlarm()V

    .line 687
    return-void
.end method

.method public onDragOver(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 10
    .parameter "d"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 627
    iget v1, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->x:I

    iget v2, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->y:I

    iget v3, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->xOffset:I

    iget v4, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->yOffset:I

    iget-object v5, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/Folder;->getDragViewVisualCenter(IIIILcom/cyanogenmod/trebuchet/DragView;[F)[F

    move-result-object v7

    .line 628
    .local v7, r:[F
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    aget v1, v7, v9

    float-to-int v1, v1

    aget v2, v7, v8

    float-to-int v2, v2

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Folder;->mTargetCell:[I

    move v3, v8

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mTargetCell:[I

    .line 630
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mTargetCell:[I

    aget v0, v0, v9

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mPreviousTargetCell:[I

    aget v1, v1, v9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mTargetCell:[I

    aget v0, v0, v8

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mPreviousTargetCell:[I

    aget v1, v1, v8

    if-eq v0, v1, :cond_1

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mReorderAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Alarm;->cancelAlarm()V

    .line 632
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mReorderAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mReorderAlarmListener:Lcom/cyanogenmod/trebuchet/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Alarm;->setOnAlarmListener(Lcom/cyanogenmod/trebuchet/OnAlarmListener;)V

    .line 633
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mReorderAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Alarm;->setAlarm(J)V

    .line 634
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mPreviousTargetCell:[I

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mTargetCell:[I

    aget v1, v1, v9

    aput v1, v0, v9

    .line 635
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mPreviousTargetCell:[I

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mTargetCell:[I

    aget v1, v1, v8

    aput v1, v0, v8

    .line 637
    :cond_1
    return-void
.end method

.method public onDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 11
    .parameter "d"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 961
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 963
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->makeShortcut()Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    move-result-object v6

    .line 964
    .local v6, item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    iput v5, v6, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->spanX:I

    .line 965
    iput v5, v6, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->spanY:I

    .line 971
    :goto_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mCurrentDragInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    if-ne v6, v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 973
    .local v7, si:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 974
    .local v4, lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mEmptyCell:[I

    aget v0, v0, v10

    iput v0, v4, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    iput v0, v7, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellX:I

    .line 975
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mEmptyCell:[I

    aget v0, v0, v5

    iput v0, v4, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    iput v0, v7, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellX:I

    .line 976
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mCurrentDragView:Landroid/view/View;

    const/4 v2, -0x1

    iget-wide v8, v6, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->id:J

    long-to-int v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;Z)Z

    .line 977
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/DragView;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 978
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v0

    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/DragLayer;->animateViewIntoPosition(Lcom/cyanogenmod/trebuchet/DragView;Landroid/view/View;)V

    .line 982
    :goto_1
    iput-boolean v5, p0, Lcom/cyanogenmod/trebuchet/Folder;->mItemsInvalidated:Z

    .line 983
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cyanogenmod/trebuchet/Folder;->setupContentDimensions(I)V

    .line 984
    iput-boolean v5, p0, Lcom/cyanogenmod/trebuchet/Folder;->mSuppressOnAdd:Z

    .line 986
    .end local v4           #lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    .end local v7           #si:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    invoke-virtual {v0, v6}, Lcom/cyanogenmod/trebuchet/FolderInfo;->add(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V

    .line 987
    return-void

    .line 967
    .end local v6           #item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :cond_1
    iget-object v6, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v6, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .restart local v6       #item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    goto :goto_0

    .line 980
    .restart local v4       #lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    .restart local v7       #si:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;Z)V
    .locals 3
    .parameter "target"
    .parameter "d"
    .parameter "success"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 690
    if-eqz p3, :cond_2

    .line 691
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mDeleteFolderOnDropCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mItemAddedBackToSelfViaIcon:Z

    if-nez v0, :cond_0

    .line 692
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Folder;->replaceFolderWithFinalItem()V

    .line 705
    :cond_0
    :goto_0
    if-eq p1, p0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mOnExitAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mOnExitAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Alarm;->cancelAlarm()V

    .line 708
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->completeDragExit()V

    .line 711
    :cond_1
    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 712
    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mDragInProgress:Z

    .line 713
    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 714
    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mCurrentDragInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 715
    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mCurrentDragView:Landroid/view/View;

    .line 716
    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mSuppressOnAdd:Z

    .line 720
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Folder;->updateItemLocationsInDatabase()V

    .line 721
    return-void

    .line 696
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderIcon:Lcom/cyanogenmod/trebuchet/FolderIcon;

    invoke-virtual {v0, p2}, Lcom/cyanogenmod/trebuchet/FolderIcon;->onDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 700
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mOnExitAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mSuppressFolderDeletion:Z

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 277
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->dismissEditingName()V

    .line 279
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 157
    const v1, 0x7f0e0034

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/CellLayout;

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 158
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v1, v2, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setGridSize(II)V

    .line 159
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildrenLayout()Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->setMotionEventSplittingEnabled(Z)V

    .line 160
    const v1, 0x7f0e002e

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/FolderEditText;

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    .line 161
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    invoke-virtual {v1, p0}, Lcom/cyanogenmod/trebuchet/FolderEditText;->setFolder(Lcom/cyanogenmod/trebuchet/Folder;)V

    .line 162
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    invoke-virtual {v1, p0}, Lcom/cyanogenmod/trebuchet/FolderEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, measureSpec:I
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    invoke-virtual {v1, v0, v0}, Lcom/cyanogenmod/trebuchet/FolderEditText;->measure(II)V

    .line 168
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/FolderEditText;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderNameHeight:I

    .line 171
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/FolderEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 172
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    invoke-virtual {v1, p0}, Lcom/cyanogenmod/trebuchet/FolderEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 173
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/FolderEditText;->setSelectAllOnFocus(Z)V

    .line 174
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/FolderEditText;->getInputType()I

    move-result v2

    const/high16 v3, 0x8

    or-int/2addr v2, v3

    or-int/lit16 v2, v2, 0x2000

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/FolderEditText;->setInputType(I)V

    .line 177
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen;->getHideIconLabels(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/FolderEditText;->setVisibility(I)V

    .line 179
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getPaddingBottom()I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderNameHeight:I

    .line 181
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 1069
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->startEditingFolderName()V

    .line 1071
    :cond_0
    return-void
.end method

.method public onItemsChanged()V
    .locals 0

    .prologue
    .line 1034
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Folder;->updateTextViewFocus()V

    .line 1035
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 215
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 216
    check-cast v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 217
    .local v0, item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 237
    .end local v0           #item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :goto_0
    return v2

    .line 221
    .restart local v0       #item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/cyanogenmod/trebuchet/Launcher;->dismissFolderCling(Landroid/view/View;)V

    .line 223
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 224
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/cyanogenmod/trebuchet/Workspace;->beginDragShared(Landroid/view/View;Lcom/cyanogenmod/trebuchet/DragSource;)V

    move-object v2, p1

    .line 225
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v4

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 227
    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mCurrentDragInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 228
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mEmptyCell:[I

    iget v5, v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellX:I

    aput v5, v2, v3

    .line 229
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mEmptyCell:[I

    iget v5, v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellY:I

    aput v5, v2, v4

    .line 230
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mCurrentDragView:Landroid/view/View;

    .line 232
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v2, v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->removeView(Landroid/view/View;)V

    .line 233
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Folder;->mCurrentDragInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    invoke-virtual {v2, v5}, Lcom/cyanogenmod/trebuchet/FolderInfo;->remove(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V

    .line 234
    iput-boolean v4, p0, Lcom/cyanogenmod/trebuchet/Folder;->mDragInProgress:Z

    .line 235
    iput-boolean v3, p0, Lcom/cyanogenmod/trebuchet/Folder;->mItemAddedBackToSelfViaIcon:Z

    .end local v0           #item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :cond_1
    move v2, v4

    .line 237
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4000

    .line 847
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->getDesiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 848
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getDesiredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderNameHeight:I

    add-int/2addr v1, v2

    .line 851
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getDesiredWidth()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 853
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->getDesiredHeight()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 855
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v4, v2, v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->measure(II)V

    .line 857
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    iget v4, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderNameHeight:I

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/cyanogenmod/trebuchet/FolderEditText;->measure(II)V

    .line 859
    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/Folder;->setMeasuredDimension(II)V

    .line 860
    return-void
.end method

.method public onRemove(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 1005
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mItemsInvalidated:Z

    .line 1008
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mCurrentDragInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    if-ne p1, v1, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/Folder;->getViewForInfo(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 1010
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->removeView(Landroid/view/View;)V

    .line 1011
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mState:I

    if-ne v1, v2, :cond_2

    .line 1012
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Folder;->mRearrangeOnClose:Z

    .line 1016
    :goto_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getItemCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 1017
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Folder;->replaceFolderWithFinalItem()V

    goto :goto_0

    .line 1014
    :cond_2
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Folder;->getItemCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/cyanogenmod/trebuchet/Folder;->setupContentForNumItems(I)V

    goto :goto_1
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1038
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method readingOrderGreaterThan([I[I)Z
    .locals 4
    .parameter "v1"
    .parameter "v2"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 579
    aget v2, p1, v1

    aget v3, p2, v1

    if-gt v2, v3, :cond_0

    aget v2, p1, v1

    aget v3, p2, v1

    if-ne v2, v3, :cond_1

    aget v2, p1, v0

    aget v3, p2, v0

    if-le v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public setDragController(Lcom/cyanogenmod/trebuchet/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    .line 302
    return-void
.end method

.method setFolderIcon(Lcom/cyanogenmod/trebuchet/FolderIcon;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderIcon:Lcom/cyanogenmod/trebuchet/FolderIcon;

    .line 306
    return-void
.end method

.method public startEditingFolderName()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Folder;->mIsEditingName:Z

    .line 247
    return-void
.end method
