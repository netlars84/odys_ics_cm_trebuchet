.class public Lcom/cyanogenmod/trebuchet/DeleteDropTarget;
.super Lcom/cyanogenmod/trebuchet/ButtonDropTarget;
.source "DeleteDropTarget.java"


# static fields
.field private static DELETE_ANIMATION_DURATION:I


# instance fields
.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHandler:Landroid/os/Handler;

.field private mHoverColor:I

.field private mMode:I

.field private mOriginalTextColor:Landroid/content/res/ColorStateList;

.field private mRemoveActiveDrawable:Landroid/graphics/drawable/Drawable;

.field private mRemoveNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private final mShowUninstaller:Ljava/lang/Runnable;

.field private mUninstall:Z

.field private mUninstallActiveDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0xfa

    sput v0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->DELETE_ANIMATION_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mMode:I

    .line 44
    const/high16 v0, -0x1

    iput v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mHoverColor:I

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget$1;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget$1;-><init>(Lcom/cyanogenmod/trebuchet/DeleteDropTarget;)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mShowUninstaller:Ljava/lang/Runnable;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/cyanogenmod/trebuchet/DeleteDropTarget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->switchToUninstallTarget()V

    return-void
.end method

.method static synthetic access$100(Lcom/cyanogenmod/trebuchet/DeleteDropTarget;Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->completeDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    return-void
.end method

.method private animateToTrashAndCompleteDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 17
    .parameter "d"

    .prologue
    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v2

    .line 218
    .local v2, dragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 219
    .local v4, from:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 220
    .local v5, to:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    invoke-virtual {v2, v3, v4}, Lcom/cyanogenmod/trebuchet/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 221
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v5}, Lcom/cyanogenmod/trebuchet/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 224
    .local v14, width:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 225
    .local v13, height:I
    iget v3, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->getPaddingLeft()I

    move-result v6

    add-int/2addr v3, v6

    iget v6, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v14

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 229
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/DragView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v14

    neg-int v3, v3

    div-int/lit8 v15, v3, 0x2

    .line 230
    .local v15, xOffset:I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/DragView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, v13

    neg-int v3, v3

    div-int/lit8 v16, v3, 0x2

    .line 231
    .local v16, yOffset:I
    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mSearchDropTargetBar:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->deferOnDragEnd()V

    .line 234
    new-instance v11, Lcom/cyanogenmod/trebuchet/DeleteDropTarget$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget$2;-><init>(Lcom/cyanogenmod/trebuchet/DeleteDropTarget;Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 242
    .local v11, onAnimationEndRunnable:Ljava/lang/Runnable;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    const v6, 0x3dcccccd

    const v7, 0x3dcccccd

    sget v8, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->DELETE_ANIMATION_DURATION:I

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v10, 0x4000

    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v12, 0x3fc0

    invoke-direct {v10, v12}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/cyanogenmod/trebuchet/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V

    .line 245
    return-void
.end method

.method private completeDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 6
    .parameter "d"

    .prologue
    .line 248
    iget-object v2, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 250
    .local v2, item:Lcom/cyanogenmod/trebuchet/ItemInfo;
    iget v4, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 287
    .end local v2           #item:Lcom/cyanogenmod/trebuchet/ItemInfo;
    :cond_0
    :goto_0
    return-void

    .line 252
    .restart local v2       #item:Lcom/cyanogenmod/trebuchet/ItemInfo;
    :pswitch_0
    iget-object v4, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragSource:Lcom/cyanogenmod/trebuchet/DragSource;

    invoke-direct {p0, v4, v2}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->isWorkspaceOrFolderApplication(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-static {v4, v2}, Lcom/cyanogenmod/trebuchet/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;)V

    goto :goto_0

    .line 254
    :cond_1
    iget-object v4, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragSource:Lcom/cyanogenmod/trebuchet/DragSource;

    iget-object v5, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->isWorkspaceFolder(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v2

    .line 256
    check-cast v1, Lcom/cyanogenmod/trebuchet/FolderInfo;

    .line 257
    .local v1, folderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v4, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->removeFolder(Lcom/cyanogenmod/trebuchet/FolderInfo;)V

    .line 258
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-static {v4, v1}, Lcom/cyanogenmod/trebuchet/LauncherModel;->deleteFolderContentsFromDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/FolderInfo;)V

    goto :goto_0

    .line 259
    .end local v1           #folderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    :cond_2
    iget-object v4, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragSource:Lcom/cyanogenmod/trebuchet/DragSource;

    invoke-direct {p0, v4, v2}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->isWorkspaceWidget(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    move-object v4, v2

    check-cast v4, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;

    invoke-virtual {v5, v4}, Lcom/cyanogenmod/trebuchet/Launcher;->removeAppWidget(Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;)V

    .line 262
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-static {v4, v2}, Lcom/cyanogenmod/trebuchet/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;)V

    move-object v3, v2

    .line 264
    check-cast v3, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;

    .line 265
    .local v3, launcherAppWidgetInfo:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/Launcher;->getAppWidgetHost()Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;

    move-result-object v0

    .line 266
    .local v0, appWidgetHost:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;
    if-eqz v0, :cond_0

    .line 269
    new-instance v4, Lcom/cyanogenmod/trebuchet/DeleteDropTarget$3;

    const-string v5, "deleteAppWidgetId"

    invoke-direct {v4, p0, v5, v0, v3}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget$3;-><init>(Lcom/cyanogenmod/trebuchet/DeleteDropTarget;Ljava/lang/String;Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;)V

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget$3;->start()V

    goto :goto_0

    .line 278
    .end local v0           #appWidgetHost:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;
    .end local v3           #launcherAppWidgetInfo:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;
    :pswitch_1
    iget-object v4, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragSource:Lcom/cyanogenmod/trebuchet/DragSource;

    invoke-direct {p0, v4, v2}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->isAllAppsApplication(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 280
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    check-cast v2, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    .end local v2           #item:Lcom/cyanogenmod/trebuchet/ItemInfo;
    invoke-virtual {v4, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->startApplicationUninstallActivity(Lcom/cyanogenmod/trebuchet/ApplicationInfo;)V

    goto :goto_0

    .line 281
    .restart local v2       #item:Lcom/cyanogenmod/trebuchet/ItemInfo;
    :cond_3
    iget-object v4, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragSource:Lcom/cyanogenmod/trebuchet/DragSource;

    invoke-direct {p0, v4, v2}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->isWorkspaceOrFolderApplication(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 283
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    check-cast v2, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .end local v2           #item:Lcom/cyanogenmod/trebuchet/ItemInfo;
    invoke-virtual {v4, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->startShortcutUninstallActivity(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isAllAppsApplication(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "info"

    .prologue
    .line 97
    instance-of v0, p1, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllAppsItem(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "info"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->isAllAppsApplication(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->isAllAppsWidget(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z

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

.method private isAllAppsWidget(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "info"

    .prologue
    .line 100
    instance-of v0, p1, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDragSourceWorkspaceOrFolder(Lcom/cyanogenmod/trebuchet/DragSource;)Z
    .locals 1
    .parameter "source"

    .prologue
    .line 103
    instance-of v0, p1, Lcom/cyanogenmod/trebuchet/Workspace;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/cyanogenmod/trebuchet/Folder;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWorkspaceFolder(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "info"

    .prologue
    .line 112
    instance-of v0, p1, Lcom/cyanogenmod/trebuchet/Workspace;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/cyanogenmod/trebuchet/FolderInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWorkspaceOrFolderApplication(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "info"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->isDragSourceWorkspaceOrFolder(Lcom/cyanogenmod/trebuchet/DragSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWorkspaceWidget(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "info"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->isDragSourceWorkspaceOrFolder(Lcom/cyanogenmod/trebuchet/DragSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private switchToUninstallTarget()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mUninstall:Z

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mMode:I

    .line 166
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 167
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->setText(I)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mUninstallActiveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 171
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->onDragEnd()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mActive:Z

    .line 179
    return-void
.end method

.method public onDragEnter(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 5
    .parameter "d"

    .prologue
    const/4 v4, 0x0

    .line 182
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->onDragEnter(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 184
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mUninstall:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mShowUninstaller:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mShowUninstaller:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mRemoveActiveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v4, v4, v4}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 190
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 191
    iget v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mHoverColor:I

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->setTextColor(I)V

    .line 192
    return-void
.end method

.method public onDragExit(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 4
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 195
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->onDragExit(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 197
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mShowUninstaller:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    iget-boolean v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_1

    .line 200
    iput v3, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mMode:I

    .line 202
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 203
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragSource:Lcom/cyanogenmod/trebuchet/DragSource;

    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->isAllAppsItem(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->setText(I)V

    .line 210
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mRemoveNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 211
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 212
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 214
    :cond_1
    return-void

    .line 206
    :cond_2
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->setText(I)V

    goto :goto_0
.end method

.method public onDragStart(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;I)V
    .locals 8
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 123
    const/4 v1, 0x0

    .line 127
    .local v1, isUninstall:Z
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->isAllAppsApplication(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, p2

    .line 128
    check-cast v0, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    .line 129
    .local v0, appInfo:Lcom/cyanogenmod/trebuchet/ApplicationInfo;
    iget v5, v0, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 130
    const/4 v1, 0x1

    .line 142
    .end local v0           #appInfo:Lcom/cyanogenmod/trebuchet/ApplicationInfo;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mRemoveNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5, v7, v7, v7}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v6

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 145
    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mUninstall:Z

    .line 146
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mActive:Z

    .line 147
    iput v6, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mMode:I

    .line 148
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 149
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 150
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->isAllAppsItem(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 152
    const v5, 0x7f090028

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->setText(I)V

    .line 157
    :cond_1
    :goto_1
    return-void

    .line 132
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->isWorkspaceOrFolderApplication(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, p2

    .line 133
    check-cast v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 134
    .local v4, shortcutInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 135
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v5, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 136
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 138
    const/4 v1, 0x1

    goto :goto_0

    .line 154
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v4           #shortcutInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :cond_3
    const v5, 0x7f090027

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->setText(I)V

    goto :goto_1
.end method

.method public onDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->animateToTrashAndCompleteDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 291
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 70
    invoke-super {p0}, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->onFinishInflate()V

    .line 73
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    .line 76
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, r:Landroid/content/res/Resources;
    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mHoverColor:I

    .line 78
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mHoverPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mHoverColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 80
    const v2, 0x7f02002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mUninstallActiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    const v2, 0x7f020024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mRemoveActiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    const v2, 0x7f020025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->mRemoveNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 86
    .local v0, orientation:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 87
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_0
    return-void
.end method
