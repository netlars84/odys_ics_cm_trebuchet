.class public Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;
.super Landroid/widget/FrameLayout;
.source "SearchDropTargetBar.java"

# interfaces
.implements Lcom/cyanogenmod/trebuchet/DragController$DragListener;


# instance fields
.field private mBarHeight:I

.field private mDeferOnDragEnd:Z

.field private mDeleteDropTarget:Lcom/cyanogenmod/trebuchet/ButtonDropTarget;

.field private mDropTargetBar:Landroid/view/View;

.field private mDropTargetBarFadeInAnim:Landroid/animation/AnimatorSet;

.field private mDropTargetBarFadeOutAnim:Landroid/animation/AnimatorSet;

.field private mInfoDropTarget:Lcom/cyanogenmod/trebuchet/ButtonDropTarget;

.field private mIsSearchBarHidden:Z

.field private mPreviousBackground:Landroid/graphics/drawable/Drawable;

.field private mQSBSearchBar:Landroid/view/View;

.field private mQSBSearchBarFadeInAnim:Landroid/animation/ObjectAnimator;

.field private mQSBSearchBarFadeOutAnim:Landroid/animation/ObjectAnimator;

.field private mShowQSBSearchBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDeferOnDragEnd:Z

    .line 66
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen;->getShowSearchBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mShowQSBSearchBar:Z

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    return-object v0
.end method

.method private cancelAnimations()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBarFadeInAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 153
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBarFadeOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 154
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBarFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 155
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 156
    return-void
.end method


# virtual methods
.method public deferOnDragEnd()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDeferOnDragEnd:Z

    .line 218
    return-void
.end method

