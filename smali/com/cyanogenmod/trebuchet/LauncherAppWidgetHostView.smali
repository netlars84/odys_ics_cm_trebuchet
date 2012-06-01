.class public Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPendingCheckForLongPress:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;)Landroid/view/ViewParent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private postCheckForLongClick()V
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 94
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;-><init>(Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 98
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 106
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 109
    :cond_0
    return-void
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 113
    const/high16 v0, 0x6

    return v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    .line 47
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    if-eqz v1, :cond_1

    .line 48
    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 49
    const/4 v0, 0x1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 56
    :pswitch_1
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->postCheckForLongClick()V

    goto :goto_0

    .line 62
    :pswitch_2
    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 63
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
