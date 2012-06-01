.class public Lcom/cyanogenmod/trebuchet/Workspace;
.super Lcom/cyanogenmod/trebuchet/PagedView;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/cyanogenmod/trebuchet/DragController$DragListener;
.implements Lcom/cyanogenmod/trebuchet/DragScroller;
.implements Lcom/cyanogenmod/trebuchet/DragSource;
.implements Lcom/cyanogenmod/trebuchet/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/Workspace$14;,
        Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;,
        Lcom/cyanogenmod/trebuchet/Workspace$ZoomInInterpolator;,
        Lcom/cyanogenmod/trebuchet/Workspace$ZoomOutInterpolator;,
        Lcom/cyanogenmod/trebuchet/Workspace$InverseZInterpolator;,
        Lcom/cyanogenmod/trebuchet/Workspace$ZInterpolator;,
        Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;,
        Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;,
        Lcom/cyanogenmod/trebuchet/Workspace$State;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field mAnimatingViewIntoPlace:Z

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field private mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

.field private mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

.field private final mCamera:Landroid/graphics/Camera;

.field private mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field mChildrenLayersEnabled:Z

.field private mChildrenOutlineAlpha:F

.field private mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

.field private mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private mCreateUserFolderOnDrop:Z

.field private mCurrentRotationY:F

.field private mCurrentScaleX:F

.field private mCurrentScaleY:F

.field private mCurrentTranslationX:F

.field private mCurrentTranslationY:F

.field private mDefaultHomescreen:I

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDragController:Lcom/cyanogenmod/trebuchet/DragController;

.field private mDragFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

.field private mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

.field private mDragOutline:Landroid/graphics/Bitmap;

.field private mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

.field private mDragViewMultiplyColor:I

