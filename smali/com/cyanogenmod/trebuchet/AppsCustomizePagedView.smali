.class public Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;
.super Lcom/cyanogenmod/trebuchet/PagedViewWithDraggableItems;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/cyanogenmod/trebuchet/AppsCustomizeView;
.implements Lcom/cyanogenmod/trebuchet/DragSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$10;,
        Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;
    }
.end annotation


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAppIconSize:I

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClingFocusedX:I

.field private mClingFocusedY:I

.field private mContentType:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

.field private mContentWidth:I

.field private mDefaultWidgetBackground:Landroid/graphics/drawable/Drawable;

.field private mDragController:Lcom/cyanogenmod/trebuchet/DragController;

.field private mDragViewMultiplyColor:I

.field private mFadeScrollingIndicator:Z

.field private mHasShownAllAppsCling:Z

.field private mHasShownAllAppsSortCling:Z

.field private mHolographicOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

.field private mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

.field private mJoinWidgetsApps:Z

.field private mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mMaxAppCellCountX:I

.field private mMaxAppCellCountY:I

.field private mNumAppsPages:I

.field private mNumWidgetPages:I

.field private mOverscrollTransformsDirty:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mRunningTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveInstanceStateItemIndex:I

.field private mShowScrollingIndicator:Z

.field private mSortMode:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

.field private mTransitionEffect:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

.field private mWidgetCountX:I

.field private mWidgetCountY:I

.field private mWidgetHeightGap:I

.field private final mWidgetPreviewIconPaddedDimension:I

.field private mWidgetSpacingLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

.field private mWidgetWidthGap:I

.field private mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mZInterpolator:Lcom/cyanogenmod/trebuchet/Workspace$ZInterpolator;

