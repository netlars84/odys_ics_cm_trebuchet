.class public Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;
.super Landroid/widget/TabHost;
.source "AppsCustomizeTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/cyanogenmod/trebuchet/LauncherTransitionable;


# instance fields
.field private mAnimationBuffer:Landroid/widget/FrameLayout;

.field private mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

.field private mContent:Landroid/widget/LinearLayout;

.field private mFadeScrollingIndicator:Z

.field private mInTransition:Z

.field private mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

.field private mLauncherTransition:Landroid/animation/Animator;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mResetAfterTransition:Z

.field private mSuppressContentCallback:Z

.field private mTabs:Landroid/view/ViewGroup;

.field private mTabsContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mSuppressContentCallback:Z

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/cyanogenmod/trebuchet/Launcher;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    .line 71
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Drawer$Indicator;->getFadeScrollingIndicator(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mFadeScrollingIndicator:Z

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;)Lcom/cyanogenmod/trebuchet/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private enableAndBuildHardwareLayer()V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->setLayerType(ILandroid/graphics/Paint;)V

    .line 262
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->buildLayer()V

    .line 264
    :cond_0
    return-void
.end method

.method private setContentTypeImmediate(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->hideIndicator(Z)V

    .line 82
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->setContentType(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)V

    .line 83
    return-void
.end method


# virtual methods
.method public getContentTypeForTabTag(Ljava/lang/String;)Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;
    .locals 1
    .parameter "tag"

    .prologue
    .line 211
    const-string v0, "APPS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Apps:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    .line 216
    :goto_0
    return-object v0

    .line 213
    :cond_0
    const-string v0, "WIDGETS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    sget-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Widgets:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    goto :goto_0

    .line 216
    :cond_1
    sget-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Apps:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    goto :goto_0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const/high16 v0, 0x6

    .line 239
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TabHost;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getTabTagForContentType(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 223
    sget-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Apps:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    if-ne p1, v0, :cond_0

    .line 224
    const-string v0, "APPS"

    .line 228
    :goto_0
    return-object v0

    .line 225
    :cond_0
    sget-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Widgets:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    if-ne p1, v0, :cond_1

    .line 226
    const-string v0, "WIDGETS"

    goto :goto_0

    .line 228
    :cond_1
    const-string v0, "APPS"

    goto :goto_0
.end method

.method isTransitioning()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mInTransition:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 14

    .prologue
    const v13, 0x7f030016

    const/4 v12, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->setup()V

    .line 103
    const v10, 0x7f0e0007

    invoke-virtual {p0, v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 104
    .local v9, tabsContainer:Landroid/view/ViewGroup;
    const v10, 0x1020013

    invoke-virtual {p0, v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TabWidget;

    .line 105
    .local v8, tabs:Landroid/widget/TabWidget;
    const v10, 0x7f0e000a

    invoke-virtual {p0, v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    .line 107
    .local v0, appsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;
    iput-object v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    .line 108
    iput-object v9, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    .line 109
    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    .line 110
    const v10, 0x7f0e000b

    invoke-virtual {p0, v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    iput-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;

    .line 111
    const v10, 0x7f0e0006

    invoke-virtual {p0, v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    .line 112
    if-eqz v8, :cond_0

    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    if-nez v10, :cond_1

    :cond_0
    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v10}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v10

    .line 116
    :cond_1
    new-instance v1, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost$1;

    invoke-direct {v1, p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost$1;-><init>(Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;Lcom/cyanogenmod/trebuchet/AppsCustomizeView;)V

    .line 125
    .local v1, contentFactory:Landroid/widget/TabHost$TabContentFactory;
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mContext:Landroid/content/Context;

    const v11, 0x7f090023

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, label:Ljava/lang/String;
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v10, v13, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 127
    .local v7, tabView:Landroid/widget/TextView;
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 129
    new-instance v10, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost$2;

    invoke-direct {v10, p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost$2;-><init>(Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;)V

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 135
    const-string v10, "APPS"

    invoke-virtual {p0, v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 136
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mContext:Landroid/content/Context;

    const v11, 0x7f09000b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 137
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v10, v13, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .end local v7           #tabView:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 138
    .restart local v7       #tabView:Landroid/widget/TextView;
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 140
    const-string v10, "WIDGETS"

    invoke-virtual {p0, v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 141
    invoke-virtual {p0, p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 144
    new-instance v2, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabKeyEventListener;

    invoke-direct {v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabKeyEventListener;-><init>()V

    .line 145
    .local v2, keyListener:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabKeyEventListener;
    invoke-virtual {v8}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    .line 146
    .local v4, lastTab:Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 147
    const v10, 0x7f0e0009

    invoke-virtual {p0, v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 148
    .local v6, shopButton:Landroid/view/View;
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 151
    const v10, 0x7f0e0008

    invoke-virtual {p0, v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 152
    .local v5, overflowMenuButton:Landroid/view/View;
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 155
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 156
    return-void
.end method

.method public onLauncherTransitionEnd(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/animation/Animator;Z)V
    .locals 2
    .parameter "l"
    .parameter "animation"
    .parameter "toWorkspace"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 312
    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mInTransition:Z

    .line 313
    if-eqz p2, :cond_0

    .line 314
    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->setLayerType(ILandroid/graphics/Paint;)V

    .line 317
    :cond_0
    if-nez p3, :cond_1

    .line 319
    invoke-virtual {p1, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V

    .line 320
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->showAllAppsCling()V

    .line 323
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->loadContent()V

    .line 325
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mFadeScrollingIndicator:Z

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->hideIndicator(Z)V

    .line 329
    :cond_1
    return-void
.end method

.method public onLauncherTransitionStart(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/animation/Animator;Z)Z
    .locals 6
    .parameter "l"
    .parameter "animation"
    .parameter "toWorkspace"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 278
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mInTransition:Z

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, delayLauncherTransitionUntilLayout:Z
    if-eqz p2, :cond_5

    move v0, v2

    .line 281
    .local v0, animated:Z
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mLauncherTransition:Landroid/animation/Animator;

    .line 285
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 286
    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mLauncherTransition:Landroid/animation/Animator;

    .line 287
    const/4 v1, 0x1

    .line 289
    :cond_0
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 291
    if-nez p3, :cond_1

    .line 294
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v4, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->loadContent(Z)V

    .line 296
    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 297
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->enableAndBuildHardwareLayer()V

    .line 300
    :cond_2
    if-nez p3, :cond_3

    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-nez v2, :cond_3

    .line 301
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v2, v3}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->showIndicator(Z)V

    .line 303
    :cond_3
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mResetAfterTransition:Z

    if-eqz v2, :cond_4

    .line 304
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->reset()V

    .line 305
    iput-boolean v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mResetAfterTransition:Z

    .line 307
    :cond_4
    return v1

    .end local v0           #animated:Z
    :cond_5
    move v0, v3

    .line 280
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 267
    invoke-super/range {p0 .. p5}, Landroid/widget/TabHost;->onLayout(ZIIII)V

    .line 268
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mLauncherTransition:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->enableAndBuildHardwareLayer()V

    .line 270
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mLauncherTransition:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mLauncherTransition:Landroid/animation/Animator;

    .line 273
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 160
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v2, :cond_1

    const/4 v1, 0x1

    .line 161
    .local v1, remeasureTabWidth:Z
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    .line 164
    if-eqz v1, :cond_0

    .line 165
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 166
    .local v0, contentWidth:I
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v0, :cond_0

    .line 168
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 169
    new-instance v2, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost$3;

    invoke-direct {v2, p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost$3;-><init>(Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;)V

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->post(Ljava/lang/Runnable;)Z

    .line 177
    .end local v0           #contentWidth:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    .line 178
    return-void

    .line 160
    .end local v1           #remeasureTabWidth:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->loadContent(Z)V

    .line 337
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->loadContent()V

    .line 339
    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->getContentTypeForTabTag(Ljava/lang/String;)Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    move-result-object v0

    .line 193
    .local v0, type:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mSuppressContentCallback:Z

    if-eqz v1, :cond_0

    .line 194
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mSuppressContentCallback:Z

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v1, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->onTabChanged(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrimMemory()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->clearAllWidgetPreviews()V

    .line 346
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mInTransition:Z

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mResetAfterTransition:Z

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->reset()V

    goto :goto_0
.end method

.method selectAppsTab()V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Apps:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    invoke-direct {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->setContentTypeImmediate(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)V

    .line 86
    const-string v0, "APPS"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method selectWidgetsTab()V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Widgets:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    invoke-direct {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->setContentTypeImmediate(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)V

    .line 90
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->setCurrentToWidgets()V

    .line 92
    const-string v0, "WIDGETS"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setCurrentTabFromContent(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->mSuppressContentCallback:Z

    .line 204
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 205
    return-void
.end method
