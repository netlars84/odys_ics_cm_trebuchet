.class public Lcom/cyanogenmod/trebuchet/InfoDropTarget;
.super Lcom/cyanogenmod/trebuchet/ButtonDropTarget;
.source "InfoDropTarget.java"


# instance fields
.field private mDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private mHoverColor:I

.field private mOriginalTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyanogenmod/trebuchet/InfoDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const v0, -0xffff01

    iput v0, p0, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->mHoverColor:I

    .line 43
    return-void
.end method

.method private isAllAppsApplication(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "info"

    .prologue
    .line 69
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


# virtual methods
.method public acceptDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)Z
    .locals 2
    .parameter "d"

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, componentName:Landroid/content/ComponentName;
    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    iget-object v0, v1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 83
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 84
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->startApplicationDetailsActivity(Landroid/content/ComponentName;)V

    .line 86
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 80
    :cond_2
    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    iget-object v1, v1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->onDragEnd()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->mActive:Z

    .line 108
    return-void
.end method

.method public onDragEnter(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->onDragEnter(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 113
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->mTransitionDuration:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 114
    iget v0, p0, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->mHoverColor:I

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->setTextColor(I)V

    .line 115
    return-void
.end method

.method public onDragExit(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->onDragExit(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 120
    iget-boolean v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 122
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onDragStart(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;I)V
    .locals 3
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 91
    const/4 v0, 0x1

    .line 94
    .local v0, isVisible:Z
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->isAllAppsApplication(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 98
    :cond_0
    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->mActive:Z

    .line 99
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 100
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 101
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 102
    return-void

    .line 101
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 47
    invoke-super {p0}, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->onFinishInflate()V

    .line 49
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    .line 52
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 53
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->mHoverColor:I

    .line 54
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->mHoverPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->mHoverColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 56
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 57
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 61
    .local v0, orientation:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 62
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/InfoDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    return-void
.end method
