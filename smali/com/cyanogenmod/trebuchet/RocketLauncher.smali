.class public Lcom/cyanogenmod/trebuchet/RocketLauncher;
.super Landroid/app/Activity;
.source "RocketLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 400
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 403
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/RocketLauncher;->requestWindowFeature(I)Z

    .line 404
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/RocketLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 405
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 409
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 411
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 412
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/RocketLauncher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 413
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v4, :cond_0

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 416
    .local v1, longside:I
    :goto_0
    new-instance v0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 417
    .local v0, b:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lcom/cyanogenmod/trebuchet/RocketLauncher;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->setX(F)V

    .line 419
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->setY(F)V

    .line 420
    return-void

    .line 413
    .end local v0           #b:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;
    .end local v1           #longside:I
    :cond_0
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method