.method public getSearchBarBounds()Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f00

    .line 250
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 251
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 253
    .local v0, appScale:F
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 254
    .local v1, pos:[I
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 256
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 257
    .local v2, rect:Landroid/graphics/Rect;
    aget v3, v1, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 258
    aget v3, v1, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 259
    aget v3, v1, v4

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 260
    aget v3, v1, v6

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 263
    .end local v0           #appScale:F
    .end local v1           #pos:[I
    .end local v2           #rect:Landroid/graphics/Rect;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTransitionInDuration()I
    .locals 1

    .prologue
    .line 194
    const/16 v0, 0xc8

    return v0
.end method

.method public hideSearchBar(Z)V
    .locals 2
    .parameter "animated"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->cancelAnimations()V

    .line 177
    if-eqz p1, :cond_1

    .line 178
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mShowQSBSearchBar:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 187
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mIsSearchBarHidden:Z

    .line 188
    return-void

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mShowQSBSearchBar:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDeferOnDragEnd:Z

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBarFadeInAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 225
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBarFadeOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 226
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mShowQSBSearchBar:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 228
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBarFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDeferOnDragEnd:Z

    goto :goto_0
.end method

.method public onDragStart(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;I)V
    .locals 3
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 207
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    .line 208
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBarFadeOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 209
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBarFadeInAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 210
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mShowQSBSearchBar:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBarFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 212
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 214
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 15

    .prologue
    const-wide/16 v13, 0xaf

    const/high16 v12, 0x3f80

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 81
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 84
    const v5, 0x7f0e0028

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    .line 85
    const v5, 0x7f0e0029

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    .line 86
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const v6, 0x7f0e002b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mInfoDropTarget:Lcom/cyanogenmod/trebuchet/ButtonDropTarget;

    .line 87
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const v6, 0x7f0e002a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDeleteDropTarget:Lcom/cyanogenmod/trebuchet/ButtonDropTarget;

    .line 88
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mBarHeight:I

    .line 90
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mInfoDropTarget:Lcom/cyanogenmod/trebuchet/ButtonDropTarget;

    invoke-virtual {v5, p0}, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->setSearchDropTargetBar(Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;)V

    .line 91
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDeleteDropTarget:Lcom/cyanogenmod/trebuchet/ButtonDropTarget;

    invoke-virtual {v5, p0}, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->setSearchDropTargetBar(Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;)V

    .line 93
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 96
    .local v0, enableDropDownDropTargets:Z
    iget-boolean v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mShowQSBSearchBar:Z

    if-nez v5, :cond_0

    .line 97
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_0
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setAlpha(F)V

    .line 102
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v10, [F

    aput v12, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 103
    .local v1, fadeInAlphaAnim:Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 104
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBarFadeInAnim:Landroid/animation/AnimatorSet;

    .line 105
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBarFadeInAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 106
    .local v2, fadeInAnimators:Landroid/animation/AnimatorSet$Builder;
    if-eqz v0, :cond_1

    .line 107
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    iget v6, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mBarHeight:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 108
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const-string v6, "translationY"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 110
    :cond_1
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBarFadeInAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 111
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBarFadeInAnim:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar$1;

    invoke-direct {v6, p0}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar$1;-><init>(Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 117
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 118
    .local v3, fadeOutAlphaAnim:Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 119
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBarFadeOutAnim:Landroid/animation/AnimatorSet;

    .line 120
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBarFadeOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 121
    .local v4, fadeOutAnimators:Landroid/animation/AnimatorSet$Builder;
    if-eqz v0, :cond_2

    .line 122
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const-string v6, "translationY"

    new-array v7, v10, [F

    iget v8, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mBarHeight:I

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 125
    :cond_2
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBarFadeOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 126
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBarFadeOutAnim:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar$2;

    invoke-direct {v6, p0}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar$2;-><init>(Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v10, [F

    aput v12, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBarFadeInAnim:Landroid/animation/ObjectAnimator;

    .line 134
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBarFadeInAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 135
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBarFadeInAnim:Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar$3;

    invoke-direct {v6, p0}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar$3;-><init>(Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 141
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    .line 142
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 143
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar$4;

    invoke-direct {v6, p0}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar$4;-><init>(Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    return-void
.end method

.method public onSearchPackagesChanged(ZZ)V
    .locals 3
    .parameter "searchVisible"
    .parameter "voiceVisible"

    .prologue
    .line 236
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 238
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 240
    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mPreviousBackground:Landroid/graphics/drawable/Drawable;

    .line 241
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 242
    .restart local v0       #bg:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mPreviousBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mPreviousBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setup(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/DragController;)V
    .locals 1
    .parameter "launcher"
    .parameter "dragController"

    .prologue
    .line 70
    invoke-virtual {p2, p0}, Lcom/cyanogenmod/trebuchet/DragController;->addDragListener(Lcom/cyanogenmod/trebuchet/DragController$DragListener;)V

    .line 71
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mInfoDropTarget:Lcom/cyanogenmod/trebuchet/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/cyanogenmod/trebuchet/DragController;->addDragListener(Lcom/cyanogenmod/trebuchet/DragController$DragListener;)V

    .line 72
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDeleteDropTarget:Lcom/cyanogenmod/trebuchet/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/cyanogenmod/trebuchet/DragController;->addDragListener(Lcom/cyanogenmod/trebuchet/DragController$DragListener;)V

    .line 73
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mInfoDropTarget:Lcom/cyanogenmod/trebuchet/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/cyanogenmod/trebuchet/DragController;->addDropTarget(Lcom/cyanogenmod/trebuchet/DropTarget;)V

    .line 74
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDeleteDropTarget:Lcom/cyanogenmod/trebuchet/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/cyanogenmod/trebuchet/DragController;->addDropTarget(Lcom/cyanogenmod/trebuchet/DropTarget;)V

    .line 75
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mInfoDropTarget:Lcom/cyanogenmod/trebuchet/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->setLauncher(Lcom/cyanogenmod/trebuchet/Launcher;)V

    .line 76
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDeleteDropTarget:Lcom/cyanogenmod/trebuchet/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/ButtonDropTarget;->setLauncher(Lcom/cyanogenmod/trebuchet/Launcher;)V

    .line 77
    return-void
.end method

.method public showSearchBar(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->cancelAnimations()V

    .line 163
    if-eqz p1, :cond_1

    .line 164
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mShowQSBSearchBar:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBarFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 173
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mIsSearchBarHidden:Z

    .line 174
    return-void

    .line 168
    :cond_1
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mShowQSBSearchBar:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