.field private mDragViewVisualCenter:[F

.field mDrawBackground:Z

.field private final mExternalDragOutlinePaint:Landroid/graphics/Paint;

.field private mFadeScrollingIndicator:Z

.field private final mFolderCreationAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

.field private mHideIconLabels:Z

.field private mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

.field private mInScrollArea:Z

.field mIsDragOccuring:Z

.field private mIsSwitchingState:Z

.field private mLastDragOverView:Landroid/view/View;

.field private mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

.field private mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mNewAlphas:[F

.field private mNewBackgroundAlphaMultipliers:[F

.field private mNewBackgroundAlphas:[F

.field private mNewRotationYs:[F

.field private mNewRotations:[F

.field private mNewScaleXs:[F

.field private mNewScaleYs:[F

.field private mNewTranslationXs:[F

.field private mNewTranslationYs:[F

.field private mNumberHomescreens:I

.field private mOldAlphas:[F

.field private mOldBackgroundAlphaMultipliers:[F

.field private mOldBackgroundAlphas:[F

.field private mOldRotationYs:[F

.field private mOldRotations:[F

.field private mOldScaleXs:[F

.field private mOldScaleYs:[F

.field private mOldTranslationXs:[F

.field private mOldTranslationYs:[F

.field private final mOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

.field private mOverScrollMaxBackgroundAlpha:F

.field private mOverScrollPageIndex:I

.field private mOverscrollFade:F

.field private mResizeAnyWidget:Z

.field private mSavedRotationY:F

.field private mSavedScrollX:I

.field private mSavedTranslationX:F

.field private mScreenPaddingHorizontal:I

.field private mScreenPaddingVertical:I

.field private mScrollWallpaper:Z

.field private mShowDockDivider:Z

.field private mShowScrollingIndicator:Z

.field private mShowSearchBar:Z

.field private mSpringLoadedDragController:Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;

.field private mSpringLoadedShrinkFactor:F

.field private mState:Lcom/cyanogenmod/trebuchet/Workspace$State;

.field private mStateAfterFirstLayout:Lcom/cyanogenmod/trebuchet/Workspace$State;

.field private mSwitchStateAfterFirstLayout:Z

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempCellLayoutCenterCoordinates:[F

.field private mTempDragBottomRightCoordinates:[F

.field private mTempDragCoordinates:[F

.field private mTempEstimate:[I

.field private final mTempFloat2:[F

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempXY:[I

.field private mTransitionEffect:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

.field private mTransitionProgress:F

.field mUpdateWallpaperOffsetImmediately:Z

.field mWallpaperHeight:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field mWallpaperOffset:Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;

.field private mWallpaperScrollRatio:F

.field private mWallpaperTravelWidth:I

.field mWallpaperWidth:I

.field private mWindowToken:Landroid/os/IBinder;

.field private mXDown:F

.field private mYDown:F

.field private final mZInterpolator:Lcom/cyanogenmod/trebuchet/Workspace$ZInterpolator;

.field private final mZoomInInterpolator:Lcom/cyanogenmod/trebuchet/Workspace$ZoomInInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const v0, 0x45cb2000

    sput v0, Lcom/cyanogenmod/trebuchet/Workspace;->CAMERA_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyanogenmod/trebuchet/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 290
    invoke-direct {p0, p1, p2, p3}, Lcom/cyanogenmod/trebuchet/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    iput v9, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineAlpha:F

    .line 113
    iput-boolean v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDrawBackground:Z

    .line 114
    iput v9, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundAlpha:F

    .line 115
    iput v9, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 116
    const/4 v5, -0x1

    iput v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOverScrollPageIndex:I

    .line 118
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperScrollRatio:F

    .line 132
    new-array v5, v6, [I

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    .line 137
    iput-object v10, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 145
    new-array v5, v6, [I

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempCell:[I

    .line 146
    new-array v5, v6, [I

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempEstimate:[I

    .line 147
    new-array v5, v6, [F

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    .line 148
    new-array v5, v6, [F

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempDragCoordinates:[F

    .line 149
    new-array v5, v6, [F

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 150
    new-array v5, v6, [F

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempDragBottomRightCoordinates:[F

    .line 151
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 163
    sget-object v5, Lcom/cyanogenmod/trebuchet/Workspace$State;->NORMAL:Lcom/cyanogenmod/trebuchet/Workspace$State;

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mState:Lcom/cyanogenmod/trebuchet/Workspace$State;

    .line 164
    iput-boolean v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsSwitchingState:Z

    .line 165
    iput-boolean v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 171
    iput-boolean v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mAnimatingViewIntoPlace:Z

    .line 172
    iput-boolean v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsDragOccuring:Z

    .line 173
    iput-boolean v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenLayersEnabled:Z

    .line 176
    iput-boolean v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mInScrollArea:Z

    .line 178
    new-instance v5, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    invoke-direct {v5}, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;-><init>()V

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    .line 179
    iput-object v10, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 180
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 181
    new-array v5, v6, [I

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempXY:[I

    .line 183
    iput v9, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOverscrollFade:F

    .line 186
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    .line 189
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mMatrix:Landroid/graphics/Matrix;

    .line 190
    new-instance v5, Landroid/graphics/Camera;

    invoke-direct {v5}, Landroid/graphics/Camera;-><init>()V

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCamera:Landroid/graphics/Camera;

    .line 191
    new-array v5, v6, [F

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempFloat2:[F

    .line 197
    iput-boolean v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 205
    new-instance v5, Lcom/cyanogenmod/trebuchet/Alarm;

    invoke-direct {v5}, Lcom/cyanogenmod/trebuchet/Alarm;-><init>()V

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mFolderCreationAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    .line 206
    iput-object v10, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    .line 207
    iput-object v10, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLastDragOverView:Landroid/view/View;

    .line 208
    iput-boolean v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCreateUserFolderOnDrop:Z

    .line 1790
    new-instance v5, Lcom/cyanogenmod/trebuchet/Workspace$ZoomInInterpolator;

    invoke-direct {v5}, Lcom/cyanogenmod/trebuchet/Workspace$ZoomInInterpolator;-><init>()V

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mZoomInInterpolator:Lcom/cyanogenmod/trebuchet/Workspace$ZoomInInterpolator;

    .line 1791
    new-instance v5, Lcom/cyanogenmod/trebuchet/Workspace$ZInterpolator;

    const/high16 v6, 0x3f00

    invoke-direct {v5, v6}, Lcom/cyanogenmod/trebuchet/Workspace$ZInterpolator;-><init>(F)V

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mZInterpolator:Lcom/cyanogenmod/trebuchet/Workspace$ZInterpolator;

    .line 1792
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    const v6, 0x3f666666

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 1793
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x4080

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 291
    iput-boolean v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mContentIsRefreshable:Z

    .line 294
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->setDataIsReady()V

    .line 297
    iput-boolean v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mHandleFadeInAdjacentScreens:Z

    .line 299
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 301
    const/4 v2, 0x4

    .line 302
    .local v2, cellCountX:I
    const/4 v3, 0x4

    .line 304
    .local v3, cellCountY:I
    sget-object v5, Lcom/cyanogenmod/trebuchet/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 307
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 308
    .local v4, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 309
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/Workspace;->getCellCountsForLarge(Landroid/content/Context;)[I

    move-result-object v1

    .line 310
    .local v1, cellCount:[I
    aget v2, v1, v7

    .line 311
    aget v3, v1, v8

    .line 314
    .end local v1           #cellCount:[I
    :cond_0
    const v5, 0x7f0a0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c8

    div-float/2addr v5, v6

    iput v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mSpringLoadedShrinkFactor:F

    .line 316
    const v5, 0x7f070002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewMultiplyColor:I

    .line 319
    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 320
    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 321
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 324
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v5

    if-nez v5, :cond_1

    .line 325
    invoke-static {p1, v2}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen;->getCellCountX(Landroid/content/Context;I)I

    move-result v2

    .line 326
    invoke-static {p1, v3}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen;->getCellCountY(Landroid/content/Context;I)I

    move-result v3

    .line 329
    :cond_1
    invoke-static {v2, v3}, Lcom/cyanogenmod/trebuchet/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 330
    invoke-virtual {p0, v7}, Lcom/cyanogenmod/trebuchet/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 333
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen;->getNumberHomescreens(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNumberHomescreens:I

    .line 334
    iget v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNumberHomescreens:I

    div-int/lit8 v5, v5, 0x2

    invoke-static {p1, v5}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen;->getDefaultHomescreen(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDefaultHomescreen:I

    .line 336
    iget v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDefaultHomescreen:I

    iget v6, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNumberHomescreens:I

    if-lt v5, v6, :cond_2

    .line 337
    iget v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNumberHomescreens:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDefaultHomescreen:I

    .line 339
    :cond_2
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen;->getScreenPaddingVertical(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScreenPaddingVertical:I

    .line 340
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen;->getScreenPaddingHorizontal(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScreenPaddingHorizontal:I

    .line 341
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen;->getShowSearchBar(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mShowSearchBar:Z

    .line 342
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen;->getResizeAnyWidget(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mResizeAnyWidget:Z

    .line 343
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen;->getHideIconLabels(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mHideIconLabels:Z

    .line 344
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen$Scrolling;->getScrollWallpaper(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollWallpaper:Z

    .line 345
    const v5, 0x7f090001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen$Scrolling;->getTransitionEffect(Landroid/content/Context;Ljava/lang/String;)Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-result-object v5

    iput-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTransitionEffect:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    .line 347
    const v5, 0x7f080005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-static {p1, v5}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen$Scrolling;->getFadeInAdjacentScreens(Landroid/content/Context;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mFadeInAdjacentScreens:Z

    .line 349
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen$Indicator;->getShowScrollingIndicator(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mShowScrollingIndicator:Z

    .line 350
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen$Indicator;->getFadeScrollingIndicator(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mFadeScrollingIndicator:Z

    .line 351
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen$Indicator;->getShowDockDivider(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mShowDockDivider:Z

    .line 353
    check-cast p1, Lcom/cyanogenmod/trebuchet/Launcher;

    .end local p1
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    .line 354
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->initWorkspace()V

    .line 357
    invoke-virtual {p0, v8}, Lcom/cyanogenmod/trebuchet/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 358
    return-void
.end method

.method static synthetic access$002(Lcom/cyanogenmod/trebuchet/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsSwitchingState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/cyanogenmod/trebuchet/Workspace;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollWallpaper:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewTranslationXs:[F

    return-object v0
.end method

.method static synthetic access$1100(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldTranslationYs:[F

    return-object v0
.end method

.method static synthetic access$1200(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewTranslationYs:[F

    return-object v0
.end method

.method static synthetic access$1300(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldScaleXs:[F

    return-object v0
.end method

.method static synthetic access$1400(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewScaleXs:[F

    return-object v0
.end method

.method static synthetic access$1500(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldScaleYs:[F

    return-object v0
.end method

.method static synthetic access$1600(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewScaleYs:[F

    return-object v0
.end method

.method static synthetic access$1700(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldBackgroundAlphas:[F

    return-object v0
.end method

.method static synthetic access$1800(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewBackgroundAlphas:[F

    return-object v0
.end method

.method static synthetic access$1900(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldBackgroundAlphaMultipliers:[F

    return-object v0
.end method

.method static synthetic access$2000(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewBackgroundAlphaMultipliers:[F

    return-object v0
.end method

.method static synthetic access$202(Lcom/cyanogenmod/trebuchet/Workspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldAlphas:[F

    return-object v0
.end method

.method static synthetic access$2200(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewAlphas:[F

    return-object v0
.end method

.method static synthetic access$2300(Lcom/cyanogenmod/trebuchet/Workspace;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->syncChildrenLayersEnabledOnVisiblePages()V

    return-void
.end method

.method static synthetic access$2400(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldRotations:[F

    return-object v0
.end method

.method static synthetic access$2500(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewRotations:[F

    return-object v0
.end method

.method static synthetic access$2600(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldRotationYs:[F

    return-object v0
.end method

.method static synthetic access$2700(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewRotationYs:[F

    return-object v0
.end method

.method static synthetic access$2800(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/cyanogenmod/trebuchet/Workspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/cyanogenmod/trebuchet/Workspace;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->updateChildrenLayersEnabled()V

    return-void
.end method

.method static synthetic access$3000(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/cyanogenmod/trebuchet/Workspace;Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;)Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/cyanogenmod/trebuchet/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCreateUserFolderOnDrop:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/cyanogenmod/trebuchet/Workspace;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$3300(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/DragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cyanogenmod/trebuchet/Workspace;)Landroid/app/WallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cyanogenmod/trebuchet/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/cyanogenmod/trebuchet/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/Workspace$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mStateAfterFirstLayout:Lcom/cyanogenmod/trebuchet/Workspace$State;

    return-object v0
.end method

.method static synthetic access$802(Lcom/cyanogenmod/trebuchet/Workspace;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTransitionProgress:F

    return p1
.end method

.method static synthetic access$900(Lcom/cyanogenmod/trebuchet/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldTranslationXs:[F

    return-object v0
.end method

.method private animateBackgroundGradient(FZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1182
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 1184
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1185
    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    .line 1187
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 1188
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1189
    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1191
    :cond_3
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getBackgroundAlpha()F

    move-result v0

    .line 1192
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    .line 1193
    if-eqz p2, :cond_4

    .line 1194
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1195
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/cyanogenmod/trebuchet/Workspace$3;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/trebuchet/Workspace$3;-><init>(Lcom/cyanogenmod/trebuchet/Workspace;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1200
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc0

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1201
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1202
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1204
    :cond_4
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->setBackgroundAlpha(F)V

    goto :goto_0
.end method

.method private cancelFolderCreation()V
    .locals 1

    .prologue
    .line 3184
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v0, :cond_0

    .line 3185
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 3187
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCreateUserFolderOnDrop:Z

    .line 3188
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mFolderCreationAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Alarm;->cancelAlarm()V

    .line 3189
    return-void
.end method

.method private centerWallpaperOffset()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    const/4 v2, 0x0

    .line 954
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, v3, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 955
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 956
    return-void
.end method

.method private cleanupFolderCreation(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 3172
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v0, :cond_0

    .line 3173
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 3175
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLastDragOverView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLastDragOverView:Landroid/view/View;

    instance-of v0, v0, Lcom/cyanogenmod/trebuchet/FolderIcon;

    if-eqz v0, :cond_1

    .line 3176
    if-eqz p1, :cond_1

    .line 3177
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLastDragOverView:Landroid/view/View;

    check-cast v0, Lcom/cyanogenmod/trebuchet/FolderIcon;

    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->onDragExit(Ljava/lang/Object;)V

    .line 3180
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mFolderCreationAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Alarm;->cancelAlarm()V

    .line 3181
    return-void
.end method

.method private computeWallpaperScrollRatio(I)V
    .locals 6
    .parameter "page"

    .prologue
    const/high16 v5, 0x3f80

    .line 1004
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLayoutScale:F

    .line 1005
    .local v0, layoutScale:F
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1006
    .local v1, scaled:I
    iput v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLayoutScale:F

    .line 1007
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->getRelativeChildOffset(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 1008
    .local v2, unscaled:F
    iput v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLayoutScale:F

    .line 1009
    if-lez v1, :cond_0

    .line 1010
    mul-float v3, v5, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperScrollRatio:F

    .line 1014
    :goto_0
    return-void

    .line 1012
    :cond_0
    iput v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperScrollRatio:F

    goto :goto_0
.end method

.method private createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2214
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 2215
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2216
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2218
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v0, v6, v6, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2219
    sub-int v2, p4, p3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-int v4, p5, p3

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2221
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 2222
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 2223
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2226
    sub-int v4, p4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int v2, p5, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v5, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2228
    invoke-virtual {p2, p1, v0, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2229
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    move-object v2, p2

    move v4, v3

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 2231
    invoke-virtual {p2, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2233
    return-object v1
.end method

.method private createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2197
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2198
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2201
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2202
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 2203
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    invoke-virtual {v2, v1, p2, v0, v0}, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 2204
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2205
    return-object v1
.end method

.method private createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 2242
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2243
    const v1, 0x1060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2244
    const v2, 0x7f0b000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2245
    const v3, 0x7f0b000b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2246
    const v4, 0x7f0b0052

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2247
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e4ccccd

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 2248
    add-int v5, v2, p2

    add-int v6, v3, p2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2251
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2252
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v4

    int-to-float v8, v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v6, v7, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v2, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2254
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    invoke-virtual {v0, v5, p1, v1, v1}, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 2255
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2256
    return-object v5
.end method

.method private doDragExit(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 2700
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->cleanupFolderCreation(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 2703
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->onResetScrollArea()V

    .line 2705
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    if-eqz v0, :cond_0

    .line 2706
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setIsDragOverlapping(Z)V

    .line 2707
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->onDragExit()V

    .line 2709
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLastDragOverView:Landroid/view/View;

    .line 2710
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mSpringLoadedDragController:Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;->cancel()V

    .line 2712
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_1

    .line 2713
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->hideOutlines()V

    .line 2715
    :cond_1
    return-void
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 8
    .parameter "v"
    .parameter "destCanvas"
    .parameter "padding"
    .parameter "pruneToDrawable"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2124
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 2125
    .local v0, clipRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2127
    const/4 v2, 0x0

    .line 2129
    .local v2, textVisible:Z
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 2130
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    if-eqz p4, :cond_1

    .line 2131
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v1, v4, v7

    .line 2132
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2133
    div-int/lit8 v4, p3, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2134
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2163
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 2164
    return-void

    .line 2136
    .restart local p1
    :cond_1
    instance-of v4, p1, Lcom/cyanogenmod/trebuchet/FolderIcon;

    if-eqz v4, :cond_3

    .line 2137
    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mHideIconLabels:Z

    if-nez v4, :cond_2

    move-object v4, p1

    .line 2140
    check-cast v4, Lcom/cyanogenmod/trebuchet/FolderIcon;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/FolderIcon;->getTextVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 2141
    check-cast v4, Lcom/cyanogenmod/trebuchet/FolderIcon;

    invoke-virtual {v4, v6}, Lcom/cyanogenmod/trebuchet/FolderIcon;->setTextVisible(Z)V

    .line 2142
    const/4 v2, 0x1

    .line 2154
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v5, p3, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v6, p3, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2155
    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2156
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2159
    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mHideIconLabels:Z

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    .line 2160
    check-cast p1, Lcom/cyanogenmod/trebuchet/FolderIcon;

    .end local p1
    invoke-virtual {p1, v7}, Lcom/cyanogenmod/trebuchet/FolderIcon;->setTextVisible(Z)V

    goto :goto_0

    .line 2145
    .restart local p1
    :cond_3
    instance-of v4, p1, Lcom/cyanogenmod/trebuchet/BubbleTextView;

    if-eqz v4, :cond_4

    move-object v3, p1

    .line 2146
    check-cast v3, Lcom/cyanogenmod/trebuchet/BubbleTextView;

    .line 2147
    .local v3, tv:Lcom/cyanogenmod/trebuchet/BubbleTextView;
    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getExtendedPaddingTop()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 2149
    .end local v3           #tv:Lcom/cyanogenmod/trebuchet/BubbleTextView;
    :cond_4
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move-object v3, p1

    .line 2150
    check-cast v3, Landroid/widget/TextView;

    .line 2151
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private findMatchingPageForDragOver(Lcom/cyanogenmod/trebuchet/DragView;FFZ)Lcom/cyanogenmod/trebuchet/CellLayout;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2968
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v5

    .line 2969
    const/4 v3, 0x0

    .line 2970
    const v2, 0x7f7fffff

    .line 2972
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_1

    .line 2973
    invoke-virtual {p0, v4}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 2975
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v6, 0x0

    aput p2, v1, v6

    const/4 v6, 0x1

    aput p3, v1, v6

    .line 2978
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2979
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1, v6}, Lcom/cyanogenmod/trebuchet/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2981
    const/4 v6, 0x0

    aget v6, v1, v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    const/4 v6, 0x1

    aget v6, v1, v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    aget v6, v1, v6

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 3006
    :goto_1
    return-object v0

    .line 2986
    :cond_0
    if-nez p4, :cond_2

    .line 2988
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 2989
    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v6, v7

    .line 2990
    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v6, v7

    .line 2991
    invoke-virtual {p0, v0, v6}, Lcom/cyanogenmod/trebuchet/Workspace;->mapPointFromChildToSelf(Landroid/view/View;[F)V

    .line 2993
    const/4 v7, 0x0

    aput p2, v1, v7

    .line 2994
    const/4 v7, 0x1

    aput p3, v1, v7

    .line 2998
    invoke-static {v1, v6}, Lcom/cyanogenmod/trebuchet/Workspace;->squaredDistance([F[F)F

    move-result v1

    .line 3000
    cmpg-float v6, v1, v2

    if-gez v6, :cond_2

    move v9, v1

    move-object v1, v0

    move v0, v9

    .line 2972
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 3006
    goto :goto_1

    :cond_2
    move v0, v2

    move-object v1, v3

    goto :goto_2
.end method

.method private findNearestArea(IIIILcom/cyanogenmod/trebuchet/CellLayout;[I)[I
    .locals 6
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "layout"
    .parameter "recycle"

    .prologue
    .line 3469
    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method private findNearestVacantArea(IIIILandroid/view/View;Lcom/cyanogenmod/trebuchet/CellLayout;[I)[I
    .locals 7
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "layout"
    .parameter "recycle"

    .prologue
    .line 3458
    move-object v0, p6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public static getCellCountsForLarge(Landroid/content/Context;)[I
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 361
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 363
    .local v2, cellCount:[I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 368
    .local v3, res:Landroid/content/res/Resources;
    new-array v6, v8, [I

    const v7, 0x10102eb

    aput v7, v6, v9

    invoke-virtual {p0, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 370
    .local v1, actionBarSizeTypedArray:Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 371
    .local v0, actionBarHeight:F
    const v6, 0x7f0b0033

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 372
    .local v5, systemBarHeight:F
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v4, v6

    .line 374
    .local v4, smallestScreenDim:F
    aput v8, v2, v9

    .line 375
    :goto_0
    aget v6, v2, v9

    add-int/lit8 v6, v6, 0x1

    invoke-static {v3, v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->widthInPortrait(Landroid/content/res/Resources;I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v4

    if-gtz v6, :cond_0

    .line 376
    aget v6, v2, v9

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v9

    goto :goto_0

    .line 379
    :cond_0
    aput v8, v2, v8

    .line 381
    :goto_1
    aget v6, v2, v8

    add-int/lit8 v6, v6, 0x1

    invoke-static {v3, v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->heightInLandscape(Landroid/content/res/Resources;I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    sub-float v7, v4, v5

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 382
    aget v6, v2, v8

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v8

    goto :goto_1

    .line 384
    :cond_1
    return-object v2
.end method

.method private getDragViewVisualCenter(IIIILcom/cyanogenmod/trebuchet/DragView;[F)[F
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3016
    if-nez p6, :cond_0

    .line 3017
    const/4 v0, 0x2

    new-array p6, v0, [F

    .line 3024
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 3025
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, p2

    .line 3031
    sub-int/2addr v0, p3

    .line 3032
    sub-int/2addr v1, p4

    .line 3035
    const/4 v2, 0x0

    invoke-virtual {p5}, Lcom/cyanogenmod/trebuchet/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    aput v0, p6, v2

    .line 3036
    const/4 v0, 0x1

    invoke-virtual {p5}, Lcom/cyanogenmod/trebuchet/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, p6, v0

    .line 3038
    return-object p6
.end method

.method private getScrollRange()I
    .locals 2

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private hitsPage(IFF)Z
    .locals 7
    .parameter "index"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 668
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 669
    .local v1, page:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 670
    const/4 v4, 0x2

    new-array v0, v4, [F

    aput p2, v0, v3

    aput p3, v0, v2

    .line 671
    .local v0, localXY:[F
    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 672
    aget v4, v0, v3

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    aget v4, v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    aget v4, v0, v2

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    aget v4, v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 675
    .end local v0           #localXY:[F
    :goto_0
    return v2

    .restart local v0       #localXY:[F
    :cond_0
    move v2, v3

    .line 672
    goto :goto_0

    .end local v0           #localXY:[F
    :cond_1
    move v2, v3

    .line 675
    goto :goto_0
.end method

.method private initAnimationArrays()V
    .locals 2

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v0

    .line 1843
    .local v0, childCount:I
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldTranslationXs:[F

    if-eqz v1, :cond_0

    .line 1862
    :goto_0
    return-void

    .line 1844
    :cond_0
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldTranslationXs:[F

    .line 1845
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldTranslationYs:[F

    .line 1846
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldScaleXs:[F

    .line 1847
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldScaleYs:[F

    .line 1848
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldBackgroundAlphas:[F

    .line 1849
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldBackgroundAlphaMultipliers:[F

    .line 1850
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldAlphas:[F

    .line 1851
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldRotations:[F

    .line 1852
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldRotationYs:[F

    .line 1853
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewTranslationXs:[F

    .line 1854
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewTranslationYs:[F

    .line 1855
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewScaleXs:[F

    .line 1856
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewScaleYs:[F

    .line 1857
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewBackgroundAlphas:[F

    .line 1858
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewBackgroundAlphaMultipliers:[F

    .line 1859
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewAlphas:[F

    .line 1860
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewRotations:[F

    .line 1861
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewRotationYs:[F

    goto :goto_0
.end method

.method private isDragWidget(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 3042
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExternalDragWidget(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 3046
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragSource:Lcom/cyanogenmod/trebuchet/DragSource;

    if-eq v0, p0, :cond_0

    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->isDragWidget(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/cyanogenmod/trebuchet/CellLayout;Z)V
    .locals 6
    .parameter "touchXY"
    .parameter "dragInfo"
    .parameter "cellLayout"
    .parameter "insertAtFirst"

    .prologue
    .line 3237
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/cyanogenmod/trebuchet/CellLayout;ZLcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 3238
    return-void
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/cyanogenmod/trebuchet/CellLayout;ZLcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3250
    new-instance v24, Lcom/cyanogenmod/trebuchet/Workspace$11;

    invoke-direct/range {v24 .. v25}, Lcom/cyanogenmod/trebuchet/Workspace$11;-><init>(Lcom/cyanogenmod/trebuchet/Workspace;)V

    move-object/from16 v2, p2

    .line 3257
    check-cast v2, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 3258
    iget v5, v2, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanX:I

    .line 3259
    iget v6, v2, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanY:I

    .line 3260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    if-eqz v3, :cond_0

    .line 3261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v5, v3, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanX:I

    .line 3262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v6, v3, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanY:I

    .line 3265
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-wide/16 v10, -0x65

    .line 3268
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v12

    .line 3269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    if-eq v12, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mState:Lcom/cyanogenmod/trebuchet/Workspace$State;

    sget-object v4, Lcom/cyanogenmod/trebuchet/Workspace$State;->SPRING_LOADED:Lcom/cyanogenmod/trebuchet/Workspace$State;

    if-eq v3, v4, :cond_1

    .line 3271
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/cyanogenmod/trebuchet/Workspace;->snapToPage(I)V

    .line 3274
    :cond_1
    instance-of v3, v2, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;

    if-eqz v3, :cond_6

    .line 3275
    check-cast p2, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;

    .line 3277
    const/4 v9, 0x1

    .line 3278
    move-object/from16 v0, p2

    iget v2, v0, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 3279
    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/cyanogenmod/trebuchet/Workspace;->findNearestArea(IIIILcom/cyanogenmod/trebuchet/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    .line 3281
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/cyanogenmod/trebuchet/ItemInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v7}, Lcom/cyanogenmod/trebuchet/Workspace;->willCreateUserFolder(Lcom/cyanogenmod/trebuchet/ItemInfo;Lcom/cyanogenmod/trebuchet/CellLayout;[IZ)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/cyanogenmod/trebuchet/ItemInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/cyanogenmod/trebuchet/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/cyanogenmod/trebuchet/CellLayout;[I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3284
    :cond_2
    const/4 v2, 0x0

    .line 3287
    :goto_1
    if-eqz v2, :cond_3

    .line 3288
    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/cyanogenmod/trebuchet/Workspace;->findNearestVacantArea(IIIILandroid/view/View;Lcom/cyanogenmod/trebuchet/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    .line 3292
    :cond_3
    new-instance v7, Lcom/cyanogenmod/trebuchet/Workspace$12;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v13, p3

    invoke-direct/range {v7 .. v13}, Lcom/cyanogenmod/trebuchet/Workspace$12;-><init>(Lcom/cyanogenmod/trebuchet/Workspace;Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;JILcom/cyanogenmod/trebuchet/CellLayout;)V

    .line 3316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v11, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v12, v2, v3

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p2

    move v13, v5

    move v14, v6

    invoke-virtual/range {v8 .. v14}, Lcom/cyanogenmod/trebuchet/Workspace;->estimateItemPosition(Lcom/cyanogenmod/trebuchet/CellLayout;Lcom/cyanogenmod/trebuchet/ItemInfo;IIII)Landroid/graphics/RectF;

    move-result-object v2

    .line 3318
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 3319
    const/4 v4, 0x0

    iget v5, v2, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    aput v5, v3, v4

    .line 3320
    const/4 v4, 0x1

    iget v5, v2, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    aput v5, v3, v4

    .line 3321
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->setFinalTransitionTransform(Lcom/cyanogenmod/trebuchet/CellLayout;)V

    .line 3322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v3}, Lcom/cyanogenmod/trebuchet/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v4

    .line 3324
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->resetTransitionTransform(Lcom/cyanogenmod/trebuchet/CellLayout;)V

    .line 3326
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    invoke-virtual {v6}, Lcom/cyanogenmod/trebuchet/DragView;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    invoke-virtual {v8}, Lcom/cyanogenmod/trebuchet/DragView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 3330
    const/4 v6, 0x0

    aget v8, v3, v6

    int-to-float v8, v8

    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    invoke-virtual {v9}, Lcom/cyanogenmod/trebuchet/DragView;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v8, v8

    aput v8, v3, v6

    .line 3331
    const/4 v6, 0x1

    aget v8, v3, v6

    int-to-float v8, v8

    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    invoke-virtual {v9}, Lcom/cyanogenmod/trebuchet/DragView;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v4

    sub-float v2, v9, v2

    const/high16 v9, 0x4000

    div-float/2addr v2, v9

    sub-float v2, v8, v2

    float-to-int v2, v2

    aput v2, v3, v6

    .line 3333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v2

    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    mul-float/2addr v4, v5

    invoke-virtual {v2, v6, v3, v4, v7}, Lcom/cyanogenmod/trebuchet/DragLayer;->animateViewIntoPosition(Lcom/cyanogenmod/trebuchet/DragView;[IFLjava/lang/Runnable;)V

    .line 3401
    :cond_4
    :goto_2
    return-void

    .line 3265
    :cond_5
    const-wide/16 v10, -0x64

    goto/16 :goto_0

    .line 3339
    :cond_6
    iget v3, v2, Lcom/cyanogenmod/trebuchet/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_0

    .line 3357
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown item type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, v2, Lcom/cyanogenmod/trebuchet/ItemInfo;->itemType:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3342
    :pswitch_0
    iget-wide v3, v2, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    const-wide/16 v7, -0x1

    cmp-long v3, v3, v7

    if-nez v3, :cond_a

    instance-of v3, v2, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    if-eqz v3, :cond_a

    .line 3344
    new-instance v3, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    check-cast v2, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    invoke-direct {v3, v2}, Lcom/cyanogenmod/trebuchet/ShortcutInfo;-><init>(Lcom/cyanogenmod/trebuchet/ApplicationInfo;)V

    .line 3346
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    const v7, 0x7f030003

    move-object v2, v3

    check-cast v2, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    move-object/from16 v0, p3

    invoke-virtual {v4, v7, v0, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/cyanogenmod/trebuchet/ShortcutInfo;)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    move-object/from16 v23, v3

    .line 3362
    :goto_4
    if-eqz p1, :cond_7

    .line 3363
    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/cyanogenmod/trebuchet/Workspace;->findNearestArea(IIIILcom/cyanogenmod/trebuchet/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    .line 3365
    move-object/from16 v0, v24

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 3366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    move-object/from16 v20, v0

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    move-object/from16 v13, p0

    move-wide v15, v10

    move-object/from16 v17, p3

    invoke-virtual/range {v13 .. v21}, Lcom/cyanogenmod/trebuchet/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/cyanogenmod/trebuchet/CellLayout;[IZLcom/cyanogenmod/trebuchet/DragView;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    move-object/from16 v16, v0

    const/16 v18, 0x1

    move-object/from16 v13, p0

    move-object/from16 v15, p3

    move-object/from16 v17, p5

    invoke-virtual/range {v13 .. v18}, Lcom/cyanogenmod/trebuchet/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/cyanogenmod/trebuchet/CellLayout;[ILcom/cyanogenmod/trebuchet/DropTarget$DragObject;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3375
    :cond_7
    if-eqz p1, :cond_8

    .line 3377
    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/cyanogenmod/trebuchet/Workspace;->findNearestVacantArea(IIIILandroid/view/View;Lcom/cyanogenmod/trebuchet/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    .line 3382
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v18, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v19, v2, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanX:I

    move/from16 v20, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanY:I

    move/from16 v21, v0

    move-object/from16 v13, p0

    move-wide v15, v10

    move/from16 v17, v12

    move/from16 v22, p4

    invoke-virtual/range {v13 .. v22}, Lcom/cyanogenmod/trebuchet/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 3384
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/cyanogenmod/trebuchet/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 3385
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 3386
    invoke-virtual/range {p3 .. p3}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildrenLayout()Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 3388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    iget v7, v3, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    iget v8, v3, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v3, v23

    move-wide v4, v10

    move v6, v12

    invoke-static/range {v2 .. v8}, Lcom/cyanogenmod/trebuchet/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;JIII)V

    .line 3391
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    if-eqz v2, :cond_4

    .line 3395
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->setFinalTransitionTransform(Lcom/cyanogenmod/trebuchet/CellLayout;)V

    .line 3396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v2

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v14, v0}, Lcom/cyanogenmod/trebuchet/DragLayer;->animateViewIntoPosition(Lcom/cyanogenmod/trebuchet/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3398
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->resetTransitionTransform(Lcom/cyanogenmod/trebuchet/CellLayout;)V

    goto/16 :goto_2

    .line 3350
    :pswitch_1
    const v4, 0x7f03000c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    move-object v3, v2

    check-cast v3, Lcom/cyanogenmod/trebuchet/FolderInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    move-object/from16 v0, p3

    invoke-static {v4, v7, v0, v3, v8}, Lcom/cyanogenmod/trebuchet/FolderIcon;->fromXml(ILcom/cyanogenmod/trebuchet/Launcher;Landroid/view/ViewGroup;Lcom/cyanogenmod/trebuchet/FolderInfo;Lcom/cyanogenmod/trebuchet/IconCache;)Lcom/cyanogenmod/trebuchet/FolderIcon;

    move-result-object v4

    .line 3352
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mHideIconLabels:Z

    if-eqz v3, :cond_9

    move-object v3, v4

    .line 3353
    check-cast v3, Lcom/cyanogenmod/trebuchet/FolderIcon;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/cyanogenmod/trebuchet/FolderIcon;->setTextVisible(Z)V

    move-object v14, v4

    move-object/from16 v23, v2

    goto/16 :goto_4

    .line 3380
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Lcom/cyanogenmod/trebuchet/CellLayout;->findCellForSpan([III)Z

    goto/16 :goto_5

    :cond_9
    move-object v14, v4

    move-object/from16 v23, v2

    goto/16 :goto_4

    :cond_a
    move-object v3, v2

    goto/16 :goto_3

    :cond_b
    move v2, v9

    goto/16 :goto_1

    .line 3339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onResetScrollArea()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3609
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    if-eqz v0, :cond_0

    .line 3611
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setIsDragOverlapping(Z)V

    .line 3615
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->invalidate()V

    .line 3617
    :cond_0
    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mInScrollArea:Z

    .line 3618
    return-void
.end method

.method private screenScrolledCube(IZ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1359
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1360
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 1361
    if-eqz v0, :cond_1

    .line 1362
    invoke-virtual {p0, p1, v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 1363
    if-eqz p2, :cond_2

    const/high16 v2, 0x42b4

    :goto_1
    mul-float v5, v2, v4

    .line 1364
    const/high16 v2, 0x3f80

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v2, v6

    .line 1366
    if-eqz p2, :cond_0

    .line 1367
    iget v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDensity:F

    sget v7, Lcom/cyanogenmod/trebuchet/Workspace;->CAMERA_DISTANCE:F

    mul-float/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setCameraDistance(F)V

    .line 1370
    :cond_0
    cmpg-float v2, v4, v3

    if-gez v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setPivotX(F)V

    .line 1371
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f00

    mul-float/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setPivotY(F)V

    .line 1372
    invoke-virtual {v0, v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->setRotationY(F)V

    .line 1373
    invoke-virtual {v0, v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastAlpha(F)V

    .line 1374
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->fastInvalidate()V

    .line 1359
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1363
    :cond_2
    const/high16 v2, -0x3d4c

    goto :goto_1

    .line 1370
    :cond_3
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    goto :goto_2

    .line 1377
    :cond_4
    return-void
.end method

.method private screenScrolledRotate(IZ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x3f00

    .line 1328
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1329
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 1330
    if-eqz v0, :cond_1

    .line 1331
    invoke-virtual {p0, p1, v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1332
    if-eqz p2, :cond_2

    const/high16 v2, 0x4148

    :goto_1
    mul-float/2addr v2, v3

    .line 1334
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    .line 1336
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getMeasuredWidth()I

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

    .line 1340
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    invoke-virtual {v0, v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->setPivotX(F)V

    .line 1341
    if-eqz p2, :cond_3

    .line 1342
    neg-float v5, v5

    invoke-virtual {v0, v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->setPivotY(F)V

    .line 1347
    :goto_2
    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setRotation(F)V

    .line 1348
    invoke-virtual {v0, v4}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastTranslationX(F)V

    .line 1349
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mFadeInAdjacentScreens:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSmall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1350
    const/high16 v2, 0x3f80

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    .line 1351
    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastAlpha(F)V

    .line 1353
    :cond_0
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->fastInvalidate()V

    .line 1328
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1332
    :cond_2
    const/high16 v2, -0x3eb8

    goto :goto_1

    .line 1344
    :cond_3
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->setPivotY(F)V

    goto :goto_2

    .line 1356
    :cond_4
    return-void
.end method

.method private screenScrolledStack(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    const/4 v8, 0x0

    .line 1380
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1381
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 1382
    if-eqz v0, :cond_2

    .line 1383
    invoke-virtual {p0, p1, v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1384
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mZInterpolator:Lcom/cyanogenmod/trebuchet/Workspace$ZInterpolator;

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/cyanogenmod/trebuchet/Workspace$ZInterpolator;->getInterpolation(F)F

    move-result v5

    .line 1386
    sub-float v6, v4, v5

    const v7, 0x3f428f5c

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    .line 1387
    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    .line 1390
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v7

    if-eqz v7, :cond_0

    cmpg-float v7, v3, v8

    if-gez v7, :cond_4

    .line 1391
    :cond_0
    cmpg-float v7, v3, v8

    if-gez v7, :cond_3

    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v4, v3

    invoke-virtual {v7, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v3

    .line 1398
    :goto_1
    invoke-virtual {v0, v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastTranslationX(F)V

    .line 1399
    invoke-virtual {v0, v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastScaleX(F)V

    .line 1400
    invoke-virtual {v0, v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastScaleY(F)V

    .line 1401
    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastAlpha(F)V

    .line 1405
    cmpg-float v3, v3, v8

    if-gtz v3, :cond_5

    .line 1406
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->setVisibility(I)V

    .line 1410
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->fastInvalidate()V

    .line 1380
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v3, v4

    .line 1391
    goto :goto_1

    .line 1395
    :cond_4
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float v3, v4, v3

    invoke-virtual {v7, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_1

    .line 1407
    :cond_5
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1408
    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setVisibility(I)V

    goto :goto_2

    .line 1413
    :cond_6
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->invalidate()V

    .line 1414
    return-void
.end method

.method private screenScrolledStandard(I)V
    .locals 6
    .parameter "screenScroll"

    .prologue
    .line 1270
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1271
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 1272
    .local v1, cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    if-eqz v1, :cond_0

    .line 1273
    invoke-virtual {p0, p1, v1, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1274
    .local v3, scrollProgress:F
    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mFadeInAdjacentScreens:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSmall()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1275
    const/high16 v4, 0x3f80

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v0, v4, v5

    .line 1276
    .local v0, alpha:F
    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastAlpha(F)V

    .line 1277
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->fastInvalidate()V

    .line 1270
    .end local v0           #alpha:F
    .end local v3           #scrollProgress:F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1281
    .end local v1           #cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    :cond_1
    return-void
.end method

.method private screenScrolledTablet(I)V
    .locals 6
    .parameter

    .prologue
    .line 1284
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1285
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 1286
    if-eqz v0, :cond_1

    .line 1287
    invoke-virtual {p0, p1, v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v2

    .line 1288
    const/high16 v3, 0x4148

    mul-float/2addr v3, v2

    .line 1289
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getHeight()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/cyanogenmod/trebuchet/Workspace;->getOffsetXForRotation(FII)F

    move-result v4

    .line 1291
    invoke-virtual {v0, v4}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastTranslationX(F)V

    .line 1292
    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastRotationY(F)V

    .line 1293
    iget-boolean v3, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mFadeInAdjacentScreens:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSmall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1294
    const/high16 v3, 0x3f80

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v3, v2

    .line 1295
    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastAlpha(F)V

    .line 1297
    :cond_0
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->fastInvalidate()V

    .line 1284
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1300
    :cond_2
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->invalidate()V

    .line 1301
    return-void
.end method

.method private screenScrolledZoom(IZ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x3f80

    const v3, 0x3dcccccd

    .line 1304
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1305
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 1306
    if-eqz v0, :cond_2

    .line 1307
    invoke-virtual {p0, p1, v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 1308
    if-eqz p2, :cond_3

    const v2, -0x41b33333

    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v2, v5

    add-float/2addr v2, v7

    .line 1311
    if-nez p2, :cond_0

    .line 1312
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    neg-float v6, v4

    mul-float/2addr v5, v6

    .line 1313
    invoke-virtual {v0, v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastTranslationX(F)V

    .line 1316
    :cond_0
    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastScaleX(F)V

    .line 1317
    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastScaleY(F)V

    .line 1318
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mFadeInAdjacentScreens:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSmall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1319
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v7, v2

    .line 1320
    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastAlpha(F)V

    .line 1322
    :cond_1
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->fastInvalidate()V

    .line 1304
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1308
    goto :goto_1

    .line 1325
    :cond_4
    return-void
.end method

.method private static squaredDistance([F[F)F
    .locals 5
    .parameter "point1"
    .parameter "point2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2911
    aget v2, p0, v3

    aget v3, p1, v3

    sub-float v0, v2, v3

    .line 2912
    .local v0, distanceX:F
    aget v2, p1, v4

    aget v3, p1, v4

    sub-float v1, v2, v3

    .line 2913
    .local v1, distanceY:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method private syncChildrenLayersEnabledOnVisiblePages()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1587
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_1

    .line 1588
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->getVisiblePages([I)V

    .line 1589
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempVisiblePagesRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 1590
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempVisiblePagesRange:[I

    aget v2, v1, v4

    .line 1591
    if-eq v0, v3, :cond_1

    if-eq v2, v3, :cond_1

    move v1, v0

    .line 1592
    :goto_0
    if-gt v1, v2, :cond_1

    .line 1593
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1594
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const v3, 0x3caaaaab

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 1596
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setChildrenLayersEnabled(Z)V

    .line 1592
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1601
    :cond_1
    return-void
.end method

.method private syncWallpaperOffsetWithScroll()V
    .locals 2

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollWallpaper:Z

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperOffset:Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->wallpaperOffsetForCurrentScroll()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    .line 951
    :cond_0
    return-void
.end method

.method private updateChildrenLayersEnabled()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1703
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSmall()Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsSwitchingState:Z

    if-eqz v6, :cond_3

    :cond_0
    move v3, v4

    .line 1704
    .local v3, small:Z
    :goto_0
    iget-boolean v6, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mAnimatingViewIntoPlace:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsDragOccuring:Z

    if-eqz v6, :cond_4

    :cond_1
    move v0, v4

    .line 1705
    .local v0, dragging:Z
    :goto_1
    if-nez v3, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isPageMoving()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_2
    move v1, v4

    .line 1707
    .local v1, enableChildrenLayers:Z
    :goto_2
    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenLayersEnabled:Z

    if-eq v1, v4, :cond_6

    .line 1708
    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenLayersEnabled:Z

    .line 1712
    if-nez v1, :cond_6

    .line 1713
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageCount()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 1714
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setChildrenLayersEnabled(Z)V

    .line 1713
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0           #dragging:Z
    .end local v1           #enableChildrenLayers:Z
    .end local v2           #i:I
    .end local v3           #small:Z
    :cond_3
    move v3, v5

    .line 1703
    goto :goto_0

    .restart local v3       #small:Z
    :cond_4
    move v0, v5

    .line 1704
    goto :goto_1

    .restart local v0       #dragging:Z
    :cond_5
    move v1, v5

    .line 1705
    goto :goto_2

    .line 1718
    .restart local v1       #enableChildrenLayers:Z
    :cond_6
    return-void
.end method

.method private updateWallpaperOffsets()V
    .locals 6

    .prologue
    .line 963
    const/4 v1, 0x0

    .line 964
    .local v1, updateNow:Z
    const/4 v0, 0x1

    .line 965
    .local v0, keepUpdating:Z
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    if-eqz v2, :cond_2

    .line 966
    const/4 v1, 0x1

    .line 967
    const/4 v0, 0x0

    .line 968
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperOffset:Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 969
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 973
    :goto_0
    if-eqz v1, :cond_0

    .line 974
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 975
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWindowToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperOffset:Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v4

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperOffset:Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 979
    :cond_0
    if-eqz v0, :cond_1

    .line 980
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->fastInvalidate()V

    .line 982
    :cond_1
    return-void

    .line 971
    :cond_2
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperOffset:Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method private validateDrag(Landroid/view/DragEvent;)Landroid/util/Pair;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DragEvent;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/cyanogenmod/trebuchet/InstallWidgetReceiver$WidgetMimeTypeHandlerData;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2731
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getModel()Lcom/cyanogenmod/trebuchet/LauncherModel;

    move-result-object v3

    .line 2732
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    .line 2733
    invoke-virtual {v4}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v5

    .line 2734
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    .line 2735
    invoke-virtual {v4, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v0

    .line 2736
    const-string v6, "com.android.launcher/shortcut"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2737
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2746
    :goto_1
    return-object v0

    .line 2739
    :cond_0
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6, v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->resolveWidgetsForMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 2741
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2742
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 2734
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2746
    goto :goto_1
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 10

    .prologue
    const/high16 v9, 0x3f80

    .line 920
    iget v6, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperWidth:I

    .line 921
    .local v6, wallpaperTravelWidth:I
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 922
    iget v6, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperTravelWidth:I

    .line 926
    :cond_0
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float v8, v9, v8

    invoke-virtual {v7, v8, v9}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 931
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLayoutScale:F

    .line 932
    .local v1, layoutScale:F
    iput v9, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLayoutScale:F

    .line 933
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getScrollRange()I

    move-result v5

    .line 936
    .local v5, scrollRange:I
    const/4 v7, 0x0

    iget v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollX:I

    iget v9, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mMaxScrollX:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v0, v7

    .line 937
    .local v0, adjustedScrollX:F
    iget v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperScrollRatio:F

    mul-float/2addr v0, v7

    .line 938
    iput v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLayoutScale:F

    .line 940
    int-to-float v7, v5

    div-float v4, v0, v7

    .line 942
    .local v4, scrollProgress:F
    int-to-float v7, v6

    mul-float/2addr v7, v4

    iget v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperWidth:I

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float v3, v7, v8

    .line 944
    .local v3, offsetInDips:F
    iget v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperWidth:I

    int-to-float v7, v7

    div-float v2, v3, v7

    .line 945
    .local v2, offset:F
    return v2
.end method

.method private wallpaperTravelToScreenWidthRatio(II)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 852
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 873
    const v1, 0x3e9d89d7

    mul-float/2addr v0, v1

    const v1, 0x3f80fc10

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public acceptDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)Z
    .locals 14
    .parameter "d"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2348
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragSource:Lcom/cyanogenmod/trebuchet/DragSource;

    if-eq v0, p0, :cond_7

    .line 2350
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    if-nez v0, :cond_0

    move v0, v11

    .line 2405
    :goto_0
    return v0

    .line 2353
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v11

    goto :goto_0

    .line 2355
    :cond_1
    iget v1, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->x:I

    iget v2, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->y:I

    iget v3, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->xOffset:I

    iget v4, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->yOffset:I

    iget-object v5, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/Workspace;->getDragViewVisualCenter(IIIILcom/cyanogenmod/trebuchet/DragView;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    .line 2359
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2360
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->mapPointFromSelfToSibling(Landroid/view/View;[F)V

    .line 2365
    :goto_1
    const/4 v3, 0x1

    .line 2366
    .local v3, spanX:I
    const/4 v4, 0x1

    .line 2367
    .local v4, spanY:I
    const/4 v10, 0x0

    .line 2368
    .local v10, ignoreView:Landroid/view/View;
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    if-eqz v0, :cond_3

    .line 2369
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    .line 2370
    .local v7, dragCellInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;
    iget v3, v7, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanX:I

    .line 2371
    iget v4, v7, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanY:I

    .line 2372
    iget-object v10, v7, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2379
    .end local v7           #dragCellInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;
    :goto_2
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v11

    float-to-int v1, v0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v12

    float-to-int v2, v0

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/Workspace;->findNearestArea(IIIILcom/cyanogenmod/trebuchet/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    .line 2381
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    invoke-virtual {p0, v0, v1, v2, v12}, Lcom/cyanogenmod/trebuchet/Workspace;->willCreateUserFolder(Lcom/cyanogenmod/trebuchet/ItemInfo;Lcom/cyanogenmod/trebuchet/CellLayout;[IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v12

    .line 2382
    goto :goto_0

    .line 2362
    .end local v3           #spanX:I
    .end local v4           #spanY:I
    .end local v10           #ignoreView:Landroid/view/View;
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p0, v0, v1, v13}, Lcom/cyanogenmod/trebuchet/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto :goto_1

    .line 2374
    .restart local v3       #spanX:I
    .restart local v4       #spanY:I
    .restart local v10       #ignoreView:Landroid/view/View;
    :cond_3
    iget-object v8, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v8, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 2375
    .local v8, dragInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;
    iget v3, v8, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanX:I

    .line 2376
    iget v4, v8, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanY:I

    goto :goto_2

    .line 2384
    .end local v8           #dragInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;
    :cond_4
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/cyanogenmod/trebuchet/CellLayout;[I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v12

    .line 2386
    goto/16 :goto_0

    .line 2390
    :cond_5
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0, v13, v3, v4, v10}, Lcom/cyanogenmod/trebuchet/CellLayout;->findCellForSpanIgnoring([IIILandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2393
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2394
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v9

    .line 2395
    .local v9, hotseat:Lcom/cyanogenmod/trebuchet/Hotseat;
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    aget v0, v0, v11

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    aget v1, v1, v12

    invoke-virtual {v9, v0, v1}, Lcom/cyanogenmod/trebuchet/Hotseat;->getOrderInHotseat(II)I

    move-result v0

    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v11

    .line 2397
    goto/16 :goto_0

    .line 2401
    .end local v9           #hotseat:Lcom/cyanogenmod/trebuchet/Hotseat;
    :cond_6
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->showOutOfSpaceMessage()V

    move v0, v11

    .line 2402
    goto/16 :goto_0

    .end local v3           #spanX:I
    .end local v4           #spanY:I
    .end local v10           #ignoreView:Landroid/view/View;
    :cond_7
    move v0, v12

    .line 2405
    goto/16 :goto_0
.end method

.method addApplicationShortcut(Lcom/cyanogenmod/trebuchet/ShortcutInfo;Lcom/cyanogenmod/trebuchet/CellLayout;JIIIZII)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    const v1, 0x7f030003

    invoke-virtual {v0, v1, p2, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/cyanogenmod/trebuchet/ShortcutInfo;)Landroid/view/View;

    move-result-object v6

    .line 2332
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2333
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p2

    move/from16 v4, p9

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    .line 2334
    const/4 v0, 0x0

    aget v7, v1, v0

    const/4 v0, 0x1

    aget v8, v1, v0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    move-object v3, v6

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/cyanogenmod/trebuchet/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 2335
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v2, 0x0

    aget v5, v1, v2

    const/4 v2, 0x1

    aget v6, v1, v2

    move-object v1, p1

    move-wide v2, p3

    move/from16 v4, p5

    invoke-static/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;JIII)V

    .line 2337
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1657
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1658
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getOpenFolder()Lcom/cyanogenmod/trebuchet/Folder;

    move-result-object v0

    .line 1659
    .local v0, openFolder:Lcom/cyanogenmod/trebuchet/Folder;
    if-eqz v0, :cond_1

    .line 1660
    invoke-virtual {v0, p1, p2}, Lcom/cyanogenmod/trebuchet/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1665
    .end local v0           #openFolder:Lcom/cyanogenmod/trebuchet/Folder;
    :cond_0
    :goto_0
    return-void

    .line 1662
    .restart local v0       #openFolder:Lcom/cyanogenmod/trebuchet/Folder;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/cyanogenmod/trebuchet/PagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method addInScreen(Landroid/view/View;JIIIII)V
    .locals 10
    .parameter "child"
    .parameter "container"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 570
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/cyanogenmod/trebuchet/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 571
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIIIZ)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 587
    const-wide/16 v2, -0x64

    cmp-long v2, p2, v2

    if-nez v2, :cond_2

    .line 588
    if-ltz p4, :cond_0

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v2

    if-lt p4, v2, :cond_2

    .line 589
    :cond_0
    const-string v2, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The screen must be >= 0 and < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "); skipping child"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_1
    :goto_0
    return-void

    .line 596
    :cond_2
    const-wide/16 v2, -0x65

    cmp-long v2, p2, v2

    if-nez v2, :cond_9

    .line 597
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Hotseat;->getLayout()Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v3

    .line 598
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 600
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mHideIconLabels:Z

    if-nez v2, :cond_3

    .line 602
    instance-of v2, p1, Lcom/cyanogenmod/trebuchet/FolderIcon;

    if-eqz v2, :cond_7

    move-object v2, p1

    .line 603
    check-cast v2, Lcom/cyanogenmod/trebuchet/FolderIcon;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/cyanogenmod/trebuchet/FolderIcon;->setTextVisible(Z)V

    .line 609
    :cond_3
    :goto_1
    if-gez p4, :cond_8

    .line 610
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v2

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1}, Lcom/cyanogenmod/trebuchet/Hotseat;->getOrderInHotseat(II)I

    move-result p4

    move-object v9, v3

    move/from16 v6, p6

    move/from16 v5, p5

    move v4, p4

    .line 631
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 632
    if-nez v2, :cond_c

    .line 633
    new-instance v2, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-direct {v2, v5, v6, v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;-><init>(IIII)V

    move-object v10, v2

    .line 641
    :goto_3
    if-gez p7, :cond_4

    if-gez p8, :cond_4

    .line 642
    const/4 v2, 0x0

    iput-boolean v2, v10, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->isLockedToGrid:Z

    :cond_4
    move-wide v2, p2

    move/from16 v7, p7

    move/from16 v8, p8

    .line 646
    invoke-static/range {v2 .. v8}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v5

    .line 647
    instance-of v2, p1, Lcom/cyanogenmod/trebuchet/Folder;

    if-nez v2, :cond_d

    const/4 v7, 0x1

    .line 648
    :goto_4
    if-eqz p9, :cond_e

    const/4 v4, 0x0

    :goto_5
    move-object v2, v9

    move-object v3, p1

    move-object v6, v10

    invoke-virtual/range {v2 .. v7}, Lcom/cyanogenmod/trebuchet/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 652
    const-string v2, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add to item at ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to CellLayout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_5
    instance-of v2, p1, Lcom/cyanogenmod/trebuchet/Folder;

    if-nez v2, :cond_6

    .line 656
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 657
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 659
    :cond_6
    instance-of v2, p1, Lcom/cyanogenmod/trebuchet/DropTarget;

    if-eqz v2, :cond_1

    .line 660
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    check-cast p1, Lcom/cyanogenmod/trebuchet/DropTarget;

    invoke-virtual {v2, p1}, Lcom/cyanogenmod/trebuchet/DragController;->addDropTarget(Lcom/cyanogenmod/trebuchet/DropTarget;)V

    goto/16 :goto_0

    .line 604
    :cond_7
    instance-of v2, p1, Lcom/cyanogenmod/trebuchet/BubbleTextView;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 605
    check-cast v2, Lcom/cyanogenmod/trebuchet/BubbleTextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setTextVisible(Z)V

    goto/16 :goto_1

    .line 614
    :cond_8
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/cyanogenmod/trebuchet/Hotseat;->getCellXFromOrder(I)I

    move-result p5

    .line 615
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/cyanogenmod/trebuchet/Hotseat;->getCellYFromOrder(I)I

    move-result p6

    move-object v9, v3

    move/from16 v6, p6

    move/from16 v5, p5

    move v4, p4

    goto/16 :goto_2

    .line 618
    :cond_9
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mHideIconLabels:Z

    if-nez v2, :cond_a

    .line 620
    instance-of v2, p1, Lcom/cyanogenmod/trebuchet/FolderIcon;

    if-eqz v2, :cond_b

    move-object v2, p1

    .line 621
    check-cast v2, Lcom/cyanogenmod/trebuchet/FolderIcon;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/trebuchet/FolderIcon;->setTextVisible(Z)V

    .line 627
    :cond_a
    :goto_6
    invoke-virtual {p0, p4}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 628
    new-instance v3, Lcom/cyanogenmod/trebuchet/IconKeyEventListener;

    invoke-direct {v3}, Lcom/cyanogenmod/trebuchet/IconKeyEventListener;-><init>()V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object v9, v2

    move/from16 v6, p6

    move/from16 v5, p5

    move v4, p4

    goto/16 :goto_2

    .line 622
    :cond_b
    instance-of v2, p1, Lcom/cyanogenmod/trebuchet/BubbleTextView;

    if-eqz v2, :cond_a

    move-object v2, p1

    .line 623
    check-cast v2, Lcom/cyanogenmod/trebuchet/BubbleTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setTextVisible(Z)V

    goto :goto_6

    .line 635
    :cond_c
    iput v5, v2, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    .line 636
    iput v6, v2, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    .line 637
    move/from16 v0, p7

    iput v0, v2, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellHSpan:I

    .line 638
    move/from16 v0, p8

    iput v0, v2, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellVSpan:I

    move-object v10, v2

    goto/16 :goto_3

    .line 647
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 648
    :cond_e
    const/4 v4, -0x1

    goto/16 :goto_5
.end method

.method addToExistingFolderIfNecessary(Landroid/view/View;Lcom/cyanogenmod/trebuchet/CellLayout;[ILcom/cyanogenmod/trebuchet/DropTarget$DragObject;Z)Z
    .locals 6
    .parameter "newView"
    .parameter "target"
    .parameter "targetCell"
    .parameter "d"
    .parameter "external"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2494
    aget v4, p3, v3

    aget v5, p3, v2

    invoke-virtual {p2, v4, v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2495
    .local v0, dropOverView:Landroid/view/View;
    instance-of v4, v0, Lcom/cyanogenmod/trebuchet/FolderIcon;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 2496
    check-cast v1, Lcom/cyanogenmod/trebuchet/FolderIcon;

    .line 2497
    .local v1, fi:Lcom/cyanogenmod/trebuchet/FolderIcon;
    iget-object v4, p4, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/cyanogenmod/trebuchet/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2498
    invoke-virtual {v1, p4}, Lcom/cyanogenmod/trebuchet/FolderIcon;->onDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 2501
    if-nez p5, :cond_0

    .line 2502
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/trebuchet/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget-object v4, v4, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/cyanogenmod/trebuchet/CellLayout;->removeView(Landroid/view/View;)V

    .line 2507
    .end local v1           #fi:Lcom/cyanogenmod/trebuchet/FolderIcon;
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method backgroundAlphaInterpolator(F)F
    .locals 3
    .parameter

    .prologue
    .line 1246
    const v0, 0x3dcccccd

    .line 1247
    const v1, 0x3ecccccd

    .line 1248
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    .line 1249
    const/4 v0, 0x0

    .line 1253
    :goto_0
    return v0

    .line 1250
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 1251
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 1253
    :cond_1
    sub-float v2, p1, v0

    sub-float v0, v1, v0

    div-float v0, v2, v0

    goto :goto_0
.end method

.method public beginDragShared(Landroid/view/View;Lcom/cyanogenmod/trebuchet/DragSource;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 2284
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2287
    sget v5, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 2290
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p0, p1, v1, v5}, Lcom/cyanogenmod/trebuchet/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2292
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 2294
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempXY:[I

    invoke-virtual {v2, p1, v3}, Lcom/cyanogenmod/trebuchet/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 2295
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempXY:[I

    aget v2, v2, v9

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 2296
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempXY:[I

    const/4 v7, 0x1

    aget v3, v3, v7

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v3, v7

    .line 2300
    instance-of v7, p1, Lcom/cyanogenmod/trebuchet/BubbleTextView;

    if-nez v7, :cond_0

    instance-of v7, p1, Lcom/cyanogenmod/trebuchet/PagedViewIcon;

    if-eqz v7, :cond_2

    .line 2301
    :cond_0
    const v0, 0x7f0b0021

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2302
    const v7, 0x7f0b001a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2303
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 2304
    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    .line 2305
    add-int v9, v6, v0

    .line 2306
    add-int v10, v7, v0

    .line 2307
    add-int/2addr v3, v7

    .line 2310
    new-instance v0, Landroid/graphics/Point;

    neg-int v8, v5

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-direct {v0, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 2311
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v0

    .line 2318
    :goto_0
    instance-of v0, p1, Lcom/cyanogenmod/trebuchet/BubbleTextView;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 2319
    check-cast v0, Lcom/cyanogenmod/trebuchet/BubbleTextView;

    .line 2320
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->clearPressedOrFocusedBackground()V

    .line 2323
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    sget v6, Lcom/cyanogenmod/trebuchet/DragController;->DRAG_ACTION_MOVE:I

    move-object v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/cyanogenmod/trebuchet/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 2325
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2326
    return-void

    .line 2312
    :cond_2
    instance-of v5, p1, Lcom/cyanogenmod/trebuchet/FolderIcon;

    if-eqz v5, :cond_3

    .line 2313
    const v5, 0x7f0b003d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2314
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-direct {v8, v9, v9, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v0

    goto :goto_0

    :cond_3
    move-object v8, v0

    move-object v7, v0

    goto :goto_0
.end method

.method public buildPageHardwareLayers()V
    .locals 4

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v0

    .line 427
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 428
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 429
    .local v1, cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->buildChildrenLayer()V

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 432
    .end local v0           #childCount:I
    .end local v1           #cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method public changeState(Lcom/cyanogenmod/trebuchet/Workspace$State;)V
    .locals 1
    .parameter "shrinkState"

    .prologue
    .line 1865
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->changeState(Lcom/cyanogenmod/trebuchet/Workspace$State;Z)V

    .line 1866
    return-void
.end method

.method changeState(Lcom/cyanogenmod/trebuchet/Workspace$State;Z)V
    .locals 1
    .parameter "state"
    .parameter "animated"

    .prologue
    .line 1869
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->changeState(Lcom/cyanogenmod/trebuchet/Workspace$State;ZI)V

    .line 1870
    return-void
.end method

.method changeState(Lcom/cyanogenmod/trebuchet/Workspace$State;ZI)V
    .locals 22
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mState:Lcom/cyanogenmod/trebuchet/Workspace$State;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_0

    .line 2114
    :goto_0
    return-void

    .line 1876
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mFirstLayout:Z

    if-eqz v2, :cond_1

    .line 1879
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 1880
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/trebuchet/Workspace;->mStateAfterFirstLayout:Lcom/cyanogenmod/trebuchet/Workspace$State;

    goto :goto_0

    .line 1885
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/Workspace;->initAnimationArrays()V

    .line 1888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1889
    :cond_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    .line 1892
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mNextPage:I

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->setCurrentPage(I)V

    .line 1894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mState:Lcom/cyanogenmod/trebuchet/Workspace$State;

    .line 1895
    sget-object v2, Lcom/cyanogenmod/trebuchet/Workspace$State;->NORMAL:Lcom/cyanogenmod/trebuchet/Workspace$State;

    if-ne v4, v2, :cond_17

    const/4 v2, 0x1

    move v3, v2

    .line 1896
    :goto_2
    sget-object v2, Lcom/cyanogenmod/trebuchet/Workspace$State;->SMALL:Lcom/cyanogenmod/trebuchet/Workspace$State;

    if-ne v4, v2, :cond_18

    const/4 v2, 0x1

    move v4, v2

    .line 1897
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/trebuchet/Workspace;->mState:Lcom/cyanogenmod/trebuchet/Workspace$State;

    .line 1898
    sget-object v2, Lcom/cyanogenmod/trebuchet/Workspace$State;->NORMAL:Lcom/cyanogenmod/trebuchet/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_19

    const/4 v2, 0x1

    move v5, v2

    .line 1899
    :goto_4
    sget-object v2, Lcom/cyanogenmod/trebuchet/Workspace$State;->SPRING_LOADED:Lcom/cyanogenmod/trebuchet/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1a

    const/4 v2, 0x1

    move v6, v2

    .line 1900
    :goto_5
    sget-object v2, Lcom/cyanogenmod/trebuchet/Workspace$State;->SMALL:Lcom/cyanogenmod/trebuchet/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1b

    const/4 v2, 0x1

    move/from16 v18, v2

    .line 1901
    :goto_6
    const/high16 v9, 0x3f80

    .line 1902
    if-eqz v6, :cond_1c

    const/high16 v2, 0x3f80

    .line 1903
    :goto_7
    const/4 v8, 0x0

    .line 1904
    const/16 v19, 0x0

    .line 1905
    const/4 v7, 0x1

    .line 1907
    sget-object v10, Lcom/cyanogenmod/trebuchet/Workspace$State;->NORMAL:Lcom/cyanogenmod/trebuchet/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v10, :cond_1f

    .line 1908
    move-object/from16 v0, p0

    iget v10, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mSpringLoadedShrinkFactor:F

    if-eqz v18, :cond_1d

    const v9, 0x3dcccccd

    :goto_8
    sub-float v9, v10, v9

    .line 1909
    if-eqz v3, :cond_1e

    if-eqz v18, :cond_1e

    .line 1910
    const/4 v7, 0x0

    .line 1911
    if-eqz p2, :cond_3

    .line 1912
    const/4 v10, 0x0

    const/16 v11, 0x96

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/cyanogenmod/trebuchet/Workspace;->hideScrollingIndicator(ZI)V

    .line 1914
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/cyanogenmod/trebuchet/Workspace;->setLayoutScale(F)V

    .line 1915
    invoke-direct/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/Workspace;->updateChildrenLayersEnabled()V

    move v15, v7

    move/from16 v16, v2

    move/from16 v17, v9

    .line 1924
    :goto_9
    if-eqz v15, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0a0004

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v7, v2

    .line 1927
    :goto_a
    const/4 v2, 0x0

    move v9, v8

    move v8, v2

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v2

    if-ge v8, v2, :cond_28

    .line 1928
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 1929
    const/4 v14, 0x0

    .line 1930
    const/4 v13, 0x0

    .line 1931
    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getAlpha()F

    move-result v12

    .line 1932
    const/high16 v11, 0x3f80

    .line 1933
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mFadeInAdjacentScreens:Z

    if-eqz v10, :cond_4

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    if-ne v8, v10, :cond_21

    :cond_4
    const/high16 v10, 0x3f80

    .line 1937
    :goto_c
    if-eqz v4, :cond_5

    if-nez v5, :cond_6

    :cond_5
    if-eqz v3, :cond_8

    if-eqz v18, :cond_8

    .line 1941
    :cond_6
    move-object/from16 v0, p0

    iget v10, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    if-eq v8, v10, :cond_7

    if-nez p2, :cond_22

    .line 1942
    :cond_7
    const/high16 v10, 0x3f80

    .line 1943
    const/4 v11, 0x0

    .line 1951
    :cond_8
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTransitionEffect:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-object/from16 v20, v0

    sget-object v21, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->Tablet:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_9

    if-nez v18, :cond_9

    if-eqz v6, :cond_a

    .line 1952
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_23

    .line 1953
    const/high16 v13, 0x4148

    .line 1960
    :cond_a
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTransitionEffect:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-object/from16 v20, v0

    sget-object v21, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->Stack:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 1961
    if-nez v18, :cond_b

    if-eqz v6, :cond_24

    .line 1962
    :cond_b
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setVisibility(I)V

    .line 1972
    :cond_c
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTransitionEffect:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-object/from16 v20, v0

    sget-object v21, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->Tablet:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_d

    if-nez v5, :cond_e

    :cond_d
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v20

    if-eqz v20, :cond_f

    if-nez v18, :cond_e

    if-eqz v6, :cond_f

    .line 1974
    :cond_e
    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v13, v9, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getOffsetXForRotation(FII)F

    move-result v9

    .line 1977
    :cond_f
    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTransitionEffect:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-object/from16 v20, v0

    sget-object v21, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->RotateUp:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTransitionEffect:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-object/from16 v20, v0

    sget-object v21, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->RotateDown:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 1979
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTransitionEffect:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    sget-object v20, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->RotateUp:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-object/from16 v0, v20

    if-ne v14, v0, :cond_26

    const/high16 v14, 0x4148

    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    move/from16 v20, v0

    sub-int v20, v20, v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v14, v14, v20

    .line 1983
    :cond_11
    if-nez v18, :cond_12

    if-eqz v6, :cond_15

    .line 1984
    :cond_12
    const/high16 v20, 0x44a0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDensity:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setCameraDistance(F)V

    .line 1985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTransitionEffect:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-object/from16 v20, v0

    sget-object v21, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->RotateUp:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTransitionEffect:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-object/from16 v20, v0

    sget-object v21, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->RotateDown:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 1987
    :cond_13
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setTranslationX(F)V

    .line 1989
    :cond_14
    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getMeasuredWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f00

    mul-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setPivotX(F)V

    .line 1990
    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getMeasuredHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f00

    mul-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setPivotY(F)V

    .line 1993
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldAlphas:[F

    move-object/from16 v20, v0

    aput v12, v20, v8

    .line 1994
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewAlphas:[F

    aput v10, v12, v8

    .line 1995
    if-eqz p2, :cond_27

    .line 1996
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldTranslationXs:[F

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getTranslationX()F

    move-result v12

    aput v12, v10, v8

    .line 1997
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldTranslationYs:[F

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getTranslationY()F

    move-result v12

    aput v12, v10, v8

    .line 1998
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldScaleXs:[F

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getScaleX()F

    move-result v12

    aput v12, v10, v8

    .line 1999
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldScaleYs:[F

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getScaleY()F

    move-result v12

    aput v12, v10, v8

    .line 2000
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldBackgroundAlphas:[F

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getBackgroundAlpha()F

    move-result v12

    aput v12, v10, v8

    .line 2001
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldBackgroundAlphaMultipliers:[F

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getBackgroundAlphaMultiplier()F

    move-result v12

    aput v12, v10, v8

    .line 2002
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldRotations:[F

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getRotation()F

    move-result v12

    aput v12, v10, v8

    .line 2003
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mOldRotationYs:[F

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getRotationY()F

    move-result v2

    aput v2, v10, v8

    .line 2005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewTranslationXs:[F

    aput v9, v2, v8

    .line 2006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewTranslationYs:[F

    aput v19, v2, v8

    .line 2007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewScaleXs:[F

    aput v17, v2, v8

    .line 2008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewScaleYs:[F

    aput v17, v2, v8

    .line 2009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewBackgroundAlphas:[F

    aput v16, v2, v8

    .line 2010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewBackgroundAlphaMultipliers:[F

    aput v11, v2, v8

    .line 2011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewRotations:[F

    aput v14, v2, v8

    .line 2012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewRotationYs:[F

    aput v13, v2, v8

    .line 1927
    :goto_11
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_b

    .line 1892
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    goto/16 :goto_1

    .line 1895
    :cond_17
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_2

    .line 1896
    :cond_18
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    .line 1898
    :cond_19
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_4

    .line 1899
    :cond_1a
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_5

    .line 1900
    :cond_1b
    const/4 v2, 0x0

    move/from16 v18, v2

    goto/16 :goto_6

    .line 1902
    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 1908
    :cond_1d
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 1917
    :cond_1e
    const/high16 v2, 0x3f80

    .line 1918
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/cyanogenmod/trebuchet/Workspace;->setLayoutScale(F)V

    move v15, v7

    move/from16 v16, v2

    move/from16 v17, v9

    goto/16 :goto_9

    .line 1921
    :cond_1f
    const/high16 v10, 0x3f80

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/cyanogenmod/trebuchet/Workspace;->setLayoutScale(F)V

    move v15, v7

    move/from16 v16, v2

    move/from16 v17, v9

    goto/16 :goto_9

    .line 1924
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0a0010

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v7, v2

    goto/16 :goto_a

    .line 1933
    :cond_21
    const/4 v10, 0x0

    goto/16 :goto_c

    .line 1945
    :cond_22
    const/4 v12, 0x0

    .line 1946
    const/4 v10, 0x0

    goto/16 :goto_d

    .line 1954
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v8, v0, :cond_a

    .line 1955
    const/high16 v13, -0x3eb8

    goto/16 :goto_e

    .line 1963
    :cond_24
    if-eqz v5, :cond_c

    .line 1964
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v8, v0, :cond_25

    .line 1965
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setVisibility(I)V

    goto/16 :goto_f

    .line 1967
    :cond_25
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setVisibility(I)V

    goto/16 :goto_f

    .line 1979
    :cond_26
    const/high16 v14, -0x3eb8

    goto/16 :goto_10

    .line 2014
    :cond_27
    invoke-virtual {v2, v9}, Lcom/cyanogenmod/trebuchet/CellLayout;->setTranslationX(F)V

    .line 2015
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setTranslationY(F)V

    .line 2016
    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setScaleX(F)V

    .line 2017
    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setScaleY(F)V

    .line 2018
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setBackgroundAlpha(F)V

    .line 2019
    invoke-virtual {v2, v11}, Lcom/cyanogenmod/trebuchet/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 2020
    invoke-virtual {v2, v10}, Lcom/cyanogenmod/trebuchet/CellLayout;->setAlpha(F)V

    .line 2021
    invoke-virtual {v2, v14}, Lcom/cyanogenmod/trebuchet/CellLayout;->setRotation(F)V

    .line 2022
    invoke-virtual {v2, v13}, Lcom/cyanogenmod/trebuchet/CellLayout;->setRotationY(F)V

    .line 2023
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto/16 :goto_11

    .line 2027
    :cond_28
    if-eqz p2, :cond_2a

    .line 2028
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    int-to-long v8, v7

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 2031
    if-eqz v15, :cond_29

    .line 2032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mZoomInInterpolator:Lcom/cyanogenmod/trebuchet/Workspace$ZoomInInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2035
    :cond_29
    new-instance v3, Lcom/cyanogenmod/trebuchet/Workspace$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v4}, Lcom/cyanogenmod/trebuchet/Workspace$5;-><init>(Lcom/cyanogenmod/trebuchet/Workspace;ZZ)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2050
    new-instance v3, Lcom/cyanogenmod/trebuchet/Workspace$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/cyanogenmod/trebuchet/Workspace$6;-><init>(Lcom/cyanogenmod/trebuchet/Workspace;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2076
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    int-to-long v4, v7

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 2078
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x4000

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2079
    new-instance v4, Lcom/cyanogenmod/trebuchet/Workspace$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/cyanogenmod/trebuchet/Workspace$7;-><init>(Lcom/cyanogenmod/trebuchet/Workspace;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2095
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move/from16 v0, p3

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 2099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 2103
    :cond_2a
    if-eqz v6, :cond_2b

    .line 2107
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/cyanogenmod/trebuchet/Workspace;->animateBackgroundGradient(FZ)V

    .line 2113
    :goto_12
    invoke-direct/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/Workspace;->syncChildrenLayersEnabledOnVisiblePages()V

    goto/16 :goto_0

    .line 2111
    :cond_2b
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/cyanogenmod/trebuchet/Workspace;->animateBackgroundGradient(FZ)V

    goto :goto_12

    .line 2028
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2076
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method clearChildrenCache()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1691
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v2

    .line 1692
    .local v2, screenCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1693
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 1694
    .local v1, layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    invoke-virtual {v1, v4}, Lcom/cyanogenmod/trebuchet/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1696
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1697
    invoke-virtual {v1, v4}, Lcom/cyanogenmod/trebuchet/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1692
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1700
    .end local v1           #layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    :cond_1
    return-void
.end method

.method clearDropTargets()V
    .locals 7

    .prologue
    .line 3696
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 3697
    .local v1, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/CellLayoutChildren;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    .line 3698
    .local v4, layout:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 3699
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 3700
    invoke-virtual {v4, v3}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3701
    .local v5, v:Landroid/view/View;
    instance-of v6, v5, Lcom/cyanogenmod/trebuchet/DropTarget;

    if-eqz v6, :cond_1

    .line 3702
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    check-cast v5, Lcom/cyanogenmod/trebuchet/DropTarget;

    .end local v5           #v:Landroid/view/View;
    invoke-virtual {v6, v5}, Lcom/cyanogenmod/trebuchet/DragController;->removeDropTarget(Lcom/cyanogenmod/trebuchet/DropTarget;)V

    .line 3699
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3706
    .end local v0           #childCount:I
    .end local v3           #j:I
    .end local v4           #layout:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    :cond_2
    return-void
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 1129
    invoke-super {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->computeScroll()V

    .line 1130
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollWallpaper:Z

    if-eqz v0, :cond_0

    .line 1131
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->syncWallpaperOffsetWithScroll()V

    .line 1133
    :cond_0
    return-void
.end method

.method public createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 2171
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2174
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 2175
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v4

    .line 2176
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, p3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2183
    :goto_0
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2184
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/cyanogenmod/trebuchet/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 2185
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOutlineHelper:Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;

    invoke-virtual {v2, v0, p2, v1}, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;->applyOuterBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    .line 2186
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewMultiplyColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2187
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2189
    return-object v0

    .line 2179
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method createUserFolderIfNecessary(Landroid/view/View;JLcom/cyanogenmod/trebuchet/CellLayout;[IZLcom/cyanogenmod/trebuchet/DragView;Ljava/lang/Runnable;)Z
    .locals 21
    .parameter "newView"
    .parameter "container"
    .parameter "target"
    .parameter "targetCell"
    .parameter "external"
    .parameter "dragView"
    .parameter "postAnimationRunnable"

    .prologue
    .line 2444
    const/4 v2, 0x0

    aget v2, p5, v2

    const/4 v3, 0x1

    aget v3, p5, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    .line 2445
    .local v9, v:Landroid/view/View;
    const/16 v19, 0x0

    .line 2446
    .local v19, hasntMoved:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    if-eqz v2, :cond_0

    .line 2447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v17

    .line 2448
    .local v17, cellParent:Lcom/cyanogenmod/trebuchet/CellLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v2, v2, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cellX:I

    const/4 v3, 0x0

    aget v3, p5, v3

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v2, v2, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cellY:I

    const/4 v3, 0x1

    aget v3, p5, v3

    if-ne v2, v3, :cond_2

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_2

    const/16 v19, 0x1

    .line 2452
    .end local v17           #cellParent:Lcom/cyanogenmod/trebuchet/CellLayout;
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v2, :cond_3

    :cond_1
    const/4 v2, 0x0

    .line 2489
    :goto_1
    return v2

    .line 2448
    .restart local v17       #cellParent:Lcom/cyanogenmod/trebuchet/CellLayout;
    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    .line 2453
    .end local v17           #cellParent:Lcom/cyanogenmod/trebuchet/CellLayout;
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2454
    if-nez p5, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v6, v2, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->screen:I

    .line 2456
    .local v6, screen:I
    :goto_2
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v15, v2, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 2457
    .local v15, aboveShortcut:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v2, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    move/from16 v20, v0

    .line 2459
    .local v20, willBecomeShortcut:Z
    if-eqz v15, :cond_8

    if-eqz v20, :cond_8

    .line 2460
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 2461
    .local v10, sourceInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 2463
    .local v18, destInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    if-nez p6, :cond_4

    .line 2464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->removeView(Landroid/view/View;)V

    .line 2467
    :cond_4
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2468
    .local v12, folderLocation:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v9, v12}, Lcom/cyanogenmod/trebuchet/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v13

    .line 2469
    .local v13, scale:F
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lcom/cyanogenmod/trebuchet/CellLayout;->removeView(Landroid/view/View;)V

    .line 2471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v3, 0x0

    aget v7, p5, v3

    const/4 v3, 0x1

    aget v8, p5, v3

    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/cyanogenmod/trebuchet/Launcher;->addFolder(Lcom/cyanogenmod/trebuchet/CellLayout;JIII)Lcom/cyanogenmod/trebuchet/FolderIcon;

    move-result-object v7

    .line 2473
    .local v7, fi:Lcom/cyanogenmod/trebuchet/FolderIcon;
    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellX:I

    .line 2474
    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellY:I

    .line 2475
    const/4 v2, -0x1

    iput v2, v10, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellX:I

    .line 2476
    const/4 v2, -0x1

    iput v2, v10, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->cellY:I

    .line 2479
    if-eqz p7, :cond_6

    const/16 v16, 0x1

    .line 2480
    .local v16, animate:Z
    :goto_3
    if-eqz v16, :cond_7

    move-object/from16 v8, v18

    move-object/from16 v11, p7

    move-object/from16 v14, p8

    .line 2481
    invoke-virtual/range {v7 .. v14}, Lcom/cyanogenmod/trebuchet/FolderIcon;->performCreateAnimation(Lcom/cyanogenmod/trebuchet/ShortcutInfo;Landroid/view/View;Lcom/cyanogenmod/trebuchet/ShortcutInfo;Landroid/view/View;Landroid/graphics/Rect;FLjava/lang/Runnable;)V

    .line 2487
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2454
    .end local v6           #screen:I
    .end local v7           #fi:Lcom/cyanogenmod/trebuchet/FolderIcon;
    .end local v10           #sourceInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .end local v12           #folderLocation:Landroid/graphics/Rect;
    .end local v13           #scale:F
    .end local v15           #aboveShortcut:Z
    .end local v16           #animate:Z
    .end local v18           #destInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .end local v20           #willBecomeShortcut:Z
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v6

    goto/16 :goto_2

    .line 2479
    .restart local v6       #screen:I
    .restart local v7       #fi:Lcom/cyanogenmod/trebuchet/FolderIcon;
    .restart local v10       #sourceInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .restart local v12       #folderLocation:Landroid/graphics/Rect;
    .restart local v13       #scale:F
    .restart local v15       #aboveShortcut:Z
    .restart local v18       #destInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .restart local v20       #willBecomeShortcut:Z
    :cond_6
    const/16 v16, 0x0

    goto :goto_3

    .line 2484
    .restart local v16       #animate:Z
    :cond_7
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->addItem(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V

    .line 2485
    invoke-virtual {v7, v10}, Lcom/cyanogenmod/trebuchet/FolderIcon;->addItem(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V

    goto :goto_4

    .line 2489
    .end local v7           #fi:Lcom/cyanogenmod/trebuchet/FolderIcon;
    .end local v10           #sourceInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .end local v12           #folderLocation:Landroid/graphics/Rect;
    .end local v13           #scale:F
    .end local v16           #animate:Z
    .end local v18           #destInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x3f060a92

    .line 748
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    .line 749
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mXDown:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 750
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mYDown:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 752
    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    div-float v2, v1, v0

    .line 755
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 757
    iget v3, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 758
    :cond_2
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->cancelCurrentPageLongPress()V

    .line 761
    :cond_3
    const v0, 0x3f860a92

    cmpl-float v0, v2, v0

    if-gtz v0, :cond_0

    .line 764
    cmpl-float v0, v2, v4

    if-lez v0, :cond_4

    .line 769
    sub-float v0, v2, v4

    .line 770
    div-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 772
    const/high16 v1, 0x3f80

    const/high16 v2, 0x4080

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-super {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0

    .line 775
    :cond_4
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    .line 1605
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1607
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mInScrollArea:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1608
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getWidth()I

    move-result v2

    .line 1609
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getHeight()I

    move-result v3

    .line 1610
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1613
    sub-int v0, v3, v0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mPaddingBottom:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 1614
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mPaddingTop:I

    add-int v4, v1, v0

    .line 1615
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mPaddingBottom:I

    add-int v5, v1, v0

    .line 1617
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 1618
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 1620
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getIsDragOverlapping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1621
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1622
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollX:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollX:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v2, v6

    sub-int/2addr v3, v5

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1624
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1632
    :cond_0
    :goto_0
    return-void

    .line 1625
    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->getIsDragOverlapping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1626
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1627
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollX:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v1, v6

    iget v6, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollX:I

    add-int/2addr v2, v6

    sub-int/2addr v3, v5

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1629
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_1

    .line 722
    :cond_0
    const/4 v0, 0x0

    .line 724
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method enableChildrenCache(II)V
    .locals 6
    .parameter "fromPage"
    .parameter "toPage"

    .prologue
    const/4 v5, 0x1

    .line 1672
    if-le p1, p2, :cond_0

    .line 1673
    move v3, p1

    .line 1674
    .local v3, temp:I
    move p1, p2

    .line 1675
    move p2, v3

    .line 1678
    .end local v3           #temp:I
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v2

    .line 1680
    .local v2, screenCount:I
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1681
    add-int/lit8 v4, v2, -0x1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1683
    move v0, p1

    .local v0, i:I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 1684
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 1685
    .local v1, layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    invoke-virtual {v1, v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1686
    invoke-virtual {v1, v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1683
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1688
    .end local v1           #layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    :cond_1
    return-void
.end method

.method public estimateItemPosition(Lcom/cyanogenmod/trebuchet/CellLayout;Lcom/cyanogenmod/trebuchet/ItemInfo;IIII)Landroid/graphics/RectF;
    .locals 8
    .parameter "cl"
    .parameter "pendingInfo"
    .parameter "hCell"
    .parameter "vCell"
    .parameter "hSpan"
    .parameter "vSpan"

    .prologue
    .line 410
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .local v5, r:Landroid/graphics/RectF;
    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    .line 411
    invoke-virtual/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 412
    instance-of v0, p2, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;

    if-eqz v0, :cond_0

    move-object v7, p2

    .line 413
    check-cast v7, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;

    .line 414
    .local v7, widgetInfo:Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/cyanogenmod/trebuchet/Launcher;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 416
    .local v6, p:Landroid/graphics/Rect;
    iget v0, v5, Landroid/graphics/RectF;->top:F

    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->top:F

    .line 417
    iget v0, v5, Landroid/graphics/RectF;->left:F

    iget v1, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 418
    iget v0, v5, Landroid/graphics/RectF;->right:F

    iget v1, v6, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->right:F

    .line 419
    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    .line 421
    .end local v6           #p:Landroid/graphics/Rect;
    .end local v7           #widgetInfo:Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;
    :cond_0
    return-object v5
.end method

.method public estimateItemSize(IILcom/cyanogenmod/trebuchet/PendingAddItemInfo;Z)[I
    .locals 10
    .parameter "hSpan"
    .parameter "vSpan"
    .parameter "pendingItemInfo"
    .parameter "springLoaded"

    .prologue
    const v2, 0x7fffffff

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 391
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 392
    .local v8, size:[I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/CellLayout;

    .local v1, cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    move-object v0, p0

    move-object v2, p3

    move v4, v3

    move v5, p1

    move v6, p2

    .line 394
    invoke-virtual/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/Workspace;->estimateItemPosition(Lcom/cyanogenmod/trebuchet/CellLayout;Lcom/cyanogenmod/trebuchet/ItemInfo;IIII)Landroid/graphics/RectF;

    move-result-object v7

    .line 395
    .local v7, r:Landroid/graphics/RectF;
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    aput v0, v8, v3

    .line 396
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    aput v0, v8, v9

    .line 397
    if-eqz p4, :cond_0

    .line 398
    aget v0, v8, v3

    int-to-float v0, v0

    iget v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v8, v3

    .line 399
    aget v0, v8, v9

    int-to-float v0, v0

    iget v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v8, v9

    .line 405
    .end local v1           #cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    .end local v7           #r:Landroid/graphics/RectF;
    :cond_0
    :goto_0
    return-object v8

    .line 403
    :cond_1
    aput v2, v8, v3

    .line 404
    aput v2, v8, v9

    goto :goto_0
.end method

.method public exitWidgetResizeMode()V
    .locals 2

    .prologue
    .line 1837
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v0

    .line 1838
    .local v0, dragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/DragLayer;->clearAllResizeFrames()V

    .line 1839
    return-void
.end method

.method protected flashScrollingIndicator(Z)V
    .locals 1
    .parameter "animated"

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mFadeScrollingIndicator:Z

    if-eqz v0, :cond_0

    .line 843
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->flashScrollingIndicator(Z)V

    .line 847
    :goto_0
    return-void

    .line 845
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->showScrollingIndicator(Z)V

    goto :goto_0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 1217
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundAlpha:F

    return v0
.end method

.method public getChildrenOutlineAlpha()F
    .locals 1

    .prologue
    .line 1171
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineAlpha:F

    return v0
.end method

.method public getCurrentDropLayout()Lcom/cyanogenmod/trebuchet/CellLayout;
    .locals 2

    .prologue
    .line 3438
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNextPage:I

    goto :goto_0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3855
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNextPage:I

    .line 3856
    :goto_0
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mContext:Landroid/content/Context;

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3855
    :cond_0
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    goto :goto_0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 1649
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1650
    const/high16 v0, 0x6

    .line 1652
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getDropTargetDelegate(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)Lcom/cyanogenmod/trebuchet/DropTarget;
    .locals 1
    .parameter "d"

    .prologue
    .line 2722
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/cyanogenmod/trebuchet/Folder;
    .locals 8
    .parameter "tag"

    .prologue
    .line 3665
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 3666
    .local v1, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/CellLayoutChildren;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    .line 3667
    .local v6, layout:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    invoke-virtual {v6}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 3668
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 3669
    invoke-virtual {v6, v4}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3670
    .local v0, child:Landroid/view/View;
    instance-of v7, v0, Lcom/cyanogenmod/trebuchet/Folder;

    if-eqz v7, :cond_1

    move-object v3, v0

    .line 3671
    check-cast v3, Lcom/cyanogenmod/trebuchet/Folder;

    .line 3672
    .local v3, f:Lcom/cyanogenmod/trebuchet/Folder;
    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/Folder;->getInfo()Lcom/cyanogenmod/trebuchet/FolderInfo;

    move-result-object v7

    if-ne v7, p1, :cond_1

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/Folder;->getInfo()Lcom/cyanogenmod/trebuchet/FolderInfo;

    move-result-object v7

    iget-boolean v7, v7, Lcom/cyanogenmod/trebuchet/FolderInfo;->opened:Z

    if-eqz v7, :cond_1

    .line 3678
    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #f:Lcom/cyanogenmod/trebuchet/Folder;
    .end local v4           #i:I
    .end local v6           #layout:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    :goto_1
    return-object v3

    .line 3668
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v4       #i:I
    .restart local v6       #layout:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3678
    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v6           #layout:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "outRect"

    .prologue
    const/4 v2, 0x0

    .line 3219
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDisplayWidth:I

    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDisplayHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3220
    return-void
.end method

.method public getHorizontalWallpaperOffset()F
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperOffset:Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v0

    return v0
.end method

.method public getLocationInDragLayer([I)V
    .locals 1
    .parameter "loc"

    .prologue
    .line 3861
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/cyanogenmod/trebuchet/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 3862
    return-void
.end method

.method protected getOffsetXForRotation(FII)F
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f00

    .line 1231
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1232
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 1233
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1234
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1235
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 1237
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mMatrix:Landroid/graphics/Matrix;

    neg-int v1, p2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    neg-int v2, p3

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1238
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v1, p2

    mul-float/2addr v1, v3

    int-to-float v2, p3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1239
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempFloat2:[F

    int-to-float v1, p2

    aput v1, v0, v4

    .line 1240
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempFloat2:[F

    const/4 v1, 0x1

    int-to-float v2, p3

    aput v2, v0, v1

    .line 1241
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempFloat2:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1242
    int-to-float v0, p2

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempFloat2:[F

    aget v1, v1, v4

    sub-float v1, v0, v1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    mul-float/2addr v0, v1

    return v0

    :cond_0
    const/high16 v0, -0x4080

    goto :goto_0
.end method

.method getOpenFolder()Lcom/cyanogenmod/trebuchet/Folder;
    .locals 6

    .prologue
    .line 541
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v2

    .line 542
    .local v2, dragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;
    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/DragLayer;->getChildCount()I

    move-result v1

    .line 543
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 544
    invoke-virtual {v2, v4}, Lcom/cyanogenmod/trebuchet/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 545
    .local v0, child:Landroid/view/View;
    instance-of v5, v0, Lcom/cyanogenmod/trebuchet/Folder;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 546
    check-cast v3, Lcom/cyanogenmod/trebuchet/Folder;

    .line 547
    .local v3, folder:Lcom/cyanogenmod/trebuchet/Folder;
    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/Folder;->getInfo()Lcom/cyanogenmod/trebuchet/FolderInfo;

    move-result-object v5

    iget-boolean v5, v5, Lcom/cyanogenmod/trebuchet/FolderInfo;->opened:Z

    if-eqz v5, :cond_0

    .line 551
    .end local v0           #child:Landroid/view/View;
    .end local v3           #folder:Lcom/cyanogenmod/trebuchet/Folder;
    :goto_1
    return-object v3

    .line 543
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 551
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method getParentCellLayoutForView(Landroid/view/View;)Lcom/cyanogenmod/trebuchet/CellLayout;
    .locals 5
    .parameter "v"

    .prologue
    .line 3624
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v2

    .line 3625
    .local v2, layouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/CellLayout;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 3626
    .local v1, layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildrenLayout()Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 3630
    .end local v1           #layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/cyanogenmod/trebuchet/Workspace$State;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mState:Lcom/cyanogenmod/trebuchet/Workspace$State;

    return-object v0
.end method

.method public getTransitionEffect()Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTransitionEffect:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    return-object v0
.end method

.method public getVerticalWallpaperOffset()F
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperOffset:Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v0

    return v0
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 7
    .parameter "tag"

    .prologue
    .line 3682
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 3683
    .local v1, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/CellLayoutChildren;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    .line 3684
    .local v5, layout:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 3685
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3686
    invoke-virtual {v5, v3}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3687
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_1

    .line 3692
    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #layout:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    :goto_1
    return-object v0

    .line 3685
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v5       #layout:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3692
    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #layout:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/CellLayoutChildren;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3654
    .local v0, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/CellLayoutChildren;>;"
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v2

    .line 3655
    .local v2, screenCount:I
    const/4 v1, 0x0

    .local v1, screen:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3656
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildrenLayout()Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3655
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3658
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3659
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/Hotseat;->getLayout()Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildrenLayout()Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3661
    :cond_1
    return-object v0
.end method

.method getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/CellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3638
    .local v0, layouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/CellLayout;>;"
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v2

    .line 3639
    .local v2, screenCount:I
    const/4 v1, 0x0

    .local v1, screen:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3640
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3639
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3642
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3643
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/Hotseat;->getLayout()Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3645
    :cond_1
    return-object v0
.end method

.method hideOutlines()V
    .locals 4

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_2

    .line 1147
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1149
    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    .line 1150
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1151
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1152
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1154
    :cond_2
    return-void
.end method

.method protected hitsNextPage(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 693
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    .line 697
    .local v0, current:I
    :goto_0
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/cyanogenmod/trebuchet/Workspace;->hitsPage(IFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 693
    .end local v0           #current:I
    :cond_0
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNextPage:I

    goto :goto_0

    .line 697
    .restart local v0       #current:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 682
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    .line 686
    .local v0, current:I
    :goto_0
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/cyanogenmod/trebuchet/Workspace;->hitsPage(IFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 682
    .end local v0           #current:I
    :cond_0
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNextPage:I

    goto :goto_0

    .line 686
    .restart local v0       #current:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected initWorkspace()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 458
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 459
    .local v1, context:Landroid/content/Context;
    iget v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDefaultHomescreen:I

    iput v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    .line 460
    iget v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    invoke-static {v8}, Lcom/cyanogenmod/trebuchet/Launcher;->setScreen(I)V

    .line 461
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/LauncherApplication;

    .line 462
    .local v0, app:Lcom/cyanogenmod/trebuchet/LauncherApplication;
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->getIconCache()Lcom/cyanogenmod/trebuchet/IconCache;

    move-result-object v8

    iput-object v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    .line 463
    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 464
    invoke-virtual {p0, v14}, Lcom/cyanogenmod/trebuchet/Workspace;->setWillNotDraw(Z)V

    .line 465
    invoke-virtual {p0, v13}, Lcom/cyanogenmod/trebuchet/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 467
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 469
    .local v6, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 471
    .local v4, inflater:Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNumberHomescreens:I

    if-ge v3, v8, :cond_0

    .line 472
    const v8, 0x7f03001e

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 473
    .local v7, screen:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    iget v9, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScreenPaddingHorizontal:I

    add-int/2addr v8, v9

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    iget v10, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScreenPaddingVertical:I

    add-int/2addr v9, v10

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    iget v11, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScreenPaddingHorizontal:I

    add-int/2addr v10, v11

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    iget v12, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScreenPaddingVertical:I

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 477
    invoke-virtual {p0, v7}, Lcom/cyanogenmod/trebuchet/Workspace;->addView(Landroid/view/View;)V

    .line 471
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 480
    .end local v7           #screen:Landroid/view/View;
    :cond_0
    const v8, 0x7f020001

    :try_start_0
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_1
    iget-boolean v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mShowSearchBar:Z

    if-nez v8, :cond_2

    .line 486
    const/4 v5, 0x0

    .line 487
    .local v5, paddingTop:I
    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v8}, Lcom/cyanogenmod/trebuchet/Launcher;->getCurrentOrientation()I

    move-result v8

    if-ne v8, v13, :cond_1

    .line 488
    const v8, 0x7f0b0005

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    .line 490
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getPaddingRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getPaddingBottom()I

    move-result v9

    invoke-virtual {p0, v14, v5, v8, v9}, Lcom/cyanogenmod/trebuchet/Workspace;->setPadding(IIII)V

    .line 493
    .end local v5           #paddingTop:I
    :cond_2
    iget-boolean v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mShowScrollingIndicator:Z

    if-nez v8, :cond_3

    .line 494
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->disableScrollingIndicator()V

    .line 497
    :cond_3
    new-instance v8, Lcom/cyanogenmod/trebuchet/Workspace$1;

    invoke-direct {v8, p0}, Lcom/cyanogenmod/trebuchet/Workspace$1;-><init>(Lcom/cyanogenmod/trebuchet/Workspace;)V

    iput-object v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 514
    const/16 v8, 0x64

    iput v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mSnapVelocity:I

    .line 515
    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v8}, Lcom/cyanogenmod/trebuchet/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 516
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDisplayWidth:I

    .line 517
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDisplayHeight:I

    .line 518
    iget-boolean v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollWallpaper:Z

    if-eqz v8, :cond_4

    .line 519
    new-instance v8, Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v8, p0}, Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;-><init>(Lcom/cyanogenmod/trebuchet/Workspace;)V

    iput-object v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperOffset:Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;

    .line 520
    iget v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDisplayWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDisplayWidth:I

    iget v10, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDisplayHeight:I

    invoke-direct {p0, v9, v10}, Lcom/cyanogenmod/trebuchet/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperTravelWidth:I

    .line 523
    :cond_4
    return-void

    .line 481
    .end local v2           #display:Landroid/view/Display;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method isDrawingBackgroundGradient()Z
    .locals 2

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDrawBackground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 3520
    const/4 v0, 0x1

    return v0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mState:Lcom/cyanogenmod/trebuchet/Workspace$State;

    sget-object v1, Lcom/cyanogenmod/trebuchet/Workspace$State;->SPRING_LOADED:Lcom/cyanogenmod/trebuchet/Workspace$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmall()Z
    .locals 2

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mState:Lcom/cyanogenmod/trebuchet/Workspace$State;

    sget-object v1, Lcom/cyanogenmod/trebuchet/Workspace$State;->SMALL:Lcom/cyanogenmod/trebuchet/Workspace$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mState:Lcom/cyanogenmod/trebuchet/Workspace$State;

    sget-object v1, Lcom/cyanogenmod/trebuchet/Workspace$State;->SPRING_LOADED:Lcom/cyanogenmod/trebuchet/Workspace$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchingState()Z
    .locals 1

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method isTouchActive()Z
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mapPointFromChildToSelf(Landroid/view/View;[F)V
    .locals 4
    .parameter "v"
    .parameter "xy"

    .prologue
    .line 2905
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2906
    const/4 v0, 0x0

    aget v1, p2, v0

    iget v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollX:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 2907
    const/4 v0, 0x1

    aget v1, p2, v0

    iget v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollY:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 2908
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 1
    .parameter "v"
    .parameter "xy"

    .prologue
    .line 2866
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2867
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V
    .locals 4
    .parameter "v"
    .parameter "xy"
    .parameter "cachedInverseMatrix"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2880
    if-nez p3, :cond_0

    .line 2881
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2882
    iget-object p3, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 2884
    :cond_0
    aget v0, p2, v2

    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 2885
    aget v0, p2, v3

    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 2886
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2887
    return-void
.end method

.method mapPointFromSelfToSibling(Landroid/view/View;[F)V
    .locals 4
    .parameter "v"
    .parameter "xy"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2894
    aget v0, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 2895
    aget v0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 2896
    return-void
.end method

.method moveToDefaultScreen(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 3835
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3836
    if-eqz p1, :cond_1

    .line 3837
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDefaultHomescreen:I

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->snapToPage(I)V

    .line 3842
    :cond_0
    :goto_0
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDefaultHomescreen:I

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3843
    return-void

    .line 3839
    :cond_1
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDefaultHomescreen:I

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method protected notifyPageSwitchListener()V
    .locals 1

    .prologue
    .line 836
    invoke-super {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->notifyPageSwitchListener()V

    .line 837
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->setScreen(I)V

    .line 838
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1524
    invoke-super {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->onAttachedToWindow()V

    .line 1525
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1526
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->computeScroll()V

    .line 1527
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/DragController;->setWindowToken(Landroid/os/IBinder;)V

    .line 1528
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1532
    return-void
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsDragOccuring:Z

    .line 450
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->updateChildrenLayersEnabled()V

    .line 451
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->unlockScreenOrientationOnLargeUI()V

    .line 452
    return-void
.end method

.method public onDragEnter(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 2683
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    if-eqz v0, :cond_0

    .line 2684
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setIsDragOverlapping(Z)V

    .line 2685
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->onDragExit()V

    .line 2687
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getCurrentDropLayout()Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 2688
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setIsDragOverlapping(Z)V

    .line 2689
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->onDragEnter()V

    .line 2693
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2694
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->showOutlines()V

    .line 2696
    :cond_1
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 15
    .parameter

    .prologue
    .line 2754
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    .line 2755
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 2756
    const/4 v1, 0x2

    new-array v6, v1, [I

    .line 2757
    invoke-virtual {v0, v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->getLocationOnScreen([I)V

    .line 2759
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    const/4 v3, 0x0

    aget v3, v6, v3

    sub-int v3, v1, v3

    .line 2760
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v4, 0x1

    aget v4, v6, v4

    sub-int v4, v1, v4

    .line 2762
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2856
    invoke-super/range {p0 .. p1}, Lcom/cyanogenmod/trebuchet/PagedView;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2765
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/cyanogenmod/trebuchet/Workspace;->validateDrag(Landroid/view/DragEvent;)Landroid/util/Pair;

    move-result-object v1

    .line 2766
    if-eqz v1, :cond_1

    .line 2767
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2768
    :goto_1
    if-eqz v1, :cond_2

    .line 2770
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v6, v1, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->findCellForSpan([III)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2771
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->showOutOfSpaceMessage()V

    .line 2772
    const/4 v0, 0x0

    goto :goto_0

    .line 2767
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2777
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mContext:Landroid/content/Context;

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2779
    const/4 v0, 0x0

    goto :goto_0

    .line 2784
    :cond_2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 2785
    sget v2, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 2786
    invoke-direct {p0, v1, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2789
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->showOutlines()V

    .line 2790
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->onDragEnter()V

    .line 2791
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/cyanogenmod/trebuchet/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 2793
    const/4 v0, 0x1

    goto :goto_0

    .line 2797
    :pswitch_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/cyanogenmod/trebuchet/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 2798
    const/4 v0, 0x1

    goto :goto_0

    .line 2801
    :pswitch_2
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->getModel()Lcom/cyanogenmod/trebuchet/LauncherModel;

    move-result-object v5

    .line 2802
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v10

    .line 2808
    const/4 v1, 0x0

    aput v3, v6, v1

    .line 2809
    const/4 v1, 0x1

    aput v4, v6, v1

    .line 2810
    invoke-direct/range {p0 .. p1}, Lcom/cyanogenmod/trebuchet/Workspace;->validateDrag(Landroid/view/DragEvent;)Landroid/util/Pair;

    move-result-object v7

    .line 2811
    if-eqz v7, :cond_3

    .line 2812
    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2813
    iget-object v11, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .line 2814
    if-nez v11, :cond_4

    const/4 v1, 0x1

    .line 2815
    :goto_2
    invoke-virtual {v2, v8}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v9

    .line 2816
    if-eqz v1, :cond_5

    .line 2817
    invoke-virtual {v10, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2818
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/ClipData;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v2, v1, v6}, Lcom/cyanogenmod/trebuchet/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    move-result-object v1

    .line 2819
    if-eqz v1, :cond_3

    .line 2820
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v5, 0x0

    aput v3, v2, v5

    const/4 v3, 0x1

    aput v4, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/cyanogenmod/trebuchet/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/cyanogenmod/trebuchet/CellLayout;Z)V

    .line 2848
    :cond_3
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2814
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 2823
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 2826
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/InstallWidgetReceiver$WidgetMimeTypeHandlerData;

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/InstallWidgetReceiver$WidgetMimeTypeHandlerData;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2827
    new-instance v1, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;

    invoke-direct {v1, v0, v9, v10}, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2829
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    const-wide/16 v2, -0x64

    iget v4, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/Launcher;->addAppWidgetFromDrop(Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;JI[I[I)V

    goto :goto_3

    .line 2834
    :cond_6
    new-instance v7, Lcom/cyanogenmod/trebuchet/InstallWidgetReceiver$WidgetListAdapter;

    iget-object v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    iget v13, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    move-object v12, v0

    move-object v14, v6

    invoke-direct/range {v7 .. v14}, Lcom/cyanogenmod/trebuchet/InstallWidgetReceiver$WidgetListAdapter;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Ljava/lang/String;Landroid/content/ClipData;Ljava/util/List;Lcom/cyanogenmod/trebuchet/CellLayout;I[I)V

    .line 2837
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2839
    invoke-virtual {v0, v7, v7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2840
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2841
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mContext:Landroid/content/Context;

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2843
    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2844
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 2852
    :pswitch_3
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->onDragExit()V

    .line 2853
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->hideOutlines()V

    .line 2854
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2762
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDragExit(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 2718
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->doDragExit(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 2719
    return-void
.end method

.method public onDragOver(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 12
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 3051
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mInScrollArea:Z

    if-eqz v0, :cond_1

    .line 3169
    :cond_0
    :goto_0
    return-void

    .line 3052
    :cond_1
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    .line 3054
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 3056
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 3059
    iget v0, v7, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanX:I

    if-ltz v0, :cond_2

    iget v0, v7, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanY:I

    if-gez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3060
    :cond_3
    iget v1, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->x:I

    iget v2, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->y:I

    iget v3, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->xOffset:I

    iget v4, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->yOffset:I

    iget-object v5, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/Workspace;->getDragViewVisualCenter(IIIILcom/cyanogenmod/trebuchet/DragView;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    .line 3064
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3065
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->isExternalDragWidget(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3066
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/cyanogenmod/trebuchet/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 3067
    iget v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->x:I

    iget v1, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->y:I

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3068
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Hotseat;->getLayout()Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v0

    .line 3071
    :goto_1
    if-nez v0, :cond_4

    .line 3072
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    iget v1, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->x:I

    int-to-float v1, v1

    iget v2, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->y:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/cyanogenmod/trebuchet/Workspace;->findMatchingPageForDragOver(Lcom/cyanogenmod/trebuchet/DragView;FFZ)Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v0

    .line 3074
    :cond_4
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    if-eq v0, v1, :cond_6

    .line 3076
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->cleanupFolderCreation(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 3078
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    if-eqz v1, :cond_5

    .line 3079
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v1, v11}, Lcom/cyanogenmod/trebuchet/CellLayout;->setIsDragOverlapping(Z)V

    .line 3080
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->onDragExit()V

    .line 3082
    :cond_5
    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 3083
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    if-eqz v1, :cond_a

    .line 3084
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v1, v10}, Lcom/cyanogenmod/trebuchet/CellLayout;->setIsDragOverlapping(Z)V

    .line 3085
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->onDragEnter()V

    .line 3090
    :goto_2
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mState:Lcom/cyanogenmod/trebuchet/Workspace$State;

    sget-object v2, Lcom/cyanogenmod/trebuchet/Workspace$State;->SPRING_LOADED:Lcom/cyanogenmod/trebuchet/Workspace$State;

    if-ne v1, v2, :cond_b

    move v1, v10

    .line 3091
    :goto_3
    if-eqz v1, :cond_6

    .line 3092
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3093
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mSpringLoadedDragController:Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;->cancel()V

    .line 3122
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    if-eqz v0, :cond_0

    .line 3123
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    if-nez v0, :cond_10

    move-object v9, v8

    .line 3126
    :goto_5
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3127
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->mapPointFromSelfToSibling(Landroid/view/View;[F)V

    .line 3131
    :goto_6
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 3133
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v11

    float-to-int v1, v0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v10

    float-to-int v2, v0

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    move-object v0, p0

    move v3, v10

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/Workspace;->findNearestArea(IIIILcom/cyanogenmod/trebuchet/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    .line 3135
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    aget v1, v1, v11

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    aget v2, v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 3138
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    invoke-virtual {p0, v8, v0, v2, v11}, Lcom/cyanogenmod/trebuchet/Workspace;->willCreateUserFolder(Lcom/cyanogenmod/trebuchet/ItemInfo;Lcom/cyanogenmod/trebuchet/CellLayout;[IZ)Z

    move-result v2

    .line 3140
    instance-of v3, v1, Lcom/cyanogenmod/trebuchet/FolderIcon;

    .line 3141
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLastDragOverView:Landroid/view/View;

    if-eq v1, v0, :cond_7

    .line 3142
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->cancelFolderCreation()V

    .line 3143
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLastDragOverView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLastDragOverView:Landroid/view/View;

    instance-of v0, v0, Lcom/cyanogenmod/trebuchet/FolderIcon;

    if-eqz v0, :cond_7

    .line 3144
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLastDragOverView:Landroid/view/View;

    check-cast v0, Lcom/cyanogenmod/trebuchet/FolderIcon;

    iget-object v4, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lcom/cyanogenmod/trebuchet/FolderIcon;->onDragExit(Ljava/lang/Object;)V

    .line 3148
    :cond_7
    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLastDragOverView:Landroid/view/View;

    if-eq v1, v0, :cond_8

    .line 3149
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mFolderCreationAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    new-instance v2, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    aget v5, v5, v11

    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    aget v6, v6, v10

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;-><init>(Lcom/cyanogenmod/trebuchet/Workspace;Lcom/cyanogenmod/trebuchet/CellLayout;II)V

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/Alarm;->setOnAlarmListener(Lcom/cyanogenmod/trebuchet/OnAlarmListener;)V

    .line 3151
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mFolderCreationAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Lcom/cyanogenmod/trebuchet/Alarm;->setAlarm(J)V

    .line 3154
    :cond_8
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLastDragOverView:Landroid/view/View;

    if-eq v1, v0, :cond_9

    if-eqz v3, :cond_9

    move-object v0, v1

    .line 3155
    check-cast v0, Lcom/cyanogenmod/trebuchet/FolderIcon;

    iget-object v2, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/FolderIcon;->onDragEnter(Ljava/lang/Object;)V

    .line 3156
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    if-eqz v0, :cond_9

    .line 3157
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->clearDragOutlines()V

    .line 3160
    :cond_9
    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLastDragOverView:Landroid/view/View;

    .line 3162
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    .line 3163
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v11

    float-to-int v3, v1

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v10

    float-to-int v4, v1

    iget v5, v7, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanX:I

    iget v6, v7, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanY:I

    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v7

    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v8

    move-object v1, v9

    invoke-virtual/range {v0 .. v8}, Lcom/cyanogenmod/trebuchet/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 3087
    :cond_a
    iput-object v8, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLastDragOverView:Landroid/view/View;

    goto/16 :goto_2

    :cond_b
    move v1, v11

    .line 3090
    goto/16 :goto_3

    .line 3095
    :cond_c
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mSpringLoadedDragController:Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;->setAlarm(Lcom/cyanogenmod/trebuchet/CellLayout;)V

    goto/16 :goto_4

    .line 3101
    :cond_d
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->isDragWidget(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3102
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/cyanogenmod/trebuchet/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 3103
    iget v0, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->x:I

    iget v1, p1, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->y:I

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3104
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Hotseat;->getLayout()Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v0

    .line 3107
    :goto_7
    if-nez v0, :cond_e

    .line 3108
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getCurrentDropLayout()Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v0

    .line 3110
    :cond_e
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    if-eq v0, v1, :cond_6

    .line 3111
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    if-eqz v1, :cond_f

    .line 3112
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v1, v11}, Lcom/cyanogenmod/trebuchet/CellLayout;->setIsDragOverlapping(Z)V

    .line 3113
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->onDragExit()V

    .line 3115
    :cond_f
    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 3116
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0, v10}, Lcom/cyanogenmod/trebuchet/CellLayout;->setIsDragOverlapping(Z)V

    .line 3117
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->onDragEnter()V

    goto/16 :goto_4

    .line 3123
    :cond_10
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v9, v0

    goto/16 :goto_5

    .line 3129
    :cond_11
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p0, v0, v1, v8}, Lcom/cyanogenmod/trebuchet/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto/16 :goto_6

    :cond_12
    move-object v0, v8

    goto :goto_7

    :cond_13
    move-object v0, v8

    goto/16 :goto_1
.end method

.method public onDragStart(Lcom/cyanogenmod/trebuchet/DragSource;Ljava/lang/Object;I)V
    .locals 1
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsDragOccuring:Z

    .line 444
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->updateChildrenLayersEnabled()V

    .line 445
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->lockScreenOrientationOnLargeUI()V

    .line 446
    return-void
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1806
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 1809
    .local v1, canvas:Landroid/graphics/Canvas;
    sget v0, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 1812
    .local v0, bitmapPadding:I
    invoke-direct {p0, p1, v1, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1813
    return-void
.end method

.method public onDragStartedWithItem(Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 8
    .parameter "info"
    .parameter "b"
    .parameter "alphaClipPaint"

    .prologue
    const/4 v4, 0x0

    .line 1816
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 1819
    .local v2, canvas:Landroid/graphics/Canvas;
    sget v3, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 1821
    .local v3, bitmapPadding:I
    iget v0, p1, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;->spanX:I

    iget v1, p1, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;->spanY:I

    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/cyanogenmod/trebuchet/Workspace;->estimateItemSize(IILcom/cyanogenmod/trebuchet/PendingAddItemInfo;Z)[I

    move-result-object v7

    .line 1824
    .local v7, size:[I
    aget v4, v7, v4

    const/4 v0, 0x1

    aget v5, v7, v0

    move-object v0, p0

    move-object v1, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/Workspace;->createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1825
    return-void
.end method

.method public onDragStopped(Z)V
    .locals 1
    .parameter "success"

    .prologue
    .line 1831
    if-nez p1, :cond_0

    .line 1832
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->doDragExit(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 1834
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    .line 1557
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollWallpaper:Z

    if-eqz v0, :cond_0

    .line 1558
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->updateWallpaperOffsets()V

    .line 1562
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDrawBackground:Z

    if-eqz v0, :cond_1

    .line 1563
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundAlpha:F

    const/high16 v1, 0x437f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1564
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1565
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollX:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollX:I

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1567
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1570
    :cond_1
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1571
    return-void
.end method

.method public onDrop(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
    .locals 39
    .parameter "d"

    .prologue
    .line 2511
    move-object/from16 v0, p1

    iget v5, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->yOffset:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/cyanogenmod/trebuchet/Workspace;->getDragViewVisualCenter(IIIILcom/cyanogenmod/trebuchet/DragView;[F)[F

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    .line 2515
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    if-eqz v4, :cond_0

    .line 2516
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v4, v6}, Lcom/cyanogenmod/trebuchet/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/cyanogenmod/trebuchet/Workspace;->mapPointFromSelfToSibling(Landroid/view/View;[F)V

    .line 2523
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 2525
    .local v7, dropTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;
    const/16 v38, -0x1

    .line 2526
    .local v38, snapScreen:I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragSource:Lcom/cyanogenmod/trebuchet/DragSource;

    move-object/from16 v0, p0

    if-eq v4, v0, :cond_3

    .line 2527
    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    float-to-int v6, v6

    aput v6, v5, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v6, v6, v8

    float-to-int v6, v6

    aput v6, v5, v4

    .line 2529
    .local v5, touchXY:[I
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/cyanogenmod/trebuchet/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/cyanogenmod/trebuchet/CellLayout;ZLcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 2645
    .end local v5           #touchXY:[I
    :cond_1
    :goto_1
    return-void

    .line 2519
    .end local v7           #dropTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;
    .end local v38           #snapScreen:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8}, Lcom/cyanogenmod/trebuchet/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto :goto_0

    .line 2530
    .restart local v7       #dropTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;
    .restart local v38       #snapScreen:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    if-eqz v4, :cond_1

    .line 2531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget-object v0, v4, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v25, v0

    .line 2533
    .local v25, cell:Landroid/view/View;
    if-eqz v7, :cond_a

    .line 2535
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v4

    if-eq v4, v7, :cond_b

    const/16 v31, 0x1

    .line 2536
    .local v31, hasMovedLayouts:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v4, v7}, Lcom/cyanogenmod/trebuchet/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v30

    .line 2537
    .local v30, hasMovedIntoHotseat:Z
    if-eqz v30, :cond_c

    const-wide/16 v15, -0x65

    .line 2540
    .local v15, container:J
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    if-gez v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v0, v4, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->screen:I

    move/from16 v37, v0

    .line 2542
    .local v37, screen:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v11, v4, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanX:I

    .line 2543
    .local v11, spanX:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v12, v4, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanY:I

    .line 2546
    .local v12, spanY:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v4, v4, v6

    float-to-int v9, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    float-to-int v10, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    move-object/from16 v8, p0

    move-object v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/cyanogenmod/trebuchet/Workspace;->findNearestArea(IIIILcom/cyanogenmod/trebuchet/CellLayout;[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    .line 2550
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mInScrollArea:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, v25

    move-object/from16 v17, v7

    invoke-virtual/range {v13 .. v21}, Lcom/cyanogenmod/trebuchet/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/cyanogenmod/trebuchet/CellLayout;[IZLcom/cyanogenmod/trebuchet/DragView;Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2555
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, v25

    move-object/from16 v19, v7

    move-object/from16 v21, p1

    invoke-virtual/range {v17 .. v22}, Lcom/cyanogenmod/trebuchet/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/cyanogenmod/trebuchet/CellLayout;[ILcom/cyanogenmod/trebuchet/DropTarget$DragObject;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2561
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v4, v4, v6

    float-to-int v0, v4

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    float-to-int v0, v4

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v0, v4, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v0, v4, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    move-object/from16 v24, v0

    move-object/from16 v17, p0

    move-object/from16 v22, v25

    move-object/from16 v23, v7

    invoke-direct/range {v17 .. v24}, Lcom/cyanogenmod/trebuchet/Workspace;->findNearestVacantArea(IIIILandroid/view/View;Lcom/cyanogenmod/trebuchet/CellLayout;[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    .line 2565
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    move/from16 v0, v37

    if-eq v4, v0, :cond_5

    if-nez v30, :cond_5

    .line 2566
    move/from16 v38, v37

    .line 2567
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->snapToPage(I)V

    .line 2570
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    if-ltz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    if-ltz v4, :cond_a

    .line 2571
    if-eqz v31, :cond_6

    .line 2573
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->removeView(Landroid/view/View;)V

    .line 2574
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v18, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v19, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v0, v4, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v0, v4, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanY:I

    move/from16 v21, v0

    move-object/from16 v13, p0

    move-object/from16 v14, v25

    move/from16 v17, v37

    invoke-virtual/range {v13 .. v21}, Lcom/cyanogenmod/trebuchet/Workspace;->addInScreen(Landroid/view/View;JIIIII)V

    .line 2579
    :cond_6
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 2580
    .local v14, info:Lcom/cyanogenmod/trebuchet/ItemInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v33

    check-cast v33, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 2581
    .local v33, lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v4, v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->onMove(Landroid/view/View;II)V

    .line 2582
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    move-object/from16 v0, v33

    iput v4, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    .line 2583
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    move-object/from16 v0, v33

    iput v4, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    .line 2584
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v0, v4, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->screen:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v18, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v19, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v0, v4, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v0, v4, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->spanY:I

    move/from16 v21, v0

    invoke-static/range {v15 .. v21}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    .line 2587
    const-wide/16 v8, -0x65

    cmp-long v4, v15, v8

    if-eqz v4, :cond_9

    move-object/from16 v0, v25

    instance-of v4, v0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;

    if-eqz v4, :cond_9

    .line 2589
    move-object/from16 v26, v7

    .local v26, cellLayout:Lcom/cyanogenmod/trebuchet/CellLayout;
    move-object/from16 v32, v25

    .line 2593
    check-cast v32, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;

    .line 2594
    .local v32, hostView:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;
    invoke-virtual/range {v32 .. v32}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v35

    .line 2595
    .local v35, pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v6, v6, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cellX:I

    if-ne v4, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v6, v6, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cellY:I

    if-eq v4, v6, :cond_10

    :cond_7
    const/16 v29, 0x1

    .line 2597
    .local v29, hasMovedCells:Z
    :goto_7
    move-object/from16 v0, v35

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mResizeAnyWidget:Z

    if-eqz v4, :cond_9

    :cond_8
    if-nez v29, :cond_9

    if-nez v31, :cond_9

    .line 2599
    new-instance v36, Lcom/cyanogenmod/trebuchet/Workspace$8;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/cyanogenmod/trebuchet/Workspace$8;-><init>(Lcom/cyanogenmod/trebuchet/Workspace;Lcom/cyanogenmod/trebuchet/ItemInfo;Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;Lcom/cyanogenmod/trebuchet/CellLayout;)V

    .line 2605
    .local v36, resizeRunnable:Ljava/lang/Runnable;
    new-instance v4, Lcom/cyanogenmod/trebuchet/Workspace$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v4, v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace$9;-><init>(Lcom/cyanogenmod/trebuchet/Workspace;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cyanogenmod/trebuchet/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 2617
    .end local v26           #cellLayout:Lcom/cyanogenmod/trebuchet/CellLayout;
    .end local v29           #hasMovedCells:Z
    .end local v32           #hostView:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;
    .end local v35           #pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v36           #resizeRunnable:Ljava/lang/Runnable;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    move-object/from16 v0, v33

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    move/from16 v18, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    move/from16 v19, v0

    move/from16 v17, v37

    invoke-static/range {v13 .. v19}, Lcom/cyanogenmod/trebuchet/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;JIII)V

    .line 2622
    .end local v11           #spanX:I
    .end local v12           #spanY:I
    .end local v14           #info:Lcom/cyanogenmod/trebuchet/ItemInfo;
    .end local v15           #container:J
    .end local v30           #hasMovedIntoHotseat:Z
    .end local v31           #hasMovedLayouts:Z
    .end local v33           #lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    .end local v37           #screen:I
    :cond_a
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v34

    check-cast v34, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 2626
    .local v34, parent:Lcom/cyanogenmod/trebuchet/CellLayout;
    new-instance v27, Lcom/cyanogenmod/trebuchet/Workspace$10;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace$10;-><init>(Lcom/cyanogenmod/trebuchet/Workspace;)V

    .line 2633
    .local v27, disableHardwareLayersRunnable:Ljava/lang/Runnable;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mAnimatingViewIntoPlace:Z

    .line 2634
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/DragView;->hasDrawn()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2635
    if-gez v38, :cond_11

    const/16 v28, -0x1

    .line 2636
    .local v28, duration:I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->setFinalScrollForPageChange(I)V

    .line 2637
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    move-object/from16 v0, v25

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v4, v6, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/DragLayer;->animateViewIntoPosition(Lcom/cyanogenmod/trebuchet/DragView;Landroid/view/View;ILjava/lang/Runnable;)V

    .line 2639
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->resetFinalScrollForPageChange(I)V

    .line 2643
    .end local v28           #duration:I
    :goto_9
    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->onDropChild(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2535
    .end local v27           #disableHardwareLayersRunnable:Ljava/lang/Runnable;
    .end local v34           #parent:Lcom/cyanogenmod/trebuchet/CellLayout;
    :cond_b
    const/16 v31, 0x0

    goto/16 :goto_2

    .line 2537
    .restart local v30       #hasMovedIntoHotseat:Z
    .restart local v31       #hasMovedLayouts:Z
    :cond_c
    const-wide/16 v15, -0x64

    goto/16 :goto_3

    .line 2540
    .restart local v15       #container:J
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/cyanogenmod/trebuchet/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v37

    goto/16 :goto_4

    .line 2542
    .restart local v37       #screen:I
    :cond_e
    const/4 v11, 0x1

    goto/16 :goto_5

    .line 2543
    .restart local v11       #spanX:I
    :cond_f
    const/4 v12, 0x1

    goto/16 :goto_6

    .line 2595
    .restart local v12       #spanY:I
    .restart local v14       #info:Lcom/cyanogenmod/trebuchet/ItemInfo;
    .restart local v26       #cellLayout:Lcom/cyanogenmod/trebuchet/CellLayout;
    .restart local v32       #hostView:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;
    .restart local v33       #lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    .restart local v35       #pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_10
    const/16 v29, 0x0

    goto/16 :goto_7

    .line 2635
    .end local v11           #spanX:I
    .end local v12           #spanY:I
    .end local v14           #info:Lcom/cyanogenmod/trebuchet/ItemInfo;
    .end local v15           #container:J
    .end local v26           #cellLayout:Lcom/cyanogenmod/trebuchet/CellLayout;
    .end local v30           #hasMovedIntoHotseat:Z
    .end local v31           #hasMovedLayouts:Z
    .end local v32           #hostView:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;
    .end local v33           #lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    .end local v35           #pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v37           #screen:I
    .restart local v27       #disableHardwareLayersRunnable:Ljava/lang/Runnable;
    .restart local v34       #parent:Lcom/cyanogenmod/trebuchet/CellLayout;
    :cond_11
    const/16 v28, 0x12c

    goto :goto_8

    .line 2641
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;Z)V
    .locals 4
    .parameter "target"
    .parameter "d"
    .parameter "success"

    .prologue
    const/4 v3, 0x0

    .line 3490
    if-eqz p3, :cond_2

    .line 3491
    if-eq p1, p0, :cond_0

    .line 3492
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    .line 3493
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->removeView(Landroid/view/View;)V

    .line 3494
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/cyanogenmod/trebuchet/DropTarget;

    if-eqz v1, :cond_0

    .line 3495
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v1, Lcom/cyanogenmod/trebuchet/DropTarget;

    invoke-virtual {v2, v1}, Lcom/cyanogenmod/trebuchet/DragController;->removeDropTarget(Lcom/cyanogenmod/trebuchet/DropTarget;)V

    .line 3512
    :cond_0
    :goto_0
    iget-boolean v1, p2, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->cancelled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3513
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3515
    :cond_1
    iput-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 3516
    iput-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    .line 3517
    return-void

    .line 3499
    :cond_2
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    .line 3503
    invoke-direct {p0, v3}, Lcom/cyanogenmod/trebuchet/Workspace;->doDragExit(Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V

    .line 3505
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v1, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3506
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Hotseat;->getLayout()Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v0

    .line 3510
    .local v0, cellLayout:Lcom/cyanogenmod/trebuchet/CellLayout;
    :goto_1
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->onDropChild(Landroid/view/View;)V

    goto :goto_0

    .line 3508
    .end local v0           #cellLayout:Lcom/cyanogenmod/trebuchet/CellLayout;
    :cond_3
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v1, v1, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .restart local v0       #cellLayout:Lcom/cyanogenmod/trebuchet/CellLayout;
    goto :goto_1
.end method

.method public onEnterScrollArea(III)Z
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "direction"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3554
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3555
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3556
    .local v2, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/Launcher;->getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/cyanogenmod/trebuchet/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 3557
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v6

    .line 3585
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return v3

    .line 3562
    :cond_1
    const/4 v3, 0x0

    .line 3563
    .local v3, result:Z
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSmall()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsSwitchingState:Z

    if-nez v4, :cond_0

    .line 3564
    iput-boolean v5, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mInScrollArea:Z

    .line 3566
    iget v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    if-nez p3, :cond_3

    const/4 v4, -0x1

    :goto_1
    add-int v1, v7, v4

    .line 3567
    .local v1, page:I
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 3568
    .local v0, layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->cancelFolderCreation()V

    .line 3570
    if-eqz v0, :cond_0

    .line 3572
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    if-eqz v4, :cond_2

    .line 3573
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v4, v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->setIsDragOverlapping(Z)V

    .line 3574
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/CellLayout;->onDragExit()V

    .line 3576
    :cond_2
    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 3577
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v4, v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->setIsDragOverlapping(Z)V

    .line 3581
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->invalidate()V

    .line 3582
    const/4 v3, 0x1

    goto :goto_0

    .end local v0           #layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    .end local v1           #page:I
    :cond_3
    move v4, v5

    .line 3566
    goto :goto_1
.end method

.method public onExitScrollArea()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3590
    const/4 v0, 0x0

    .line 3591
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mInScrollArea:Z

    if-eqz v1, :cond_1

    .line 3592
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    if-eqz v1, :cond_0

    .line 3594
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setIsDragOverlapping(Z)V

    .line 3595
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getCurrentDropLayout()Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 3596
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragTargetLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->onDragEnter()V

    .line 3600
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->invalidate()V

    .line 3601
    const/4 v0, 0x1

    .line 3603
    :cond_0
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mInScrollArea:Z

    .line 3605
    :cond_1
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 729
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_0

    .line 743
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 731
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mXDown:F

    .line 732
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mYDown:F

    goto :goto_0

    .line 736
    :sswitch_1
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTouchState:I

    if-nez v1, :cond_0

    .line 737
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 738
    .local v0, currentPage:Lcom/cyanogenmod/trebuchet/CellLayout;
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v1

    if-nez v1, :cond_0

    .line 739
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 729
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1536
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mFirstLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 1539
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/cyanogenmod/trebuchet/PagedView;->onLayout(ZIIII)V

    .line 1543
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mSwitchStateAfterFirstLayout:Z

    if-eqz v0, :cond_1

    .line 1544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 1547
    new-instance v0, Lcom/cyanogenmod/trebuchet/Workspace$4;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/trebuchet/Workspace$4;-><init>(Lcom/cyanogenmod/trebuchet/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1553
    :cond_1
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 2

    .prologue
    .line 786
    invoke-super {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->onPageBeginMoving()V

    .line 788
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->updateChildrenLayersEnabled()V

    .line 802
    :goto_0
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->showOutlines()V

    .line 805
    :cond_0
    return-void

    .line 791
    :cond_1
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 793
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNextPage:I

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->enableChildrenCache(II)V

    goto :goto_0

    .line 797
    :cond_2
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->enableChildrenCache(II)V

    goto :goto_0
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mFadeScrollingIndicator:Z

    if-eqz v0, :cond_0

    .line 809
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->hideScrollingIndicator(Z)V

    .line 812
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 813
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->updateChildrenLayersEnabled()V

    .line 819
    :goto_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/DragController;->dragging()Z

    move-result v0

    if-nez v0, :cond_1

    .line 821
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 822
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->hideOutlines()V

    .line 825
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 826
    const/4 v0, -0x1

    iput v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOverScrollPageIndex:I

    .line 828
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 829
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 832
    :cond_2
    return-void

    .line 815
    :cond_3
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->clearChildrenCache()V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1636
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1637
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getOpenFolder()Lcom/cyanogenmod/trebuchet/Folder;

    move-result-object v0

    .line 1638
    .local v0, openFolder:Lcom/cyanogenmod/trebuchet/Folder;
    if-eqz v0, :cond_0

    .line 1639
    invoke-virtual {v0, p1, p2}, Lcom/cyanogenmod/trebuchet/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1644
    .end local v0           #openFolder:Lcom/cyanogenmod/trebuchet/Folder;
    :goto_0
    return v1

    .line 1641
    .restart local v0       #openFolder:Lcom/cyanogenmod/trebuchet/Folder;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/PagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 1644
    .end local v0           #openFolder:Lcom/cyanogenmod/trebuchet/Folder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3525
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3526
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->setScreen(I)V

    .line 3527
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 527
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->onViewAdded(Landroid/view/View;)V

    .line 528
    instance-of v1, p1, Lcom/cyanogenmod/trebuchet/CellLayout;

    if-nez v1, :cond_0

    .line 529
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Workspace can only have CellLayout children."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 531
    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 532
    .local v0, cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    invoke-virtual {v0, p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 533
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setClickable(Z)V

    .line 534
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->enableHardwareLayers()V

    .line 535
    return-void
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1721
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTempCell:[I

    .line 1722
    invoke-virtual {p0, v4}, Lcom/cyanogenmod/trebuchet/Workspace;->getLocationOnScreen([I)V

    .line 1724
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1725
    aget v1, v4, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    aput v1, v4, v5

    .line 1726
    aget v1, v4, v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v1

    aput v0, v4, v6

    .line 1728
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_0

    const-string v2, "android.wallpaper.tap"

    :goto_0
    aget v3, v4, v5

    aget v4, v4, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1732
    return-void

    .line 1728
    :cond_0
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->onWindowVisibilityChanged(I)V

    .line 716
    return-void
.end method

.method protected overScroll(F)V
    .locals 1
    .parameter "amount"

    .prologue
    .line 1516
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->dampedOverScroll(F)V

    .line 1521
    :goto_0
    return-void

    .line 1519
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->acceleratedOverScroll(F)V

    goto :goto_0
.end method

.method overScrollBackgroundAlphaInterpolator(F)F
    .locals 2
    .parameter

    .prologue
    .line 1258
    const v0, 0x3da3d70a

    .line 1260
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOverScrollMaxBackgroundAlpha:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 1261
    iput p1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 1266
    :cond_0
    :goto_0
    div-float v0, p1, v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 1262
    :cond_1
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOverScrollMaxBackgroundAlpha:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 1263
    iget p1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOverScrollMaxBackgroundAlpha:F

    goto :goto_0
.end method

.method removeItems(Ljava/util/ArrayList;)V
    .locals 10
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
    .line 3709
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    .line 3711
    .local v4, widgets:Landroid/appwidget/AppWidgetManager;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 3712
    .local v3, packageNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3713
    .local v7, appCount:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    .line 3714
    .local v6, app:Lcom/cyanogenmod/trebuchet/ApplicationInfo;
    iget-object v0, v6, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3717
    .end local v6           #app:Lcom/cyanogenmod/trebuchet/ApplicationInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v8

    .line 3718
    .local v8, cellLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/CellLayout;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 3719
    .local v5, layoutParent:Lcom/cyanogenmod/trebuchet/CellLayout;
    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildrenLayout()Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-result-object v2

    .line 3722
    .local v2, layout:Landroid/view/ViewGroup;
    new-instance v0, Lcom/cyanogenmod/trebuchet/Workspace$13;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/Workspace$13;-><init>(Lcom/cyanogenmod/trebuchet/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Landroid/appwidget/AppWidgetManager;Lcom/cyanogenmod/trebuchet/CellLayout;)V

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 3801
    .end local v2           #layout:Landroid/view/ViewGroup;
    .end local v5           #layoutParent:Lcom/cyanogenmod/trebuchet/CellLayout;
    :cond_1
    return-void
.end method

.method public resetFinalScrollForPageChange(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 2661
    if-ltz p1, :cond_0

    .line 2662
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 2663
    .local v0, cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mSavedScrollX:I

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->setScrollX(I)V

    .line 2664
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mSavedTranslationX:F

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setTranslationX(F)V

    .line 2665
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mSavedRotationY:F

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setRotationY(F)V

    .line 2667
    .end local v0           #cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    :cond_0
    return-void
.end method

.method public resetTransitionTransform(Lcom/cyanogenmod/trebuchet/CellLayout;)V
    .locals 1
    .parameter "layout"

    .prologue
    .line 3419
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3420
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/CellLayout;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentScaleX:F

    .line 3421
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/CellLayout;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentScaleY:F

    .line 3422
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/CellLayout;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentTranslationX:F

    .line 3423
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/CellLayout;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentTranslationY:F

    .line 3424
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/CellLayout;->getRotationY()F

    move-result v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentRotationY:F

    .line 3425
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentScaleX:F

    invoke-virtual {p1, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setScaleX(F)V

    .line 3426
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentScaleY:F

    invoke-virtual {p1, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setScaleY(F)V

    .line 3427
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentTranslationX:F

    invoke-virtual {p1, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setTranslationX(F)V

    .line 3428
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentTranslationY:F

    invoke-virtual {p1, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setTranslationY(F)V

    .line 3429
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentRotationY:F

    invoke-virtual {p1, v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->setRotationY(F)V

    .line 3431
    :cond_0
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 10
    .parameter

    .prologue
    const/high16 v9, 0x3f00

    const/high16 v4, 0x3e80

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1418
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->screenScrolled(I)V

    .line 1419
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1512
    :cond_0
    :goto_0
    return-void

    .line 1420
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1421
    :goto_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1422
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 1423
    if-eqz v0, :cond_2

    .line 1424
    invoke-virtual {p0, p1, v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v2

    .line 1425
    const/high16 v3, 0x4148

    mul-float/2addr v2, v3

    .line 1426
    invoke-virtual {v0, v8}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastTranslationX(F)V

    .line 1427
    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastRotationY(F)V

    .line 1428
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->fastInvalidate()V

    .line 1421
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1431
    :cond_3
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOverScrollX:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOverScrollX:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mMaxScrollX:I

    if-le v0, v2, :cond_b

    .line 1432
    :cond_4
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOverScrollX:I

    if-gez v0, :cond_6

    move v2, v1

    .line 1433
    :goto_2
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 1434
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1435
    if-eqz v0, :cond_0

    .line 1436
    invoke-virtual {p0, p1, v0, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v5

    .line 1437
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    if-nez v2, :cond_5

    move v1, v3

    :cond_5
    invoke-virtual {v0, v6, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setOverScrollAmount(FZ)V

    .line 1438
    const/high16 v1, -0x3e40

    mul-float v6, v1, v5

    .line 1439
    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDensity:F

    sget v7, Lcom/cyanogenmod/trebuchet/Workspace;->CAMERA_DISTANCE:F

    mul-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setCameraDistance(F)V

    .line 1440
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v7, v1

    if-nez v2, :cond_7

    const/high16 v1, 0x3f40

    :goto_3
    mul-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setPivotX(F)V

    .line 1441
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setPivotY(F)V

    .line 1442
    invoke-virtual {v0, v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->setRotationY(F)V

    .line 1443
    invoke-virtual {v0, v8}, Lcom/cyanogenmod/trebuchet/CellLayout;->setTranslationX(F)V

    .line 1444
    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->setOverscrollTransformsDirty(Z)V

    .line 1445
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->setFadeForOverScroll(F)V

    goto/16 :goto_0

    .line 1432
    :cond_6
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto :goto_2

    :cond_7
    move v1, v4

    .line 1440
    goto :goto_3

    .line 1448
    :cond_8
    if-eqz v0, :cond_0

    .line 1449
    invoke-virtual {p0, p1, v0, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v5

    .line 1450
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    if-nez v2, :cond_9

    move v1, v3

    :cond_9
    invoke-virtual {v0, v6, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setOverScrollAmount(FZ)V

    .line 1451
    const/high16 v1, -0x3eb8

    mul-float/2addr v1, v5

    .line 1452
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->overScrollBackgroundAlphaInterpolator(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1454
    iput v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOverScrollPageIndex:I

    .line 1455
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    if-nez v2, :cond_a

    const/high16 v4, 0x3f40

    :cond_a
    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setPivotX(F)V

    .line 1456
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setPivotY(F)V

    .line 1457
    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->setOverscrollTransformsDirty(Z)V

    goto/16 :goto_0

    .line 1461
    :cond_b
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_d

    move v2, v1

    .line 1462
    :goto_4
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_d

    .line 1463
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOverScrollPageIndex:I

    if-eq v0, v2, :cond_c

    .line 1464
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 1465
    if-eqz v0, :cond_c

    .line 1466
    invoke-virtual {p0, p1, v0, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 1467
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/trebuchet/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/cyanogenmod/trebuchet/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1462
    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 1473
    :cond_d
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOverscrollFade:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_e

    .line 1474
    invoke-virtual {p0, v8}, Lcom/cyanogenmod/trebuchet/Workspace;->setFadeForOverScroll(F)V

    .line 1478
    :cond_e
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1479
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->resetOverscrollTransforms()V

    .line 1480
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->resetOverscrollTransforms()V

    .line 1482
    :cond_f
    sget-object v0, Lcom/cyanogenmod/trebuchet/Workspace$14;->$SwitchMap$com$cyanogenmod$trebuchet$Workspace$TransitionEffect:[I

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTransitionEffect:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1484
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->screenScrolledStandard(I)V

    goto/16 :goto_0

    .line 1487
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->screenScrolledTablet(I)V

    goto/16 :goto_0

    .line 1490
    :pswitch_2
    invoke-direct {p0, p1, v3}, Lcom/cyanogenmod/trebuchet/Workspace;->screenScrolledZoom(IZ)V

    goto/16 :goto_0

    .line 1493
    :pswitch_3
    invoke-direct {p0, p1, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->screenScrolledZoom(IZ)V

    goto/16 :goto_0

    .line 1496
    :pswitch_4
    invoke-direct {p0, p1, v3}, Lcom/cyanogenmod/trebuchet/Workspace;->screenScrolledRotate(IZ)V

    goto/16 :goto_0

    .line 1499
    :pswitch_5
    invoke-direct {p0, p1, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->screenScrolledRotate(IZ)V

    goto/16 :goto_0

    .line 1502
    :pswitch_6
    invoke-direct {p0, p1, v3}, Lcom/cyanogenmod/trebuchet/Workspace;->screenScrolledCube(IZ)V

    goto/16 :goto_0

    .line 1505
    :pswitch_7
    invoke-direct {p0, p1, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->screenScrolledCube(IZ)V

    goto/16 :goto_0

    .line 1508
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->screenScrolledStack(I)V

    goto/16 :goto_0

    .line 1482
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

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 3531
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSmall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 3532
    invoke-super {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->scrollLeft()V

    .line 3534
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getOpenFolder()Lcom/cyanogenmod/trebuchet/Folder;

    move-result-object v0

    .line 3535
    .local v0, openFolder:Lcom/cyanogenmod/trebuchet/Folder;
    if-eqz v0, :cond_1

    .line 3536
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Folder;->completeDragExit()V

    .line 3538
    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 3542
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSmall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 3543
    invoke-super {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->scrollRight()V

    .line 3545
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getOpenFolder()Lcom/cyanogenmod/trebuchet/Folder;

    move-result-object v0

    .line 3546
    .local v0, openFolder:Lcom/cyanogenmod/trebuchet/Folder;
    if-eqz v0, :cond_1

    .line 3547
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Folder;->completeDragExit()V

    .line 3549
    :cond_1
    return-void
.end method

.method public scrollTo(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1578
    invoke-super {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/PagedView;->scrollTo(II)V

    .line 1579
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->syncChildrenLayersEnabledOnVisiblePages()V

    .line 1580
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1210
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1211
    iput p1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mBackgroundAlpha:F

    .line 1212
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->invalidate()V

    .line 1214
    :cond_0
    return-void
.end method

.method public setChildrenOutlineAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 1163
    iput p1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineAlpha:F

    .line 1164
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1165
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 1166
    .local v0, cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setBackgroundAlpha(F)V

    .line 1164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1168
    .end local v0           #cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    :cond_0
    return-void
.end method

.method setFadeForOverScroll(F)V
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    const/high16 v1, 0x3f00

    .line 3865
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3879
    :cond_0
    :goto_0
    return-void

    .line 3867
    :cond_1
    iput p1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mOverscrollFade:F

    .line 3868
    sub-float v0, v5, p1

    mul-float/2addr v0, v1

    add-float v2, v1, v0

    .line 3869
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3871
    const v1, 0x7f0e0020

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    check-cast v1, Landroid/widget/ImageView;

    .line 3872
    const v3, 0x7f0e0021

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    .line 3873
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getScrollingIndicator()Landroid/widget/ImageView;

    move-result-object v3

    .line 3875
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->cancelScrollingIndicatorAnimations()V

    .line 3876
    if-eqz v1, :cond_2

    iget-boolean v4, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mShowSearchBar:Z

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3877
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mShowDockDivider:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3878
    :cond_3
    if-eqz v3, :cond_0

    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mShowScrollingIndicator:Z

    if-eqz v0, :cond_0

    sub-float v0, v5, p1

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setFinalScrollForPageChange(I)V
    .locals 5
    .parameter "screen"

    .prologue
    const/4 v4, 0x0

    .line 2648
    if-ltz p1, :cond_0

    .line 2649
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getScrollX()I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mSavedScrollX:I

    .line 2650
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 2651
    .local v0, cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getTranslationX()F

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mSavedTranslationX:F

    .line 2652
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getRotationY()F

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mSavedRotationY:F

    .line 2653
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildOffset(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->getRelativeChildOffset(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 2654
    .local v1, newX:I
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->setScrollX(I)V

    .line 2655
    invoke-virtual {v0, v4}, Lcom/cyanogenmod/trebuchet/CellLayout;->setTranslationX(F)V

    .line 2656
    invoke-virtual {v0, v4}, Lcom/cyanogenmod/trebuchet/CellLayout;->setRotationY(F)V

    .line 2658
    .end local v0           #cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    .end local v1           #newX:I
    :cond_0
    return-void
.end method

.method public setFinalTransitionTransform(Lcom/cyanogenmod/trebuchet/CellLayout;)V
    .locals 2
    .parameter "layout"

    .prologue
    .line 3404
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSwitchingState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3405
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3406
    .local v0, index:I
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/CellLayout;->getScaleX()F

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentScaleX:F

    .line 3407
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/CellLayout;->getScaleY()F

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentScaleY:F

    .line 3408
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/CellLayout;->getTranslationX()F

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentTranslationX:F

    .line 3409
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/CellLayout;->getTranslationY()F

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentTranslationY:F

    .line 3410
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/CellLayout;->getRotationY()F

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentRotationY:F

    .line 3411
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewScaleXs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setScaleX(F)V

    .line 3412
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewScaleYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setScaleY(F)V

    .line 3413
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewTranslationXs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setTranslationX(F)V

    .line 3414
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewTranslationYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setTranslationY(F)V

    .line 3415
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mNewRotationYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setRotationY(F)V

    .line 3417
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method public setHorizontalWallpaperOffset(F)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperOffset:Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    .line 911
    return-void
.end method

.method public setVerticalWallpaperOffset(F)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperOffset:Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/Workspace$WallpaperOffsetInterpolator;->setFinalY(F)V

    .line 905
    return-void
.end method

.method protected setWallpaperDimension()V
    .locals 3

    .prologue
    .line 882
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 883
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 884
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 885
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 889
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 890
    int-to-float v2, v1

    invoke-direct {p0, v1, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperWidth:I

    .line 891
    iput v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperHeight:I

    .line 896
    :goto_0
    new-instance v0, Lcom/cyanogenmod/trebuchet/Workspace$2;

    const-string v1, "setWallpaperDimension"

    invoke-direct {v0, p0, v1}, Lcom/cyanogenmod/trebuchet/Workspace$2;-><init>(Lcom/cyanogenmod/trebuchet/Workspace;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Workspace$2;->start()V

    .line 901
    return-void

    .line 893
    :cond_0
    int-to-float v0, v0

    const/high16 v2, 0x4000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperWidth:I

    .line 894
    iput v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mWallpaperHeight:I

    goto :goto_0
.end method

.method setup(Lcom/cyanogenmod/trebuchet/DragController;)V
    .locals 2
    .parameter "dragController"

    .prologue
    .line 3474
    new-instance v0, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-direct {v0, v1}, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mSpringLoadedDragController:Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;

    .line 3475
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    .line 3479
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->updateChildrenLayersEnabled()V

    .line 3480
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->setWallpaperDimension()V

    .line 3481
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollWallpaper:Z

    if-nez v0, :cond_0

    .line 3482
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->centerWallpaperOffset()V

    .line 3484
    :cond_0
    return-void
.end method

.method showOutlines()V
    .locals 4

    .prologue
    .line 1136
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_2

    .line 1137
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1139
    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 1140
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1141
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1143
    :cond_2
    return-void
.end method

.method public showOutlinesTemporarily()V
    .locals 1

    .prologue
    .line 1157
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1158
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->snapToPage(I)V

    .line 1160
    :cond_0
    return-void
.end method

.method protected snapToPage(I)V
    .locals 1
    .parameter "whichPage"

    .prologue
    .line 994
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(I)V

    .line 995
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollWallpaper:Z

    if-eqz v0, :cond_0

    .line 996
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->computeWallpaperScrollRatio(I)V

    .line 998
    :cond_0
    return-void
.end method

.method startDrag(Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;)V
    .locals 4
    .parameter "cellInfo"

    .prologue
    .line 2260
    iget-object v2, p1, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2263
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2281
    :goto_0
    return-void

    .line 2267
    :cond_0
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    .line 2268
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2270
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2271
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2273
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 2276
    .local v1, canvas:Landroid/graphics/Canvas;
    sget v0, Lcom/cyanogenmod/trebuchet/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 2279
    .local v0, bitmapPadding:I
    invoke-direct {p0, v2, v1, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2280
    invoke-virtual {p0, v2, p0}, Lcom/cyanogenmod/trebuchet/Workspace;->beginDragShared(Landroid/view/View;Lcom/cyanogenmod/trebuchet/DragSource;)V

    goto :goto_0
.end method

.method public syncPageItems(IZ)V
    .locals 0
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 3851
    return-void
.end method

.method public syncPages()V
    .locals 0

    .prologue
    .line 3847
    return-void
.end method

.method public transitionStateShouldAllowDrop()Z
    .locals 2

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f00

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateCurrentPageScroll()V
    .locals 1

    .prologue
    .line 986
    invoke-super {p0}, Lcom/cyanogenmod/trebuchet/PagedView;->updateCurrentPageScroll()V

    .line 987
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mScrollWallpaper:Z

    if-eqz v0, :cond_0

    .line 988
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->computeWallpaperScrollRatio(I)V

    .line 990
    :cond_0
    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .locals 12
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
    const/4 v11, 0x0

    .line 3804
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 3805
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    .line 3806
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildCount()I

    move-result v6

    .line 3807
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_0

    .line 3808
    invoke-virtual {v0, v4}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3809
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 3810
    instance-of v2, v1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    if-eqz v2, :cond_2

    .line 3811
    check-cast v1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 3815
    iget-object v2, v1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3816
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 3817
    iget v8, v1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->itemType:I

    if-nez v8, :cond_2

    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v7, :cond_2

    .line 3819
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 3820
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    .line 3821
    iget-object v2, v2, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3822
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    iget-object v9, v1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v9}, Lcom/cyanogenmod/trebuchet/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    move-object v2, v3

    .line 3823
    check-cast v2, Landroid/widget/TextView;

    new-instance v9, Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;

    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    invoke-virtual {v1, v10}, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->getIcon(Lcom/cyanogenmod/trebuchet/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/cyanogenmod/trebuchet/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v11, v9, v11, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 3807
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 3832
    :cond_3
    return-void
.end method

.method willAddToExistingUserFolder(Ljava/lang/Object;Lcom/cyanogenmod/trebuchet/CellLayout;[I)Z
    .locals 6
    .parameter "dragInfo"
    .parameter "target"
    .parameter "targetCell"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2432
    aget v4, p3, v3

    aget v5, p3, v2

    invoke-virtual {p2, v4, v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2433
    .local v0, dropOverView:Landroid/view/View;
    instance-of v4, v0, Lcom/cyanogenmod/trebuchet/FolderIcon;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 2434
    check-cast v1, Lcom/cyanogenmod/trebuchet/FolderIcon;

    .line 2435
    .local v1, fi:Lcom/cyanogenmod/trebuchet/FolderIcon;
    invoke-virtual {v1, p1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2439
    .end local v1           #fi:Lcom/cyanogenmod/trebuchet/FolderIcon;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method willCreateUserFolder(Lcom/cyanogenmod/trebuchet/ItemInfo;Lcom/cyanogenmod/trebuchet/CellLayout;[IZ)Z
    .locals 9
    .parameter "info"
    .parameter "target"
    .parameter "targetCell"
    .parameter "considerTimeout"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2410
    aget v7, p3, v6

    aget v8, p3, v5

    invoke-virtual {p2, v7, v8}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 2412
    .local v2, dropOverView:Landroid/view/View;
    const/4 v3, 0x0

    .line 2413
    .local v3, hasntMoved:Z
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    if-eqz v7, :cond_0

    .line 2414
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget-object v7, v7, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/cyanogenmod/trebuchet/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v1

    .line 2415
    .local v1, cellParent:Lcom/cyanogenmod/trebuchet/CellLayout;
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v7, v7, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cellX:I

    aget v8, p3, v6

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mDragInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    iget v7, v7, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cellY:I

    aget v8, p3, v5

    if-ne v7, v8, :cond_3

    if-ne v1, p2, :cond_3

    move v3, v5

    .line 2419
    .end local v1           #cellParent:Lcom/cyanogenmod/trebuchet/CellLayout;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    if-eqz p4, :cond_4

    iget-boolean v7, p0, Lcom/cyanogenmod/trebuchet/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v7, :cond_4

    :cond_1
    move v5, v6

    .line 2428
    :cond_2
    :goto_1
    return v5

    .restart local v1       #cellParent:Lcom/cyanogenmod/trebuchet/CellLayout;
    :cond_3
    move v3, v6

    .line 2415
    goto :goto_0

    .line 2423
    .end local v1           #cellParent:Lcom/cyanogenmod/trebuchet/CellLayout;
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v0, v7, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 2424
    .local v0, aboveShortcut:Z
    iget v7, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->itemType:I

    if-eqz v7, :cond_5

    iget v7, p1, Lcom/cyanogenmod/trebuchet/ItemInfo;->itemType:I

    if-ne v7, v5, :cond_7

    :cond_5
    move v4, v5

    .line 2428
    .local v4, willBecomeShortcut:Z
    :goto_2
    if-eqz v0, :cond_6

    if-nez v4, :cond_2

    :cond_6
    move v5, v6

    goto :goto_1

    .end local v4           #willBecomeShortcut:Z
    :cond_7
    move v4, v6

    .line 2424
    goto :goto_2
.end method
