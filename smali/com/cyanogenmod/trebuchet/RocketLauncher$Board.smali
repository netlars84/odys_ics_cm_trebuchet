.class public Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;
.super Landroid/widget/FrameLayout;
.source "RocketLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/RocketLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Board"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingStar;,
        Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;
    }
.end annotation


# static fields
.field static sRNG:Ljava/util/Random;


# instance fields
.field mAnim:Landroid/animation/TimeAnimator;

.field mComponentNames:[Landroid/content/ComponentName;

.field final mEngageWarp:Ljava/lang/Runnable;

.field mIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mManeuveringThrusters:Z

.field private mSpeedScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->sRNG:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "as"

    .prologue
    .line 244
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mManeuveringThrusters:Z

    .line 59
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mSpeedScale:F

    .line 366
    new-instance v1, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$2;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$2;-><init>(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;)V

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mEngageWarp:Ljava/lang/Runnable;

    .line 246
    const/high16 v1, -0x100

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->setBackgroundColor(I)V

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/LauncherApplication;

    .line 249
    .local v0, app:Lcom/cyanogenmod/trebuchet/LauncherApplication;
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->getIconCache()Lcom/cyanogenmod/trebuchet/IconCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/IconCache;->getAllIcons()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mIcons:Ljava/util/HashMap;

    .line 250
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mComponentNames:[Landroid/content/ComponentName;

    .line 251
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mComponentNames:[Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mComponentNames:[Landroid/content/ComponentName;

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mManeuveringThrusters:Z

    return v0
.end method

.method static synthetic access$002(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mManeuveringThrusters:Z

    return p1
.end method

.method static synthetic access$100(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mSpeedScale:F

    return v0
.end method

.method static synthetic access$102(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mSpeedScale:F

    return p1
.end method

.method static synthetic access$116(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iget v0, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mSpeedScale:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mSpeedScale:F

    return v0
.end method

.method static synthetic access$124(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iget v0, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mSpeedScale:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mSpeedScale:F

    return v0
.end method

.method static lerp(FFF)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "f"

    .prologue
    .line 69
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method static pick([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)TE;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, array:[Ljava/lang/Object;,"[TE;"
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->sRNG:Ljava/util/Random;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, p0, v0

    goto :goto_0
.end method

.method static randfrange(FF)F
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 73
    sget-object v0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->sRNG:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method static randsign()I
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->sRNG:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private reset()V
    .locals 10

    .prologue
    const/16 v9, 0x14

    const/4 v5, -0x2

    const/high16 v8, 0x3f40

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 255
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->removeAllViews()V

    .line 257
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 262
    .local v4, wrap:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v9, :cond_0

    .line 263
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 264
    .local v0, fixedStar:Landroid/widget/ImageView;
    const v5, 0x7f020061

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    const/high16 v5, 0x3e80

    invoke-static {v5, v8}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->randfrange(FF)F

    move-result v3

    .line 266
    .local v3, s:F
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 267
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 268
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 269
    invoke-virtual {p0, v0, v4}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v7, v5}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->randfrange(FF)F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setX(F)V

    .line 271
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v7, v5}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->randfrange(FF)F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setY(F)V

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .end local v0           #fixedStar:Landroid/widget/ImageView;
    .end local v3           #s:F
    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v5, 0x28

    if-ge v1, v5, :cond_2

    .line 276
    if-ge v1, v9, :cond_1

    new-instance v2, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingStar;

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, p0, v5, v6}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingStar;-><init>(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 279
    .local v2, nv:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;
    :goto_2
    invoke-virtual {p0, v2, v4}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;->reset()V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    .end local v2           #nv:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;
    :cond_1
    new-instance v2, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, p0, v5, v6}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;-><init>(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 283
    :cond_2
    new-instance v5, Landroid/animation/TimeAnimator;

    invoke-direct {v5}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mAnim:Landroid/animation/TimeAnimator;

    .line 284
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mAnim:Landroid/animation/TimeAnimator;

    new-instance v6, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;

    invoke-direct {v6, p0}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;-><init>(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;)V

    invoke-virtual {v5, v6}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 330
    return-void
.end method


# virtual methods
.method public isOpaque()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 334
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 335
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->setLayerType(ILandroid/graphics/Paint;)V

    .line 337
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->reset()V

    .line 338
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 339
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 352
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 353
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mManeuveringThrusters:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 342
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 343
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 344
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->reset()V

    .line 345
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 346
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 385
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mManeuveringThrusters:Z

    if-nez v1, :cond_0

    .line 386
    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mManeuveringThrusters:Z

    .line 387
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->resetWarpTimer()V

    .line 392
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetWarpTimer()V
    .locals 4

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 374
    .local v0, h:Landroid/os/Handler;
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mEngageWarp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 375
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mEngageWarp:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 376
    return-void
.end method