.field private final sWidgetPreviewIconPaddingPercentage:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 188
    iput v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 192
    sget-object v2, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;->Title:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mSortMode:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    .line 215
    const/high16 v2, 0x3e80

    iput v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->sWidgetPreviewIconPaddingPercentage:F

    .line 217
    iput v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    .line 218
    iput v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumWidgetPages:I

    .line 221
    new-instance v2, Lcom/cyanogenmod/trebuchet/Workspace$ZInterpolator;

    const/high16 v3, 0x3f00

    invoke-direct {v2, v3}, Lcom/cyanogenmod/trebuchet/Workspace$ZInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mZInterpolator:Lcom/cyanogenmod/trebuchet/Workspace$ZInterpolator;

    .line 228
    iput-boolean v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mOverscrollTransformsDirty:Z

    .line 229
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const v3, 0x3f666666

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 230
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x4080

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 257
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 259
    sget-object v2, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Apps:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mContentType:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    .line 260
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 261
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/trebuchet/LauncherApplication;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->getIconCache()Lcom/cyanogenmod/trebuchet/IconCache;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    .line 263
    new-instance v2, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    invoke-direct {v2}, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;-><init>()V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mHolographicOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    .line 264
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 269
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mDefaultWidgetBackground:Landroid/graphics/drawable/Drawable;

    .line 270
    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mAppIconSize:I

    .line 271
    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mDragViewMultiplyColor:I

    .line 273
    sget-object v2, Lcom/cyanogenmod/trebuchet/R$styleable;->AppsCustomizePagedView:[I

    invoke-virtual {p1, p2, v2, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 274
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mMaxAppCellCountX:I

    .line 275
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mMaxAppCellCountY:I

    .line 276
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetWidthGap:I

    .line 278
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetHeightGap:I

    .line 280
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountX:I

    .line 281
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountY:I

    .line 282
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mClingFocusedX:I

    .line 283
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mClingFocusedY:I

    .line 284
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 285
    new-instance v2, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    .line 292
    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetPreviewIconPaddedDimension:I

    .line 294
    iput-boolean v7, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mHandleFadeInAdjacentScreens:Z

    .line 297
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Drawer;->getJoinWidgetsApps(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mJoinWidgetsApps:Z

    .line 298
    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Drawer$Scrolling;->getTransitionEffect(Landroid/content/Context;Ljava/lang/String;)Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mTransitionEffect:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    .line 300
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Drawer$Scrolling;->getFadeInAdjacentScreens(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mFadeInAdjacentScreens:Z

    .line 301
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Drawer$Indicator;->getShowScrollingIndicator(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mShowScrollingIndicator:Z

    .line 302
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Drawer$Indicator;->getFadeScrollingIndicator(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mFadeScrollingIndicator:Z

    .line 304
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mShowScrollingIndicator:Z

    if-nez v2, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->disableScrollingIndicator()V

    .line 307
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;)Lcom/cyanogenmod/trebuchet/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;)Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getTabHost()Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->loadWidgetPreviewsInBackground(Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mJoinWidgetsApps:Z

    return v0
.end method

.method static synthetic access$400(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;)Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mContentType:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->onSyncWidgetPageItems(Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$700(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;ILjava/util/ArrayList;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;II)V

    return-void
.end method

.method private addAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1876
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    .line 1877
    .local v2, info:Lcom/cyanogenmod/trebuchet/ApplicationInfo;
    const/4 v1, 0x0

    .line 1878
    .local v1, index:I
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mSortMode:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    sget-object v4, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;->Title:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    if-ne v3, v4, :cond_2

    .line 1879
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v2, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 1883
    :cond_1
    :goto_1
    if-gez v1, :cond_0

    .line 1884
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    neg-int v4, v4

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1880
    :cond_2
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mSortMode:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    sget-object v4, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;->InstallDate:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    if-ne v3, v4, :cond_1

    .line 1881
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    sget-object v4, Lcom/cyanogenmod/trebuchet/LauncherModel;->APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v2, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    goto :goto_1

    .line 1887
    .end local v1           #index:I
    .end local v2           #info:Lcom/cyanogenmod/trebuchet/ApplicationInfo;
    :cond_3
    return-void
.end method

.method private beginDraggingApplication(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 624
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/cyanogenmod/trebuchet/Workspace;->beginDragShared(Landroid/view/View;Lcom/cyanogenmod/trebuchet/DragSource;)V

    .line 625
    return-void
.end method

.method private beginDraggingWidget(Landroid/view/View;)V
    .locals 18
    .parameter "v"

    .prologue
    .line 629
    const v1, 0x7f0e0012

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 630
    .local v14, image:Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;

    .line 635
    .local v11, createItemInfo:Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;
    instance-of v1, v11, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;

    if-eqz v1, :cond_1

    move-object v12, v11

    .line 636
    check-cast v12, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;

    .line 637
    .local v12, createWidgetInfo:Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getSpanForWidget(Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;[I)[I

    move-result-object v17

    .line 638
    .local v17, spanXY:[I
    const/4 v1, 0x0

    aget v1, v17, v1

    iput v1, v11, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;->spanX:I

    .line 639
    const/4 v1, 0x1

    aget v1, v17, v1

    iput v1, v11, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;->spanY:I

    .line 641
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v17, v2

    const/4 v4, 0x1

    aget v4, v17, v4

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v12, v5}, Lcom/cyanogenmod/trebuchet/Workspace;->estimateItemSize(IILcom/cyanogenmod/trebuchet/PendingAddItemInfo;Z)[I

    move-result-object v15

    .line 643
    .local v15, maxSize:[I
    iget-object v2, v12, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    iget v3, v12, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->previewImage:I

    iget v4, v12, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->icon:I

    const/4 v1, 0x0

    aget v5, v17, v1

    const/4 v1, 0x1

    aget v6, v17, v1

    const/4 v1, 0x0

    aget v7, v15, v1

    const/4 v1, 0x1

    aget v8, v15, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getWidgetPreview(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 660
    .end local v12           #createWidgetInfo:Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;
    .end local v15           #maxSize:[I
    .end local v17           #spanXY:[I
    .local v3, preview:Landroid/graphics/Bitmap;
    :goto_0
    instance-of v1, v11, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;

    if-eqz v1, :cond_0

    move-object v1, v11

    .line 661
    check-cast v1, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;

    iget v1, v1, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->previewImage:I

    if-eqz v1, :cond_0

    .line 662
    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v1, v2}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v10

    .line 663
    .local v10, alphaClipTable:Landroid/graphics/MaskFilter;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 664
    .local v9, alphaClipPaint:Landroid/graphics/Paint;
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 669
    .end local v9           #alphaClipPaint:Landroid/graphics/Paint;
    .end local v10           #alphaClipTable:Landroid/graphics/MaskFilter;
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 671
    .local v16, outline:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mDragViewMultiplyColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 676
    const/4 v9, 0x0

    .line 677
    .restart local v9       #alphaClipPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->lockScreenOrientationOnLargeUI()V

    .line 678
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v11, v0, v9}, Lcom/cyanogenmod/trebuchet/Workspace;->onDragStartedWithItem(Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    sget v6, Lcom/cyanogenmod/trebuchet/DragController;->DRAG_ACTION_COPY:I

    const/4 v7, 0x0

    move-object v2, v14

    move-object/from16 v4, p0

    move-object v5, v11

    invoke-virtual/range {v1 .. v7}, Lcom/cyanogenmod/trebuchet/DragController;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V

    .line 681
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 682
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 683
    return-void

    .line 649
    .end local v3           #preview:Landroid/graphics/Bitmap;
    .end local v9           #alphaClipPaint:Landroid/graphics/Paint;
    .end local v16           #outline:Landroid/graphics/Bitmap;
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetPreviewIconPaddedDimension:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetPreviewIconPaddedDimension:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 651
    .restart local v3       #preview:Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 652
    .local v13, d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v13, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 655
    const/4 v1, 0x1

    iput v1, v11, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;->spanY:I

    iput v1, v11, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;->spanX:I

    goto/16 :goto_0
.end method

.method private cancelAllTasks()V
    .locals 3

    .prologue
    .line 758
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 759
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 760
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;

    .line 761
    .local v1, task:Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;->cancel(Z)Z

    .line 762
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 764
    .end local v1           #task:Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;
    :cond_0
    return-void
.end method

.method private dumpAppWidgetProviderInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1972
    instance-of v2, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_1

    .line 1973
    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1974
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   label=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" previewImage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resizeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " configure="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " initialLayout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1978
    :cond_1
    instance-of v2, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    .line 1979
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1980
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   label=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1984
    :cond_2
    return-void
.end method

.method private endDragging(Landroid/view/View;Z)V
    .locals 1
    .parameter "target"
    .parameter "success"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/cyanogenmod/trebuchet/Workspace;->onDragStopped(Z)V

    .line 703
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_1

    instance-of v0, p1, Lcom/cyanogenmod/trebuchet/DeleteDropTarget;

    if-nez v0, :cond_1

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->exitSpringLoadedDragMode()V

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->unlockScreenOrientationOnLargeUI()V

    .line 711
    return-void
.end method

.method private findAppByComponent(Ljava/util/List;Lcom/cyanogenmod/trebuchet/ApplicationInfo;)I
    .locals 5
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            ">;",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1895
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cyanogenmod/trebuchet/ApplicationInfo;>;"
    iget-object v4, p2, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 1896
    .local v3, removeComponent:Landroid/content/ComponentName;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1897
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1898
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    .line 1899
    .local v1, info:Lcom/cyanogenmod/trebuchet/ApplicationInfo;
    iget-object v4, v1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1903
    .end local v0           #i:I
    .end local v1           #info:Lcom/cyanogenmod/trebuchet/ApplicationInfo;
    :goto_1
    return v0

    .line 1897
    .restart local v0       #i:I
    .restart local v1       #info:Lcom/cyanogenmod/trebuchet/ApplicationInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1903
    .end local v1           #info:Lcom/cyanogenmod/trebuchet/ApplicationInfo;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getMiddleComponentIndexOnCurrentPage()I
    .locals 9

    .prologue
    .line 330
    const/4 v3, -0x1

    .line 331
    .local v3, i:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getCurrentPage()I

    move-result v2

    .line 333
    .local v2, currentPage:I
    iget-boolean v7, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mJoinWidgetsApps:Z

    if-eqz v7, :cond_2

    .line 334
    iget v7, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v2, v7, :cond_1

    .line 335
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    .line 336
    .local v4, layout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;
    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->getChildrenLayout()Lcom/cyanogenmod/trebuchet/PagedViewCellLayoutChildren;

    move-result-object v1

    .line 337
    .local v1, childrenLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayoutChildren;
    iget v7, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountX:I

    iget v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountY:I

    mul-int v6, v7, v8

    .line 338
    .local v6, numItemsPerPage:I
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    .line 339
    .local v0, childCount:I
    if-lez v0, :cond_0

    .line 340
    mul-int v7, v2, v6

    div-int/lit8 v8, v0, 0x2

    add-int v3, v7, v8

    .line 374
    .end local v0           #childCount:I
    .end local v1           #childrenLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayoutChildren;
    .end local v2           #currentPage:I
    .end local v4           #layout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;
    .end local v6           #numItemsPerPage:I
    :cond_0
    :goto_0
    return v3

    .line 343
    .restart local v2       #currentPage:I
    :cond_1
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 344
    .local v5, numApps:I
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;

    .line 345
    .local v4, layout:Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;
    iget v7, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountX:I

    iget v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v6, v7, v8

    .line 346
    .restart local v6       #numItemsPerPage:I
    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->getChildCount()I

    move-result v0

    .line 347
    .restart local v0       #childCount:I
    if-lez v0, :cond_0

    .line 348
    iget v7, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int v7, v2, v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v5

    div-int/lit8 v8, v0, 0x2

    add-int v3, v7, v8

    goto :goto_0

    .line 353
    .end local v0           #childCount:I
    .end local v4           #layout:Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;
    .end local v5           #numApps:I
    .end local v6           #numItemsPerPage:I
    :cond_2
    sget-object v7, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$10;->$SwitchMap$com$cyanogenmod$trebuchet$AppsCustomizeView$ContentType:[I

    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mContentType:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    invoke-virtual {v8}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 355
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    .line 356
    .local v4, layout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;
    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->getChildrenLayout()Lcom/cyanogenmod/trebuchet/PagedViewCellLayoutChildren;

    move-result-object v1

    .line 357
    .restart local v1       #childrenLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayoutChildren;
    iget v7, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountX:I

    iget v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountY:I

    mul-int v6, v7, v8

    .line 358
    .restart local v6       #numItemsPerPage:I
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    .line 359
    .restart local v0       #childCount:I
    if-lez v0, :cond_0

    .line 360
    mul-int v7, v2, v6

    div-int/lit8 v8, v0, 0x2

    add-int v3, v7, v8

    goto :goto_0

    .line 364
    .end local v0           #childCount:I
    .end local v1           #childrenLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayoutChildren;
    .end local v4           #layout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;
    .end local v6           #numItemsPerPage:I
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;

    .line 365
    .local v4, layout:Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;
    iget v7, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountX:I

    iget v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v6, v7, v8

    .line 366
    .restart local v6       #numItemsPerPage:I
    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->getChildCount()I

    move-result v0

    .line 367
    .restart local v0       #childCount:I
    if-lez v0, :cond_0

    .line 368
    mul-int v7, v2, v6

    div-int/lit8 v8, v0, 0x2

    add-int v3, v7, v8

    goto :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getShortcutPreview(Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "info"

    .prologue
    .line 1222
    const/4 v3, 0x0

    .line 1223
    .local v3, offset:I
    iget v7, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mAppIconSize:I

    .line 1224
    .local v7, bitmapSize:I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1227
    .local v2, preview:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/IconCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1228
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mAppIconSize:I

    iget v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mAppIconSize:I

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1229
    return-object v2
.end method

.method private getSleepForPage(I)I
    .locals 3
    .parameter "page"

    .prologue
    .line 1042
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getWidgetPageLoadPriority(I)I

    move-result v0

    .line 1043
    .local v0, pageDiff:I
    const/4 v1, 0x0

    mul-int/lit16 v2, v0, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getTabHost()Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;
    .locals 2

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    const v1, 0x7f0e0024

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    return-object v0
.end method

.method private getThreadPriorityForPage(I)I
    .locals 2
    .parameter "page"

    .prologue
    .line 1032
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCurrentPage:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1033
    .local v0, pageDiff:I
    if-gtz v0, :cond_0

    .line 1034
    const/4 v1, -0x2

    .line 1038
    :goto_0
    return v1

    .line 1035
    :cond_0
    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 1036
    const/4 v1, -0x1

    goto :goto_0

    .line 1038
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getWidgetPageLoadPriority(I)I
    .locals 7
    .parameter "page"

    .prologue
    .line 1009
    iget v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCurrentPage:I

    .line 1010
    .local v4, toPage:I
    iget v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNextPage:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_0

    .line 1011
    iget v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNextPage:I

    .line 1017
    :cond_0
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1018
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;>;"
    const v1, 0x7fffffff

    .line 1019
    .local v1, minPageDiff:I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1020
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;

    .line 1021
    .local v3, task:Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;
    iget v5, v3, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;->page:I

    iget v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1022
    goto :goto_0

    .line 1024
    .end local v3           #task:Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;
    :cond_1
    sub-int v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1025
    .local v2, rawPageDiff:I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v5, v2, v5

    return v5
.end method

.method private getWidgetPreview(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1235
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1236
    if-gez p6, :cond_e

    const v2, 0x7fffffff

    .line 1237
    :goto_0
    if-gez p7, :cond_d

    const v0, 0x7fffffff

    .line 1239
    :goto_1
    const/4 v1, 0x0

    .line 1240
    if-eqz p2, :cond_0

    .line 1241
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v7, p2, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1242
    if-nez v1, :cond_0

    .line 1243
    const-string v3, "AppsCustomizePagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load widget preview drawable 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_0
    if-eqz v1, :cond_4

    const/4 v3, 0x1

    move v4, v3

    .line 1251
    :goto_2
    if-eqz v4, :cond_5

    .line 1252
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 1253
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 1256
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-virtual {v3, p4}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->estimateCellWidth(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1257
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-virtual {v3, p5}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->estimateCellHeight(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v3, v2

    move v2, v0

    .line 1275
    :goto_3
    const/high16 v0, 0x3f80

    .line 1276
    if-le v5, v3, :cond_1

    .line 1277
    int-to-float v0, v3

    int-to-float v3, v5

    div-float/2addr v0, v3

    .line 1279
    :cond_1
    int-to-float v3, v6

    mul-float/2addr v3, v0

    int-to-float v8, v2

    cmpl-float v3, v3, v8

    if-lez v3, :cond_2

    .line 1280
    int-to-float v0, v2

    int-to-float v2, v6

    div-float/2addr v0, v2

    .line 1282
    :cond_2
    const/high16 v2, 0x3f80

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3

    .line 1283
    int-to-float v2, v5

    mul-float/2addr v2, v0

    float-to-int v5, v2

    .line 1284
    int-to-float v2, v6

    mul-float/2addr v0, v2

    float-to-int v6, v0

    .line 1287
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1289
    if-eqz v4, :cond_7

    .line 1290
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1315
    :goto_4
    return-object v2

    .line 1250
    :cond_4
    const/4 v3, 0x0

    move v4, v3

    goto :goto_2

    .line 1262
    :cond_5
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-virtual {v3, p4}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->estimateCellWidth(I)I

    move-result v5

    .line 1263
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-virtual {v3, p5}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->estimateCellHeight(I)I

    move-result v6

    .line 1264
    if-ne p4, p5, :cond_c

    .line 1266
    iget v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v3, v3

    const/high16 v5, 0x3e80

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 1267
    const/4 v5, 0x1

    if-gt p4, v5, :cond_6

    .line 1268
    iget v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mAppIconSize:I

    mul-int/lit8 v3, v3, 0x2

    add-int v6, v5, v3

    move v5, v6

    move v3, v2

    move v2, v0

    goto :goto_3

    .line 1270
    :cond_6
    iget v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mAppIconSize:I

    mul-int/lit8 v3, v3, 0x4

    add-int v6, v5, v3

    move v5, v6

    move v3, v2

    move v2, v0

    goto :goto_3

    .line 1293
    :cond_7
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v0, v0

    const/high16 v1, 0x3e80

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1294
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1295
    int-to-float v1, v1

    iget v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mAppIconSize:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    div-float v0, v1, v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1296
    const/4 v0, 0x1

    if-ne p4, v0, :cond_8

    const/4 v0, 0x1

    if-eq p5, v0, :cond_9

    .line 1297
    :cond_8
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mDefaultWidgetBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1303
    :cond_9
    const/4 v1, 0x0

    .line 1304
    :try_start_0
    div-int/lit8 v0, v5, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v8

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    float-to-int v3, v0

    .line 1305
    div-int/lit8 v0, v6, 0x2

    int-to-float v0, v0

    iget v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float/2addr v0, v4

    float-to-int v4, v0

    .line 1306
    if-lez p3, :cond_a

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    invoke-virtual {v0, v7, p3}, Lcom/cyanogenmod/trebuchet/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1307
    :cond_a
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1308
    if-nez v1, :cond_b

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1310
    :cond_b
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v5, v0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 1313
    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_c
    move v3, v2

    move v2, v0

    goto/16 :goto_3

    :cond_d
    move/from16 v0, p7

    goto/16 :goto_1

    :cond_e
    move v2, p6

    goto/16 :goto_0
.end method

.method private loadWidgetPreviewsInBackground(Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;)V
    .locals 16
    .parameter "task"
    .parameter "data"

    .prologue
    .line 1425
    if-eqz p1, :cond_0

    .line 1427
    invoke-virtual/range {p1 .. p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 1431
    :cond_0
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 1432
    .local v15, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 1433
    .local v12, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 1434
    .local v14, item:Ljava/lang/Object;
    if-eqz p1, :cond_4

    .line 1436
    invoke-virtual/range {p1 .. p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1454
    .end local v14           #item:Ljava/lang/Object;
    :cond_2
    return-void

    .line 1439
    .restart local v14       #item:Ljava/lang/Object;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 1442
    :cond_4
    instance-of v1, v14, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v1, :cond_5

    move-object v13, v14

    .line 1443
    check-cast v13, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1444
    .local v13, info:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v13, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v10

    .line 1445
    .local v10, cellSpans:[I
    iget-object v2, v13, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v3, v13, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iget v4, v13, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v1, 0x0

    aget v5, v10, v1

    const/4 v1, 0x1

    aget v6, v10, v1

    move-object/from16 v0, p2

    iget v7, v0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->maxImageWidth:I

    move-object/from16 v0, p2

    iget v8, v0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->maxImageHeight:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getWidgetPreview(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1447
    .local v9, b:Landroid/graphics/Bitmap;
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1448
    .end local v9           #b:Landroid/graphics/Bitmap;
    .end local v10           #cellSpans:[I
    .end local v13           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_5
    instance-of v1, v14, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_1

    move-object v13, v14

    .line 1450
    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 1451
    .local v13, info:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getShortcutPreview(Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onSyncWidgetPageItems(Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;)V
    .locals 12
    .parameter "data"

    .prologue
    .line 1456
    iget v5, p1, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->page:I

    .line 1457
    .local v5, page:I
    iget v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/2addr v10, v5

    invoke-virtual {p0, v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;

    .line 1459
    .local v4, layout:Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;
    iget-object v3, p1, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 1460
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1461
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1462
    invoke-virtual {v4, v1}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/cyanogenmod/trebuchet/PagedViewWidget;

    .line 1463
    .local v9, widget:Lcom/cyanogenmod/trebuchet/PagedViewWidget;
    if-eqz v9, :cond_0

    .line 1464
    iget-object v10, p1, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 1465
    .local v7, preview:Landroid/graphics/Bitmap;
    new-instance v10, Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;

    invoke-direct {v10, v7}, Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->applyPreview(Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;)V

    .line 1461
    .end local v7           #preview:Landroid/graphics/Bitmap;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1469
    .end local v9           #widget:Lcom/cyanogenmod/trebuchet/PagedViewWidget;
    :cond_1
    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->createHardwareLayer()V

    .line 1470
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->invalidate()V

    .line 1479
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;

    .line 1480
    .local v8, task:Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;
    iget v10, v8, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;->page:I

    iget v11, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    add-int v6, v10, v11

    .line 1481
    .local v6, pageIndex:I
    invoke-direct {p0, v6}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_1

    .line 1483
    .end local v6           #pageIndex:I
    .end local v8           #task:Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;
    :cond_2
    return-void
.end method

.method private prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;II)V
    .locals 12
    .parameter "page"
    .parameter
    .parameter "cellWidth"
    .parameter "cellHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1052
    .local p2, widgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1053
    .local v7, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1054
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;

    .line 1055
    .local v10, task:Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;
    iget v1, v10, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;->page:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    add-int v11, v1, v2

    .line 1056
    .local v11, taskPage:I
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getAssociatedLowerPageBound(I)I

    move-result v1

    if-lt v11, v1, :cond_0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getAssociatedUpperPageBound(I)I

    move-result v1

    if-le v11, v1, :cond_1

    .line 1058
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;->cancel(Z)Z

    .line 1059
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1061
    :cond_1
    invoke-direct {p0, v11}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0

    .line 1066
    .end local v10           #task:Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;
    .end local v11           #taskPage:I
    :cond_2
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getSleepForPage(I)I

    move-result v8

    .line 1067
    .local v8, sleepMs:I
    new-instance v0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;

    new-instance v5, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$5;

    invoke-direct {v5, p0, v8}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$5;-><init>(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;I)V

    new-instance v6, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$6;

    invoke-direct {v6, p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$6;-><init>(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;)V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;-><init>(ILjava/util/ArrayList;IILcom/cyanogenmod/trebuchet/AsyncTaskCallback;Lcom/cyanogenmod/trebuchet/AsyncTaskCallback;)V

    .line 1101
    .local v0, pageData:Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;
    new-instance v9, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mContentType:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    sget-object v2, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData$Type;->LoadWidgetPreviewData:Lcom/cyanogenmod/trebuchet/AsyncTaskPageData$Type;

    invoke-direct {v9, p1, v1, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;-><init>(ILcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;Lcom/cyanogenmod/trebuchet/AsyncTaskPageData$Type;)V

    .line 1103
    .local v9, t:Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    .line 1104
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v9, v1, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1105
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    return-void
.end method

.method private removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1907
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    .line 1908
    .local v1, info:Lcom/cyanogenmod/trebuchet/ApplicationInfo;
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->findAppByComponent(Ljava/util/List;Lcom/cyanogenmod/trebuchet/ApplicationInfo;)I

    move-result v2

    .line 1909
    .local v2, removeIndex:I
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 1910
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1913
    .end local v1           #info:Lcom/cyanogenmod/trebuchet/ApplicationInfo;
    .end local v2           #removeIndex:I
    :cond_1
    return-void
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 9
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1202
    const/high16 v7, 0x3f80

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    .line 1203
    return-void
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V
    .locals 4
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "scale"
    .parameter "multiplyColor"

    .prologue
    .line 1207
    if-eqz p2, :cond_1

    .line 1208
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1209
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, p7, p7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1210
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1211
    .local v1, oldBounds:Landroid/graphics/Rect;
    add-int v2, p3, p5

    add-int v3, p4, p6

    invoke-virtual {p1, p3, p4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1212
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1213
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1214
    const/4 v2, -0x1

    if-eq p8, v2, :cond_0

    .line 1215
    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mDragViewMultiplyColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1217
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1219
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #oldBounds:Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method private screenScrolledCube(IZ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1656
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1657
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 1658
    if-eqz v3, :cond_1

    .line 1659
    invoke-virtual {p0, p1, v3, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 1660
    if-eqz p2, :cond_2

    const/high16 v1, 0x42b4

    :goto_1
    mul-float v5, v1, v4

    .line 1661
    const/high16 v1, 0x3f80

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v1, v6

    .line 1663
    if-eqz p2, :cond_0

    .line 1664
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mDensity:F

    const v7, 0x45cb2000

    mul-float/2addr v1, v7

    invoke-virtual {v3, v1}, Landroid/view/View;->setCameraDistance(F)V

    .line 1667
    :cond_0
    cmpg-float v1, v4, v2

    if-gez v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1668
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3f00

    mul-float/2addr v1, v4

    invoke-virtual {v3, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1669
    invoke-virtual {v3, v5}, Landroid/view/View;->setRotationY(F)V

    .line 1670
    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1656
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1660
    :cond_2
    const/high16 v1, -0x3d4c

    goto :goto_1

    .line 1667
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_2

    .line 1673
    :cond_4
    return-void
.end method

.method private screenScrolledRotate(IZ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x3f00

    .line 1626
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1627
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1628
    if-eqz v2, :cond_0

    .line 1629
    invoke-virtual {p0, p1, v2, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1630
    if-eqz p2, :cond_1

    const/high16 v1, 0x4148

    :goto_1
    mul-float/2addr v1, v3

    .line 1632
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    .line 1634
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    const-wide/high16 v6, 0x4019

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v5, v6

    .line 1638
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    invoke-virtual {v2, v6}, Landroid/view/View;->setPivotX(F)V

    .line 1639
    if-eqz p2, :cond_2

    .line 1640
    neg-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setPivotY(F)V

    .line 1645
    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setRotation(F)V

    .line 1646
    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 1647
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mFadeInAdjacentScreens:Z

    if-eqz v1, :cond_0

    .line 1648
    const/high16 v1, 0x3f80

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v1, v3

    .line 1649
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1626
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1630
    :cond_1
    const/high16 v1, -0x3eb8

    goto :goto_1

    .line 1642
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/view/View;->setPivotY(F)V

    goto :goto_2

    .line 1653
    :cond_3
    return-void
.end method

.method private screenScrolledStack(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x3f80

    const/4 v8, 0x0

    .line 1676
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 1677
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 1678
    if-eqz v4, :cond_1

    .line 1679
    invoke-virtual {p0, p1, v4, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v2

    .line 1680
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mZInterpolator:Lcom/cyanogenmod/trebuchet/Workspace$ZInterpolator;

    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/cyanogenmod/trebuchet/Workspace$ZInterpolator;->getInterpolation(F)F

    move-result v5

    .line 1682
    sub-float v6, v3, v5

    const v7, 0x3f428f5c

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    .line 1683
    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    .line 1686
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v7

    if-eqz v7, :cond_0

    cmpg-float v7, v2, v8

    if-gez v7, :cond_3

    .line 1687
    :cond_0
    cmpg-float v7, v2, v8

    if-gez v7, :cond_2

    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v3, v2

    invoke-virtual {v7, v2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .line 1694
    :goto_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1695
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    .line 1696
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    .line 1697
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1701
    const v5, 0x3caaaaab

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_4

    .line 1702
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1676
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1687
    goto :goto_1

    .line 1691
    :cond_3
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float v2, v3, v2

    invoke-virtual {v7, v2}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_1

    .line 1703
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1704
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1708
    :cond_5
    return-void
.end method

.method private screenScrolledStandard(I)V
    .locals 6
    .parameter "screenScroll"

    .prologue
    .line 1572
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1573
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 1574
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1575
    invoke-virtual {p0, p1, v3, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v2

    .line 1576
    .local v2, scrollProgress:F
    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mFadeInAdjacentScreens:Z

    if-eqz v4, :cond_0

    .line 1577
    const/high16 v4, 0x3f80

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v0, v4, v5

    .line 1578
    .local v0, alpha:F
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1572
    .end local v0           #alpha:F
    .end local v2           #scrollProgress:F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1582
    .end local v3           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private screenScrolledTablet(I)V
    .locals 7
    .parameter

    .prologue
    .line 1585
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1586
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 1587
    if-eqz v1, :cond_0

    .line 1588
    invoke-virtual {p0, p1, v1, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v2

    .line 1589
    const/high16 v3, 0x4148

    mul-float/2addr v3, v2

    .line 1590
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/cyanogenmod/trebuchet/Workspace;->getOffsetXForRotation(FII)F

    move-result v4

    .line 1592
    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 1593
    invoke-virtual {v1, v3}, Landroid/view/View;->setRotationY(F)V

    .line 1594
    iget-boolean v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mFadeInAdjacentScreens:Z

    if-eqz v3, :cond_0

    .line 1595
    const/high16 v3, 0x3f80

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v3, v2

    .line 1596
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1585
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1600
    :cond_1
    return-void
.end method

.method private screenScrolledZoom(IZ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x3f80

    const v2, 0x3dcccccd

    .line 1603
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1604
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 1605
    if-eqz v3, :cond_1

    .line 1606
    invoke-virtual {p0, p1, v3, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 1607
    if-eqz p2, :cond_2

    const v1, -0x41b33333

    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v1, v5

    add-float/2addr v1, v7

    .line 1610
    if-nez p2, :cond_0

    .line 1611
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    neg-float v6, v4

    mul-float/2addr v5, v6

    .line 1612
    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 1615
    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1616
    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1617
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mFadeInAdjacentScreens:Z

    if-eqz v1, :cond_1

    .line 1618
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v7, v1

    .line 1619
    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1603
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1607
    goto :goto_1

    .line 1623
    :cond_3
    return-void
.end method

.method private setVisibilityOnChildren(Landroid/view/ViewGroup;I)V
    .locals 3
    .parameter "layout"
    .parameter "visibility"

    .prologue
    .line 945
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 946
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 947
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 946
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 949
    :cond_0
    return-void
.end method

.method private setupPage(Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;)V
    .locals 7
    .parameter "layout"

    .prologue
    const/high16 v6, -0x8000

    .line 951
    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountX:I

    iget v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountY:I

    invoke-virtual {p1, v2, v3}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->setCellCount(II)V

    .line 952
    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutWidthGap:I

    iget v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutHeightGap:I

    invoke-virtual {p1, v2, v3}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->setGap(II)V

    .line 953
    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    iget v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    iget v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    iget v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->setPadding(IIII)V

    .line 960
    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 961
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 962
    .local v1, widthSpec:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 963
    .local v0, heightSpec:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->setMinimumWidth(I)V

    .line 964
    invoke-virtual {p1, v1, v0}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->measure(II)V

    .line 965
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 966
    return-void
.end method

.method private setupPage(Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;)V
    .locals 7
    .parameter "layout"

    .prologue
    const/high16 v6, -0x8000

    .line 1190
    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    iget v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    iget v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    iget v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->setPadding(IIII)V

    .line 1195
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1196
    .local v1, widthSpec:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1197
    .local v0, heightSpec:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->setMinimumWidth(I)V

    .line 1198
    invoke-virtual {p1, v1, v0}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->measure(II)V

    .line 1199
    return-void
.end method

.method private testDataReady()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 418
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mContentType:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    sget-object v3, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Widgets:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mJoinWidgetsApps:Z

    if-eqz v2, :cond_3

    .line 419
    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 421
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 419
    goto :goto_0

    .line 421
    :cond_3
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private updateCurrentTab(I)V
    .locals 3
    .parameter "currentPage"

    .prologue
    .line 803
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getTabHost()Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    move-result-object v0

    .line 804
    .local v0, tabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;
    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 806
    .local v1, tag:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 807
    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    if-lt p1, v2, :cond_1

    sget-object v2, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Widgets:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 809
    sget-object v2, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Widgets:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)V

    .line 816
    .end local v1           #tag:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 810
    .restart local v1       #tag:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge p1, v2, :cond_0

    sget-object v2, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Apps:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 812
    sget-object v2, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Apps:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)V

    goto :goto_0
.end method

.method private updatePageCounts()V
    .locals 3

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mJoinWidgetsApps:Z

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountX:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumWidgetPages:I

    .line 436
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountX:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    .line 438
    :cond_0
    return-void
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1890
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1891
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->updatePageCounts()V

    .line 1892
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->invalidatePageData()V

    .line 1893
    return-void
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 687
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->dismissAllAppsCling(Landroid/view/View;)V

    .line 689
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedViewWithDraggableItems;->beginDragging(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 699
    :goto_0
    return v0

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->enterSpringLoadedDragMode()V

    .line 694
    instance-of v0, p1, Lcom/cyanogenmod/trebuchet/PagedViewIcon;

    if-eqz v0, :cond_2

    .line 695
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->beginDraggingApplication(Landroid/view/View;)V

    .line 699
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 696
    :cond_2
    instance-of v0, p1, Lcom/cyanogenmod/trebuchet/PagedViewWidget;

    if-eqz v0, :cond_1

    .line 697
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->beginDraggingWidget(Landroid/view/View;)V

    goto :goto_1
.end method

.method public clearAllWidgetPreviews()V
    .locals 5

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->cancelAllTasks()V

    .line 746
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 747
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 748
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 749
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;

    if-eqz v3, :cond_0

    .line 750
    check-cast v2, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->removeAllViewsOnPage()V

    .line 751
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 747
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 754
    :cond_1
    return-void
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 620
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 1964
    const-string v0, "AppsCustomizePagedView"

    const-string v1, "mApps"

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1965
    const-string v0, "AppsCustomizePagedView"

    const-string v1, "mWidgets"

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->dumpAppWidgetProviderInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1966
    return-void
.end method

.method protected flashScrollingIndicator(Z)V
    .locals 1
    .parameter "animated"

    .prologue
    .line 1802
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mFadeScrollingIndicator:Z

    if-eqz v0, :cond_0

    .line 1803
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedViewWithDraggableItems;->flashScrollingIndicator(Z)V

    .line 1807
    :goto_0
    return-void

    .line 1805
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->showScrollingIndicator(Z)V

    goto :goto_0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 5
    .parameter "page"

    .prologue
    .line 2003
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 2004
    .local v0, count:I
    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2005
    .local v2, windowSize:I
    add-int/lit8 v3, p1, -0x2

    sub-int v4, v0, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2006
    .local v1, windowMinIndex:I
    return v1
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 5
    .parameter "page"

    .prologue
    .line 2009
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 2010
    .local v0, count:I
    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2011
    .local v2, windowSize:I
    add-int/lit8 v3, p1, 0x2

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2013
    .local v1, windowMaxIndex:I
    return v1
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 10

    .prologue
    const v1, 0x7f090051

    const v2, 0x7f090050

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2018
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNextPage:I

    .line 2019
    :goto_0
    const v3, 0x7f09004e

    .line 2021
    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mJoinWidgetsApps:Z

    if-eqz v4, :cond_2

    .line 2024
    iget v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v0, v3, :cond_1

    .line 2026
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    move v9, v1

    move v1, v2

    move v2, v0

    move v0, v9

    .line 2033
    :goto_1
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2043
    :goto_2
    return-object v0

    .line 2018
    :cond_0
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCurrentPage:I

    goto :goto_0

    .line 2028
    :cond_1
    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int v2, v0, v2

    .line 2030
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumWidgetPages:I

    goto :goto_1

    .line 2035
    :cond_2
    sget-object v4, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$10;->$SwitchMap$com$cyanogenmod$trebuchet$AppsCustomizeView$ContentType:[I

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mContentType:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 2043
    :goto_3
    :pswitch_0
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    move v2, v1

    .line 2040
    goto :goto_3

    .line 2035
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 1563
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageContentWidth()I
    .locals 1

    .prologue
    .line 1786
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mContentWidth:I

    return v0
.end method

.method getPageForComponent(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 388
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mJoinWidgetsApps:Z

    if-eqz v1, :cond_2

    .line 389
    if-gez p1, :cond_0

    const/4 v1, 0x0

    .line 408
    :goto_0
    return v1

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 392
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountX:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountY:I

    mul-int v0, v1, v2

    .line 393
    .local v0, numItemsPerPage:I
    div-int v1, p1, v0

    goto :goto_0

    .line 395
    .end local v0           #numItemsPerPage:I
    :cond_1
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountX:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v0, v1, v2

    .line 396
    .restart local v0       #numItemsPerPage:I
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, p1, v2

    div-int/2addr v2, v0

    add-int/2addr v1, v2

    goto :goto_0

    .line 399
    .end local v0           #numItemsPerPage:I
    :cond_2
    sget-object v1, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$10;->$SwitchMap$com$cyanogenmod$trebuchet$AppsCustomizeView$ContentType:[I

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mContentType:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 408
    const/4 v1, -0x1

    goto :goto_0

    .line 401
    :pswitch_0
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountX:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountY:I

    mul-int v0, v1, v2

    .line 402
    .restart local v0       #numItemsPerPage:I
    div-int v1, p1, v0

    goto :goto_0

    .line 405
    .end local v0           #numItemsPerPage:I
    :pswitch_1
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountX:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v0, v1, v2

    .line 406
    .restart local v0       #numItemsPerPage:I
    div-int v1, p1, v0

    goto :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSaveInstanceStateIndex()I
    .locals 2

    .prologue
    .line 379
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getMiddleComponentIndexOnCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 382
    :cond_0
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    return v0
.end method

.method public getSortMode()Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;
    .locals 1

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mSortMode:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    return-object v0
.end method

.method public hideIndicator(Z)V
    .locals 0
    .parameter "immediately"

    .prologue
    .line 1853
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->hideScrollingIndicator(Z)V

    .line 1854
    return-void
.end method

.method protected indexToPage(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 311
    invoke-super {p0}, Lcom/cyanogenmod/trebuchet/PagedViewWithDraggableItems;->init()V

    .line 312
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCenterPagesVertically:Z

    .line 314
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 315
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 316
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->setDragSlopeThreshold(F)V

    .line 317
    return-void
.end method

.method public isContentType(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mContentType:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadContent()V
    .locals 1

    .prologue
    .line 838
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 839
    return-void
.end method

.method public loadContent(Z)V
    .locals 1
    .parameter "immediately"

    .prologue
    .line 842
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->loadAssociatedPages(IZ)V

    .line 843
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 579
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v6}, Lcom/cyanogenmod/trebuchet/Launcher;->isAllAppsCustomizeOpen()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v6}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cyanogenmod/trebuchet/Workspace;->isSwitchingState()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    instance-of v6, p1, Lcom/cyanogenmod/trebuchet/PagedViewIcon;

    if-eqz v6, :cond_2

    .line 584
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    .line 585
    .local v0, appInfo:Lcom/cyanogenmod/trebuchet/ApplicationInfo;
    new-instance v6, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$3;

    invoke-direct {v6, p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$3;-><init>(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;Lcom/cyanogenmod/trebuchet/ApplicationInfo;)V

    invoke-virtual {p0, p1, v6}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 591
    .end local v0           #appInfo:Lcom/cyanogenmod/trebuchet/ApplicationInfo;
    :cond_2
    instance-of v6, p1, Lcom/cyanogenmod/trebuchet/PagedViewWidget;

    if-eqz v6, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f09000c

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 597
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0036

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v2, v6

    .line 598
    .local v2, offsetY:F
    const v6, 0x7f0e0012

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 599
    .local v3, p:Landroid/widget/ImageView;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 600
    .local v1, bounce:Landroid/animation/AnimatorSet;
    const-string v6, "translationY"

    new-array v7, v8, [F

    aput v2, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 601
    .local v5, tyuAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x7d

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 602
    const-string v6, "translationY"

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 603
    .local v4, tydAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 604
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 605
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 606
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method protected onDataReady(II)V
    .locals 13
    .parameter "width"
    .parameter "height"

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const/4 v3, 0x1

    .line 444
    .local v3, isLandscape:Z
    :goto_0
    const v4, 0x7fffffff

    .line 445
    .local v4, maxCellCountX:I
    const v5, 0x7fffffff

    .line 446
    .local v5, maxCellCountY:I
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 447
    if-eqz v3, :cond_5

    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getCellCountX()I

    move-result v4

    .line 449
    :goto_1
    if-eqz v3, :cond_6

    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getCellCountY()I

    move-result v5

    .line 452
    :cond_0
    :goto_2
    iget v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mMaxAppCellCountX:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_1

    .line 453
    iget v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mMaxAppCellCountX:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 455
    :cond_1
    iget v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mMaxAppCellCountY:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_2

    .line 456
    iget v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mMaxAppCellCountY:I

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 461
    :cond_2
    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    iget v9, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutWidthGap:I

    iget v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutHeightGap:I

    invoke-virtual {v8, v9, v10}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->setGap(II)V

    .line 462
    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    iget v9, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    iget v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    iget v11, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    iget v12, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->setPadding(IIII)V

    .line 464
    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-virtual {v8, p1, p2, v4, v5}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->calculateCellCount(IIII)V

    .line 465
    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-virtual {v8}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->getCellCountX()I

    move-result v8

    iput v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountX:I

    .line 466
    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-virtual {v8}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->getCellCountY()I

    move-result v8

    iput v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountY:I

    .line 467
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->updatePageCounts()V

    .line 470
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v8

    const/high16 v9, -0x8000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 471
    .local v7, widthSpec:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v8

    const/high16 v9, -0x8000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 472
    .local v0, heightSpec:I
    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-virtual {v8, v7, v0}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->measure(II)V

    .line 473
    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-virtual {v8}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->getContentWidth()I

    move-result v8

    iput v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mContentWidth:I

    .line 475
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getTabHost()Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    move-result-object v1

    .line 476
    .local v1, host:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->isTransitioning()Z

    move-result v2

    .line 479
    .local v2, hostIsTransitioning:Z
    iget v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    invoke-virtual {p0, v8}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageForComponent(I)I

    move-result v6

    .line 480
    .local v6, page:I
    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p0, v8, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->invalidatePageData(IZ)V

    .line 485
    if-nez v2, :cond_3

    .line 486
    new-instance v8, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$1;

    invoke-direct {v8, p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$1;-><init>(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;)V

    invoke-virtual {p0, v8}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    .line 493
    :cond_3
    return-void

    .line 442
    .end local v0           #heightSpec:I
    .end local v1           #host:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;
    .end local v2           #hostIsTransitioning:Z
    .end local v3           #isLandscape:Z
    .end local v4           #maxCellCountX:I
    .end local v5           #maxCellCountY:I
    .end local v6           #page:I
    .end local v7           #widthSpec:I
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 447
    .restart local v3       #isLandscape:Z
    .restart local v4       #maxCellCountX:I
    .restart local v5       #maxCellCountY:I
    :cond_5
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getCellCountY()I

    move-result v4

    goto/16 :goto_1

    .line 449
    :cond_6
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getCellCountX()I

    move-result v5

    goto/16 :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 740
    invoke-super {p0}, Lcom/cyanogenmod/trebuchet/PagedViewWithDraggableItems;->onDetachedFromWindow()V

    .line 741
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->cancelAllTasks()V

    .line 742
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;Z)V
    .locals 8
    .parameter "target"
    .parameter "d"
    .parameter "success"

    .prologue
    .line 715
    invoke-direct {p0, p1, p3}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->endDragging(Landroid/view/View;Z)V

    .line 719
    if-nez p3, :cond_1

    .line 720
    const/4 v3, 0x0

    .line 721
    .local v3, showOutOfSpaceMessage:Z
    instance-of v5, p1, Lcom/cyanogenmod/trebuchet/Workspace;

    if-eqz v5, :cond_0

    .line 722
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/Launcher;->getCurrentWorkspaceScreen()I

    move-result v0

    .local v0, currentScreen:I
    move-object v4, p1

    .line 723
    check-cast v4, Lcom/cyanogenmod/trebuchet/Workspace;

    .line 724
    .local v4, workspace:Lcom/cyanogenmod/trebuchet/Workspace;
    invoke-virtual {v4, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 725
    .local v2, layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    iget-object v1, p2, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 726
    .local v1, itemInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;
    if-eqz v2, :cond_0

    .line 727
    invoke-virtual {v2, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->calculateSpans(Lcom/cyanogenmod/trebuchet/ItemInfo;)V

    .line 728
    const/4 v5, 0x0

    iget v6, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanX:I

    iget v7, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanY:I

    invoke-virtual {v2, v5, v6, v7}, Lcom/cyanogenmod/trebuchet/CellLayout;->findCellForSpan([III)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    .line 732
    .end local v0           #currentScreen:I
    .end local v1           #itemInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;
    .end local v2           #layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    .end local v4           #workspace:Lcom/cyanogenmod/trebuchet/Workspace;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 733
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/Launcher;->showOutOfSpaceMessage()V

    .line 736
    .end local v3           #showOutOfSpaceMessage:Z
    :cond_1
    return-void

    .line 728
    .restart local v0       #currentScreen:I
    .restart local v1       #itemInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;
    .restart local v2       #layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    .restart local v3       #showOutOfSpaceMessage:Z
    .restart local v4       #workspace:Lcom/cyanogenmod/trebuchet/Workspace;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 611
    invoke-static {p1, p2, p3}, Lcom/cyanogenmod/trebuchet/FocusHelper;->handleAppsCustomizeKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 519
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 520
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 521
    .local v0, height:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 522
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->testDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->setDataIsReady()V

    .line 524
    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->setMeasuredDimension(II)V

    .line 525
    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->onDataReady(II)V

    .line 529
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/PagedViewWithDraggableItems;->onMeasure(II)V

    .line 530
    return-void
.end method

.method public onPackagesUpdated()V
    .locals 3

    .prologue
    .line 538
    new-instance v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$2;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$2;-><init>(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 543
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 1791
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mFadeScrollingIndicator:Z

    if-eqz v0, :cond_0

    .line 1792
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->hideScrollingIndicator(Z)V

    .line 1797
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 1798
    return-void
.end method

.method public onTabChanged(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)V
    .locals 2
    .parameter

    .prologue
    .line 846
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->isContentType(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mJoinWidgetsApps:Z

    if-eqz v0, :cond_1

    .line 848
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 849
    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 853
    new-instance v1, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;-><init>(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;I)V

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    .line 939
    :cond_1
    return-void
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 321
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->showWorkspace(Z)V

    .line 325
    :cond_0
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 1778
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->acceleratedOverScroll(F)V

    .line 1779
    return-void
.end method

.method public reloadCurrentPage()V
    .locals 1

    .prologue
    .line 830
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->flashScrollingIndicator(Z)V

    .line 833
    :cond_0
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 834
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->requestFocus()Z

    .line 835
    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1916
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1917
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->updatePageCounts()V

    .line 1918
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->invalidatePageData()V

    .line 1919
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 1934
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mJoinWidgetsApps:Z

    if-eqz v0, :cond_2

    .line 1935
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getTabHost()Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    move-result-object v0

    .line 1936
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 1937
    if-eqz v1, :cond_0

    .line 1938
    sget-object v2, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Apps:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1939
    sget-object v1, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Apps:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)V

    .line 1952
    :cond_0
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCurrentPage:I

    if-eqz v0, :cond_1

    .line 1953
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->invalidatePageData(I)V

    .line 1955
    :cond_1
    :goto_0
    return-void

    .line 1943
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mContentType:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    sget-object v1, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Apps:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    if-eq v0, v1, :cond_0

    .line 1945
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    const v1, 0x7f0e0024

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    .line 1947
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->selectAppsTab()V

    goto :goto_0
.end method

.method public restore(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 427
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 428
    if-gez p1, :cond_0

    .line 430
    :goto_0
    return-void

    .line 429
    :cond_0
    iput p1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    goto :goto_0
.end method

.method protected screenScrolled(I)V
    .locals 7
    .parameter

    .prologue
    const/high16 v4, 0x44a0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 1713
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedViewWithDraggableItems;->screenScrolled(I)V

    .line 1715
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mOverScrollX:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mOverScrollX:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mMaxScrollX:I

    if-le v1, v2, :cond_4

    .line 1716
    :cond_0
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mOverScrollX:I

    if-gez v1, :cond_2

    .line 1717
    :goto_0
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 1718
    if-eqz v1, :cond_1

    .line 1719
    invoke-virtual {p0, p1, v1, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v2

    .line 1720
    const/high16 v3, -0x3e50

    mul-float/2addr v2, v3

    .line 1721
    iget v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mDensity:F

    const v4, 0x45cb2000

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setCameraDistance(F)V

    .line 1722
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    if-nez v0, :cond_3

    const v0, 0x3f266666

    :goto_1
    mul-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1723
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x3f00

    mul-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1724
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationY(F)V

    .line 1725
    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 1726
    iput-boolean v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mOverscrollTransformsDirty:Z

    .line 1775
    :cond_1
    :goto_2
    return-void

    .line 1716
    :cond_2
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1722
    :cond_3
    const v0, 0x3eb33334

    goto :goto_1

    .line 1730
    :cond_4
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mOverscrollTransformsDirty:Z

    if-eqz v1, :cond_5

    .line 1731
    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mOverscrollTransformsDirty:Z

    .line 1732
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 1733
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1734
    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 1735
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 1736
    invoke-virtual {v1, v5}, Landroid/view/View;->setRotationY(F)V

    .line 1737
    invoke-virtual {v2, v5}, Landroid/view/View;->setRotationY(F)V

    .line 1738
    iget v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mDensity:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setCameraDistance(F)V

    .line 1739
    iget v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mDensity:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setCameraDistance(F)V

    .line 1740
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1741
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1742
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 1743
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1745
    :cond_5
    sget-object v1, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$10;->$SwitchMap$com$cyanogenmod$trebuchet$AppsCustomizePagedView$TransitionEffect:[I

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mTransitionEffect:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 1747
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->screenScrolledStandard(I)V

    goto :goto_2

    .line 1750
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->screenScrolledTablet(I)V

    goto :goto_2

    .line 1753
    :pswitch_2
    invoke-direct {p0, p1, v6}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->screenScrolledZoom(IZ)V

    goto :goto_2

    .line 1756
    :pswitch_3
    invoke-direct {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->screenScrolledZoom(IZ)V

    goto :goto_2

    .line 1759
    :pswitch_4
    invoke-direct {p0, p1, v6}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->screenScrolledRotate(IZ)V

    goto/16 :goto_2

    .line 1762
    :pswitch_5
    invoke-direct {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->screenScrolledRotate(IZ)V

    goto/16 :goto_2

    .line 1765
    :pswitch_6
    invoke-direct {p0, p1, v6}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->screenScrolledCube(IZ)V

    goto/16 :goto_2

    .line 1768
    :pswitch_7
    invoke-direct {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->screenScrolledCube(IZ)V

    goto/16 :goto_2

    .line 1771
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->screenScrolledStack(I)V

    goto/16 :goto_2

    .line 1745
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1862
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ApplicationInfo;>;"
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 1863
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mSortMode:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    sget-object v1, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;->Title:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    if-ne v0, v1, :cond_2

    .line 1864
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    sget-object v1, Lcom/cyanogenmod/trebuchet/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1868
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->updatePageCounts()V

    .line 1872
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->testDataReady()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->requestLayout()V

    .line 1873
    :cond_1
    return-void

    .line 1865
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mSortMode:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    sget-object v1, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;->InstallDate:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    if-ne v0, v1, :cond_0

    .line 1866
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    sget-object v1, Lcom/cyanogenmod/trebuchet/LauncherModel;->APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public setContentType(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 771
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mContentType:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    .line 772
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mJoinWidgetsApps:Z

    if-eqz v2, :cond_2

    .line 773
    sget-object v2, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Widgets:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    if-ne p1, v2, :cond_1

    .line 774
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->invalidatePageData(IZ)V

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    sget-object v2, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Apps:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    if-ne p1, v2, :cond_0

    .line 776
    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->invalidatePageData(IZ)V

    goto :goto_0

    .line 779
    :cond_2
    sget-object v2, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Apps:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    if-eq p1, v2, :cond_3

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->invalidatePageData(IZ)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public setCurrentToWidgets()V
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->invalidatePageData(I)V

    .line 827
    return-void
.end method

.method public setSortMode(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;)V
    .locals 4
    .parameter "sortMode"

    .prologue
    const/4 v3, 0x1

    .line 1823
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mSortMode:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    if-ne v1, p1, :cond_1

    .line 1846
    :cond_0
    return-void

    .line 1827
    :cond_1
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mSortMode:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    .line 1829
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mSortMode:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    sget-object v2, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;->Title:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    if-ne v1, v2, :cond_3

    .line 1830
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1835
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mJoinWidgetsApps:Z

    if-eqz v1, :cond_4

    .line 1836
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v0, v1, :cond_0

    .line 1837
    invoke-virtual {p0, v0, v3}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->syncAppsPageItems(IZ)V

    .line 1836
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1831
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mSortMode:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    sget-object v2, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;->InstallDate:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    if-ne v1, v2, :cond_2

    .line 1832
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 1840
    :cond_4
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mContentType:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    sget-object v2, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Apps:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    if-ne v1, v2, :cond_0

    .line 1841
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1842
    invoke-virtual {p0, v0, v3}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->syncAppsPageItems(IZ)V

    .line 1841
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setup(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/DragController;)V
    .locals 0
    .parameter "launcher"
    .parameter "dragController"

    .prologue
    .line 1814
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    .line 1815
    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    .line 1816
    return-void
.end method

.method public showAllAppsCling()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 496
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getTabHost()Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    move-result-object v3

    .line 497
    .local v3, tabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;
    if-nez v3, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    const v4, 0x7f0e000d

    invoke-virtual {v3, v4}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/Cling;

    .line 499
    .local v0, allAppsCling:Lcom/cyanogenmod/trebuchet/Cling;
    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mHasShownAllAppsCling:Z

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->isDataReady()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->testDataReady()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 500
    iput-boolean v7, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mHasShownAllAppsCling:Z

    .line 502
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 503
    .local v1, offset:[I
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    iget v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mClingFocusedX:I

    iget v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mClingFocusedY:I

    invoke-virtual {v4, v5, v6}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->estimateCellPosition(II)[I

    move-result-object v2

    .line 504
    .local v2, pos:[I
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v4

    invoke-virtual {v4, p0, v1}, Lcom/cyanogenmod/trebuchet/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 506
    aget v4, v2, v8

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-virtual {v6}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    aget v6, v1, v8

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    aput v4, v2, v8

    .line 508
    aget v4, v2, v7

    aget v5, v1, v7

    add-int/2addr v4, v5

    aput v4, v2, v7

    .line 509
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v4, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->showFirstRunAllAppsCling([I)V

    goto :goto_0

    .line 510
    .end local v1           #offset:[I
    .end local v2           #pos:[I
    :cond_2
    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mHasShownAllAppsSortCling:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->isDataReady()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->testDataReady()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Cling;->isDismissed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 512
    iput-boolean v7, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mHasShownAllAppsSortCling:Z

    .line 513
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/Launcher;->showFirstRunAllAppsSortCling()V

    goto :goto_0
.end method

.method public showIndicator(Z)V
    .locals 0
    .parameter "immediately"

    .prologue
    .line 1849
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->showScrollingIndicator(Z)V

    .line 1850
    return-void
.end method

.method protected snapToPage(III)V
    .locals 5
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    .line 784
    invoke-super {p0, p1, p2, p3}, Lcom/cyanogenmod/trebuchet/PagedViewWithDraggableItems;->snapToPage(III)V

    .line 786
    iget-boolean v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mJoinWidgetsApps:Z

    if-eqz v3, :cond_0

    .line 787
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->updateCurrentTab(I)V

    .line 791
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;

    .line 792
    .local v2, task:Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;
    iget v3, v2, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;->page:I

    iget v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    add-int v1, v3, v4

    .line 793
    .local v1, pageIndex:I
    iget v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNextPage:I

    iget v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCurrentPage:I

    if-le v3, v4, :cond_1

    iget v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCurrentPage:I

    if-ge v1, v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNextPage:I

    iget v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCurrentPage:I

    if-ge v3, v4, :cond_3

    iget v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCurrentPage:I

    if-gt v1, v3, :cond_3

    .line 795
    :cond_2
    invoke-direct {p0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0

    .line 797
    :cond_3
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0

    .line 800
    .end local v1           #pageIndex:I
    .end local v2           #task:Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;
    :cond_4
    return-void
.end method

.method public surrender()V
    .locals 0

    .prologue
    .line 1992
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1993
    return-void
.end method

.method public syncAppsPageItems(IZ)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 979
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountX:I

    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountY:I

    mul-int/2addr v0, v1

    .line 980
    mul-int v4, p1, v0

    .line 981
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 982
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    .line 984
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->removeAllViewsOnPage()V

    move v3, v4

    .line 985
    :goto_0
    if-ge v3, v5, :cond_0

    .line 986
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    .line 987
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030004

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/trebuchet/PagedViewIcon;

    .line 989
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mHolographicOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    invoke-virtual {v2, v1, v6}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->applyFromApplicationInfo(Lcom/cyanogenmod/trebuchet/ApplicationInfo;Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;)V

    .line 990
    invoke-virtual {v2, p0}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    invoke-virtual {v2, p0}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 992
    invoke-virtual {v2, p0}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 993
    invoke-virtual {v2, p0}, Lcom/cyanogenmod/trebuchet/PagedViewIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 995
    sub-int v1, v3, v4

    .line 996
    iget v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountX:I

    rem-int v6, v1, v6

    .line 997
    iget v7, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountX:I

    div-int/2addr v1, v7

    .line 998
    const/4 v7, -0x1

    new-instance v8, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;

    invoke-direct {v8, v6, v1, v9, v9}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v2, v7, v3, v8}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;)Z

    .line 985
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 1001
    :cond_0
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->createHardwareLayers()V

    .line 1002
    return-void
.end method

.method public syncAppsPages()V
    .locals 7

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 970
    .local v0, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountX:I

    iget v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mCellCountY:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 971
    .local v3, numPages:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 972
    new-instance v2, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-direct {v2, v0}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 973
    .local v2, layout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;
    invoke-direct {p0, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->setupPage(Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;)V

    .line 974
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->addView(Landroid/view/View;)V

    .line 971
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 976
    .end local v2           #layout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;
    :cond_0
    return-void
.end method

.method public syncPageItems(IZ)V
    .locals 2
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 1542
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mJoinWidgetsApps:Z

    if-eqz v0, :cond_1

    .line 1543
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge p1, v0, :cond_0

    .line 1544
    invoke-virtual {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->syncAppsPageItems(IZ)V

    .line 1558
    :goto_0
    return-void

    .line 1546
    :cond_0
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0, p2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->syncWidgetPageItems(IZ)V

    goto :goto_0

    .line 1549
    :cond_1
    sget-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$10;->$SwitchMap$com$cyanogenmod$trebuchet$AppsCustomizeView$ContentType:[I

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mContentType:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1551
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->syncAppsPageItems(IZ)V

    goto :goto_0

    .line 1554
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->syncWidgetPageItems(IZ)V

    goto :goto_0

    .line 1549
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public syncPages()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1510
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->removeAllViews()V

    .line 1511
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1513
    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mJoinWidgetsApps:Z

    if-eqz v4, :cond_1

    .line 1514
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1515
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    iget v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumWidgetPages:I

    if-ge v2, v4, :cond_0

    .line 1516
    new-instance v3, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;

    iget v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountX:I

    iget v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountY:I

    invoke-direct {v3, v0, v4, v5}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    .line 1518
    .local v3, layout:Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;
    invoke-direct {p0, v3}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->setupPage(Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;)V

    .line 1519
    new-instance v4, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1515
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1523
    .end local v3           #layout:Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v1, v4, :cond_2

    .line 1524
    new-instance v3, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-direct {v3, v0}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 1525
    .local v3, layout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;
    invoke-direct {p0, v3}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->setupPage(Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;)V

    .line 1526
    invoke-virtual {p0, v3}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->addView(Landroid/view/View;)V

    .line 1523
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1529
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #layout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;
    :cond_1
    sget-object v4, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$10;->$SwitchMap$com$cyanogenmod$trebuchet$AppsCustomizeView$ContentType:[I

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mContentType:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1538
    :cond_2
    :goto_2
    return-void

    .line 1531
    :pswitch_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->syncAppsPages()V

    goto :goto_2

    .line 1534
    :pswitch_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->syncWidgetPages()V

    goto :goto_2

    .line 1529
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public syncWidgetPageItems(IZ)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 1333
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountX:I

    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v4, v0, v1

    .line 1336
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->getContentWidth()I

    move-result v0

    .line 1338
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountX:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetWidthGap:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountX:I

    div-int v2, v0, v1

    .line 1340
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->getContentHeight()I

    move-result v0

    .line 1341
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountY:I

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetHeightGap:I

    mul-int/2addr v1, v3

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountY:I

    div-int v3, v0, v1

    .line 1345
    mul-int v1, p1, v4

    move v0, v1

    .line 1346
    :goto_0
    add-int v5, v1, v4

    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1347
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1351
    :cond_0
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;

    .line 1352
    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->getCellCountX()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->setColumnCount(I)V

    move v5, v6

    .line 1353
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_5

    .line 1354
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1356
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030007

    invoke-virtual {v0, v8, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/PagedViewWidget;

    .line 1358
    instance-of v8, v1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v8, :cond_4

    .line 1360
    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1361
    new-instance v8, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;

    invoke-direct {v8, v1, v12, v12}, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1362
    iget-object v9, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v9, v1, v12}, Lcom/cyanogenmod/trebuchet/Launcher;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v9

    .line 1363
    const/4 v10, -0x1

    iget-object v11, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mHolographicOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    invoke-virtual {v0, v1, v10, v9, v11}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->applyFromAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;I[ILcom/cyanogenmod/trebuchet/HolographicOutlineHelper;)V

    .line 1365
    invoke-virtual {v0, v8}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 1376
    :cond_1
    :goto_2
    invoke-virtual {v0, p0}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1377
    invoke-virtual {v0, p0}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1378
    invoke-virtual {v0, p0}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1379
    invoke-virtual {v0, p0}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1382
    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountX:I

    rem-int v1, v5, v1

    .line 1383
    iget v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountX:I

    div-int v8, v5, v8

    .line 1384
    new-instance v9, Landroid/widget/GridLayout$LayoutParams;

    sget-object v10, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    invoke-static {v8, v10}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v10

    sget-object v11, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    invoke-static {v1, v11}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 1387
    iput v2, v9, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 1388
    iput v3, v9, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 1389
    const/16 v10, 0x33

    invoke-virtual {v9, v10}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 1390
    if-lez v1, :cond_2

    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetWidthGap:I

    iput v1, v9, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 1391
    :cond_2
    if-lez v8, :cond_3

    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetHeightGap:I

    iput v1, v9, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 1392
    :cond_3
    invoke-virtual {v4, v0, v9}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1353
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 1366
    :cond_4
    instance-of v8, v1, Landroid/content/pm/ResolveInfo;

    if-eqz v8, :cond_1

    .line 1368
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1369
    new-instance v8, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;

    invoke-direct {v8}, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;-><init>()V

    .line 1370
    const/4 v9, 0x1

    iput v9, v8, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;->itemType:I

    .line 1371
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v8, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1373
    iget-object v9, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mHolographicOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    invoke-virtual {v0, v9, v1, v10}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;)V

    .line 1374
    invoke-virtual {v0, v8}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 1398
    :cond_5
    new-instance v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;

    move-object v1, p0

    move v5, p2

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;-><init>(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;IILcom/cyanogenmod/trebuchet/PagedViewGridLayout;ZILjava/util/ArrayList;)V

    invoke-virtual {v4, v0}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->setOnLayoutListener(Ljava/lang/Runnable;)V

    .line 1420
    return-void
.end method

.method public syncWidgetPages()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 1320
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1321
    .local v0, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountX:I

    iget v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 1323
    .local v3, numPages:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1324
    new-instance v2, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;

    iget v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountX:I

    iget v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgetCountY:I

    invoke-direct {v2, v0, v4, v5}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    .line 1326
    .local v2, layout:Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;
    invoke-direct {p0, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->setupPage(Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;)V

    .line 1327
    new-instance v4, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v4}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1330
    .end local v2           #layout:Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;
    :cond_0
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1925
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1926
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1927
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->updatePageCounts()V

    .line 1929
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->invalidatePageData()V

    .line 1930
    return-void
.end method

.method public updatePackages()V
    .locals 9

    .prologue
    .line 547
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    .line 548
    .local v3, wasEmpty:Z
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 549
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v5

    .line 551
    .local v5, widgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    .local v2, shortcutsIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 553
    .local v1, shortcuts:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 554
    .local v4, widget:Landroid/appwidget/AppWidgetProviderInfo;
    iget v6, v4, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-lez v6, :cond_0

    iget v6, v4, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-lez v6, :cond_0

    .line 555
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 557
    :cond_0
    const-string v6, "AppsCustomizePagedView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has invalid dimensions ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 561
    .end local v4           #widget:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 562
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    new-instance v7, Lcom/cyanogenmod/trebuchet/LauncherModel$WidgetAndShortcutNameComparator;

    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v7, v8}, Lcom/cyanogenmod/trebuchet/LauncherModel$WidgetAndShortcutNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 564
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->updatePageCounts()V

    .line 566
    if-eqz v3, :cond_3

    .line 569
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->testDataReady()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->requestLayout()V

    .line 574
    :cond_2
    :goto_1
    return-void

    .line 571
    :cond_3
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->cancelAllTasks()V

    .line 572
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->invalidatePageData()V

    goto :goto_1
.end method
