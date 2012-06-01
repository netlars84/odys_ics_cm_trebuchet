.class public final Lcom/cyanogenmod/trebuchet/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/Launcher$23;,
        Lcom/cyanogenmod/trebuchet/Launcher$AppWidgetResetObserver;,
        Lcom/cyanogenmod/trebuchet/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;,
        Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;,
        Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;,
        Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;,
        Lcom/cyanogenmod/trebuchet/Launcher$State;
    }
.end annotation


# static fields
.field private static sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

.field static final sDumpLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/cyanogenmod/trebuchet/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

.field private static sLocaleConfiguration:Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;

.field private static final sLock:Ljava/lang/Object;

.field private static sPendingAddList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;",
            ">;"
        }
    .end annotation
.end field

.field private static sScreen:I

.field private static sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field private final ADVANCE_MSG:I

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field private mAllAppsButton:Landroid/view/View;

.field private mAppMarketIntent:Landroid/content/Intent;

.field private mAppWidgetHost:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

.field private mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

.field private mAttached:Z

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mAutoRotate:Z

.field private mBuildLayersRunnable:Ljava/lang/Runnable;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDividerAnimator:Landroid/animation/AnimatorSet;

.field private mDockDivider:Landroid/view/View;

.field private mDragController:Lcom/cyanogenmod/trebuchet/DragController;

.field private mDragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;

.field private mFolderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mHideIconLabels:Z

.field private mHotseat:Lcom/cyanogenmod/trebuchet/Hotseat;

.field private mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mModel:Lcom/cyanogenmod/trebuchet/LauncherModel;

.field private mOnResumeNeedsLoad:Z

.field private mPaused:Z

.field private mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

.field private mQsbDivider:Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRestoreScreenOrientationDelay:I

.field private mRestoring:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mSearchDropTargetBar:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

.field private mShowDockDivider:Z

.field private mShowSearchBar:Z

.field private mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

.field private mStateAnimation:Landroid/animation/AnimatorSet;

.field private mTmpAddItemCellCoordinates:[I

.field private mUserPresent:Z

.field private mVisible:Z

.field private mWaitingForResult:Z

.field private mWaitingForResume:Lcom/cyanogenmod/trebuchet/BubbleTextView;

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

.field private mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Launcher;->sLock:Ljava/lang/Object;

    .line 182
    sput v1, Lcom/cyanogenmod/trebuchet/Launcher;->sScreen:I

    .line 231
    const/4 v0, 0x0

    sput-object v0, Lcom/cyanogenmod/trebuchet/Launcher;->sLocaleConfiguration:Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Launcher;->sFolders:Ljava/util/HashMap;

    .line 251
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/cyanogenmod/trebuchet/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 252
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/cyanogenmod/trebuchet/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 253
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/cyanogenmod/trebuchet/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 115
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 171
    sget-object v0, Lcom/cyanogenmod/trebuchet/Launcher$State;->WORKSPACE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    .line 184
    new-instance v0, Lcom/cyanogenmod/trebuchet/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v3}, Lcom/cyanogenmod/trebuchet/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/Launcher$1;)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance v0, Lcom/cyanogenmod/trebuchet/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/trebuchet/Launcher$AppWidgetResetObserver;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 199
    new-instance v0, Lcom/cyanogenmod/trebuchet/ItemInfo;

    invoke-direct {v0}, Lcom/cyanogenmod/trebuchet/ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 200
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 210
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAutoAdvanceRunning:Z

    .line 214
    iput-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 216
    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspaceLoading:Z

    .line 218
    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPaused:Z

    .line 227
    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mUserPresent:Z

    .line 228
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mVisible:Z

    .line 229
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAttached:Z

    .line 235
    iput-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 238
    iput v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->ADVANCE_MSG:I

    .line 239
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAdvanceInterval:I

    .line 240
    const/16 v0, 0xfa

    iput v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAdvanceStagger:I

    .line 242
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAutoAdvanceTimeLeft:J

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 248
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mRestoreScreenOrientationDelay:I

    .line 266
    new-instance v0, Lcom/cyanogenmod/trebuchet/Launcher$1;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/trebuchet/Launcher$1;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 1078
    new-instance v0, Lcom/cyanogenmod/trebuchet/Launcher$7;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/trebuchet/Launcher$7;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1157
    new-instance v0, Lcom/cyanogenmod/trebuchet/Launcher$8;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/trebuchet/Launcher$8;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHandler:Landroid/os/Handler;

    .line 3045
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 664
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 666
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/cyanogenmod/trebuchet/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mUserPresent:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/DragLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/cyanogenmod/trebuchet/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->updateRunning()V

    return-void
.end method

.method static synthetic access$1300(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/ItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/cyanogenmod/trebuchet/Launcher;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/cyanogenmod/trebuchet/Launcher;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/Launcher;->sendAdvanceMessage(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/AppsCustomizeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/cyanogenmod/trebuchet/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWaitingForResult:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/FolderInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mFolderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/FolderInfo;)Lcom/cyanogenmod/trebuchet/FolderInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mFolderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    return-object p1
.end method

.method static synthetic access$2500()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/cyanogenmod/trebuchet/Launcher;->sFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/cyanogenmod/trebuchet/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/cyanogenmod/trebuchet/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspaceLoading:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/LauncherModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mModel:Lcom/cyanogenmod/trebuchet/LauncherModel;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSearchDropTargetBar:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/cyanogenmod/trebuchet/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->startWallpaper()V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-static {p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->readConfiguration(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/cyanogenmod/trebuchet/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$3100(Lcom/cyanogenmod/trebuchet/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->syncOrientation()V

    return-void
.end method

.method static synthetic access$402(Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;)Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    sput-object p0, Lcom/cyanogenmod/trebuchet/Launcher;->sLocaleConfiguration:Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;

    return-object p0
.end method

.method static synthetic access$500(Lcom/cyanogenmod/trebuchet/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->checkForLocaleChange()V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-static {p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$800(Lcom/cyanogenmod/trebuchet/Launcher;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppWidgetHost:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;

    return-object v0
.end method

.method private checkForLocaleChange()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 383
    sget-object v9, Lcom/cyanogenmod/trebuchet/Launcher;->sLocaleConfiguration:Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;

    if-nez v9, :cond_1

    .line 384
    new-instance v9, Lcom/cyanogenmod/trebuchet/Launcher$2;

    invoke-direct {v9, p0}, Lcom/cyanogenmod/trebuchet/Launcher$2;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;)V

    new-array v10, v2, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/cyanogenmod/trebuchet/Launcher$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 403
    .local v0, configuration:Landroid/content/res/Configuration;
    sget-object v9, Lcom/cyanogenmod/trebuchet/Launcher;->sLocaleConfiguration:Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;

    iget-object v6, v9, Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 404
    .local v6, previousLocale:Ljava/lang/String;
    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, locale:Ljava/lang/String;
    sget-object v9, Lcom/cyanogenmod/trebuchet/Launcher;->sLocaleConfiguration:Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;

    iget v7, v9, Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;->mcc:I

    .line 407
    .local v7, previousMcc:I
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    .line 409
    .local v4, mcc:I
    sget-object v9, Lcom/cyanogenmod/trebuchet/Launcher;->sLocaleConfiguration:Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;

    iget v8, v9, Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;->mnc:I

    .line 410
    .local v8, previousMnc:I
    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    .line 412
    .local v5, mnc:I
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-ne v4, v7, :cond_2

    if-eq v5, v8, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 414
    .local v2, localeChanged:Z
    :cond_3
    if-eqz v2, :cond_0

    .line 415
    sget-object v9, Lcom/cyanogenmod/trebuchet/Launcher;->sLocaleConfiguration:Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;

    iput-object v1, v9, Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 416
    sget-object v9, Lcom/cyanogenmod/trebuchet/Launcher;->sLocaleConfiguration:Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;

    iput v4, v9, Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;->mcc:I

    .line 417
    sget-object v9, Lcom/cyanogenmod/trebuchet/Launcher;->sLocaleConfiguration:Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;

    iput v5, v9, Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;->mnc:I

    .line 419
    iget-object v9, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    invoke-virtual {v9}, Lcom/cyanogenmod/trebuchet/IconCache;->flush()V

    .line 421
    sget-object v3, Lcom/cyanogenmod/trebuchet/Launcher;->sLocaleConfiguration:Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;

    .line 422
    .local v3, localeConfiguration:Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;
    new-instance v9, Lcom/cyanogenmod/trebuchet/Launcher$3;

    const-string v10, "WriteLocaleConfiguration"

    invoke-direct {v9, p0, v10, v3}, Lcom/cyanogenmod/trebuchet/Launcher$3;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Ljava/lang/String;Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;)V

    invoke-virtual {v9}, Lcom/cyanogenmod/trebuchet/Launcher$3;->start()V

    goto :goto_0
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 702
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 703
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 704
    return-void
.end method

.method private completeAdd(Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;)Z
    .locals 9
    .parameter "args"

    .prologue
    .line 504
    const/4 v8, 0x0

    .line 505
    .local v8, result:Z
    iget v0, p1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->requestCode:I

    packed-switch v0, :pswitch_data_0

    .line 532
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->resetAddInfo()V

    .line 533
    return v8

    .line 507
    :pswitch_1
    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->container:J

    iget v4, p1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->cellX:I

    iget v6, p1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/Launcher;->completeAddApplication(Landroid/content/Intent;JIII)V

    goto :goto_0

    .line 511
    :pswitch_2
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->processShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 514
    :pswitch_3
    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->container:J

    iget v4, p1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->cellX:I

    iget v6, p1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/Launcher;->completeAddShortcut(Landroid/content/Intent;JIII)V

    .line 516
    const/4 v8, 0x1

    .line 517
    goto :goto_0

    .line 519
    :pswitch_4
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->addAppWidgetFromPick(Landroid/content/Intent;)V

    goto :goto_0

    .line 522
    :pswitch_5
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 523
    .local v7, appWidgetId:I
    iget-wide v0, p1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->container:J

    iget v2, p1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->screen:I

    invoke-direct {p0, v7, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->completeAddAppWidget(IJI)V

    .line 524
    const/4 v8, 0x1

    .line 525
    goto :goto_0

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private completeAddAppWidget(IJI)V
    .locals 23
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1016
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v22

    .line 1019
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/cyanogenmod/trebuchet/Launcher;->getCellLayout(JI)Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v4

    .line 1021
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/cyanogenmod/trebuchet/Launcher;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v10

    .line 1026
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cyanogenmod/trebuchet/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1027
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget-object v6, v5, Lcom/cyanogenmod/trebuchet/ItemInfo;->dropPos:[I

    .line 1029
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget v5, v5, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    if-ltz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget v5, v5, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    if-ltz v5, :cond_2

    .line 1030
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget v5, v5, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    aput v5, v9, v4

    .line 1031
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget v5, v5, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    aput v5, v9, v4

    .line 1032
    const/4 v4, 0x1

    .line 1042
    :goto_0
    if-nez v4, :cond_5

    .line 1043
    const/4 v4, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    .line 1046
    new-instance v4, Lcom/cyanogenmod/trebuchet/Launcher$6;

    const-string v5, "deleteAppWidgetId"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v4, v0, v5, v1}, Lcom/cyanogenmod/trebuchet/Launcher$6;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Ljava/lang/String;I)V

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/Launcher$6;->start()V

    .line 1052
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/Launcher;->showOutOfSpaceMessage()V

    .line 1076
    :cond_1
    :goto_1
    return-void

    .line 1033
    :cond_2
    if-eqz v6, :cond_4

    .line 1035
    const/4 v5, 0x0

    aget v5, v6, v5

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x0

    aget v7, v10, v7

    const/4 v8, 0x1

    aget v8, v10, v8

    invoke-virtual/range {v4 .. v9}, Lcom/cyanogenmod/trebuchet/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v4

    .line 1037
    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 1039
    :cond_4
    const/4 v5, 0x0

    aget v5, v10, v5

    const/4 v6, 0x1

    aget v6, v10, v6

    invoke-virtual {v4, v9, v5, v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->findCellForSpan([III)Z

    move-result v4

    goto :goto_0

    .line 1057
    :cond_5
    new-instance v11, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;

    move/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;-><init>(I)V

    .line 1058
    const/4 v4, 0x0

    aget v4, v10, v4

    iput v4, v11, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->spanX:I

    .line 1059
    const/4 v4, 0x1

    aget v4, v10, v4

    iput v4, v11, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->spanY:I

    .line 1061
    const/4 v4, 0x0

    aget v15, v9, v4

    const/4 v4, 0x1

    aget v16, v9, v4

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-wide/from16 v12, p2

    move/from16 v14, p4

    invoke-static/range {v10 .. v17}, Lcom/cyanogenmod/trebuchet/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;JIIIZ)V

    .line 1064
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/cyanogenmod/trebuchet/Launcher;->mRestoring:Z

    if-nez v4, :cond_1

    .line 1066
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppWidgetHost:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    iput-object v4, v11, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1068
    iget-object v4, v11, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1069
    iget-object v4, v11, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v11}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    iget-object v13, v11, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v4, 0x0

    aget v17, v9, v4

    const/4 v4, 0x1

    aget v18, v9, v4

    iget v0, v11, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->spanX:I

    move/from16 v19, v0

    iget v0, v11, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->spanY:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/Launcher;->isWorkspaceLocked()Z

    move-result v21

    move-wide/from16 v14, p2

    move/from16 v16, p4

    invoke-virtual/range {v12 .. v21}, Lcom/cyanogenmod/trebuchet/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 1074
    iget-object v4, v11, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto/16 :goto_1
.end method

.method private completeAddShortcut(Landroid/content/Intent;JIII)V
    .locals 25
    .parameter "data"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 917
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cyanogenmod/trebuchet/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 918
    .local v9, cellXY:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget-object v0, v4, Lcom/cyanogenmod/trebuchet/ItemInfo;->dropPos:[I

    move-object/from16 v24, v0

    .line 919
    .local v24, touchXY:[I
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/cyanogenmod/trebuchet/Launcher;->getCellLayout(JI)Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v8

    .line 921
    .local v8, layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    const/16 v21, 0x0

    .line 923
    .local v21, foundCellSpan:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Launcher;->mModel:Lcom/cyanogenmod/trebuchet/LauncherModel;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v6}, Lcom/cyanogenmod/trebuchet/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    move-result-object v22

    .line 924
    .local v22, info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    if-nez v22, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->createShortcut(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)Landroid/view/View;

    move-result-object v5

    .line 930
    .local v5, view:Landroid/view/View;
    if-ltz p5, :cond_2

    if-ltz p6, :cond_2

    .line 931
    const/4 v4, 0x0

    aput p5, v9, v4

    .line 932
    const/4 v4, 0x1

    aput p6, v9, v4

    .line 933
    const/16 v21, 0x1

    .line 936
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v6, p2

    invoke-virtual/range {v4 .. v12}, Lcom/cyanogenmod/trebuchet/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/cyanogenmod/trebuchet/CellLayout;[IZLcom/cyanogenmod/trebuchet/DragView;Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 940
    new-instance v10, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;

    invoke-direct {v10}, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;-><init>()V

    .line 941
    .local v10, dragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;
    move-object/from16 v0, v22

    iput-object v0, v10, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 942
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    const/4 v11, 0x1

    move-object v7, v5

    invoke-virtual/range {v6 .. v11}, Lcom/cyanogenmod/trebuchet/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/cyanogenmod/trebuchet/CellLayout;[ILcom/cyanogenmod/trebuchet/DropTarget$DragObject;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 953
    .end local v10           #dragObject:Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;
    :goto_1
    if-nez v21, :cond_5

    .line 954
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/Launcher;->showOutOfSpaceMessage()V

    goto :goto_0

    .line 945
    :cond_2
    if-eqz v24, :cond_4

    .line 947
    const/4 v4, 0x0

    aget v12, v24, v4

    const/4 v4, 0x1

    aget v13, v24, v4

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v11, v8

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Lcom/cyanogenmod/trebuchet/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v23

    .line 948
    .local v23, result:[I
    if-eqz v23, :cond_3

    const/16 v21, 0x1

    .line 949
    :goto_2
    goto :goto_1

    .line 948
    :cond_3
    const/16 v21, 0x0

    goto :goto_2

    .line 950
    .end local v23           #result:[I
    :cond_4
    const/4 v4, 0x1

    const/4 v6, 0x1

    invoke-virtual {v8, v9, v4, v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->findCellForSpan([III)Z

    move-result v21

    goto :goto_1

    .line 958
    :cond_5
    const/4 v4, 0x0

    aget v16, v9, v4

    const/4 v4, 0x1

    aget v17, v9, v4

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, v22

    move-wide/from16 v13, p2

    move/from16 v15, p4

    invoke-static/range {v11 .. v18}, Lcom/cyanogenmod/trebuchet/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;JIIIZ)V

    .line 960
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/cyanogenmod/trebuchet/Launcher;->mRestoring:Z

    if-nez v4, :cond_0

    .line 961
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    const/4 v4, 0x0

    aget v16, v9, v4

    const/4 v4, 0x1

    aget v17, v9, v4

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/Launcher;->isWorkspaceLocked()Z

    move-result v20

    move-object v12, v5

    move-wide/from16 v13, p2

    move/from16 v15, p4

    invoke-virtual/range {v11 .. v20}, Lcom/cyanogenmod/trebuchet/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto/16 :goto_0
.end method

.method private dismissCling(Lcom/cyanogenmod/trebuchet/Cling;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3406
    if-eqz p1, :cond_0

    .line 3407
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/Cling;->dismiss()V

    .line 3408
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3409
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3410
    new-instance v1, Lcom/cyanogenmod/trebuchet/Launcher$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/cyanogenmod/trebuchet/Launcher$21;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/Cling;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3421
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3423
    :cond_0
    return-void
.end method

.method private getCurrentOrientationIndexForGlobalIcons()I
    .locals 1

    .prologue
    .line 2744
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getCurrentOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2748
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2746
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2744
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter

    .prologue
    .line 2754
    :try_start_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2756
    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 2758
    if-eqz v1, :cond_0

    .line 2759
    const-string v2, "com.android.launcher.toolbar_icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2760
    if-eqz v1, :cond_0

    .line 2761
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2762
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2774
    :goto_0
    return-object v0

    .line 2765
    :catch_0
    move-exception v0

    .line 2767
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load toolbar icon; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2774
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2769
    :catch_1
    move-exception v0

    .line 2771
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load toolbar icon from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static getScreen()I
    .locals 2

    .prologue
    .line 488
    sget-object v1, Lcom/cyanogenmod/trebuchet/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    :try_start_0
    sget v0, Lcom/cyanogenmod/trebuchet/Launcher;->sScreen:I

    monitor-exit v1

    return v0

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private growAndFadeOutFolderIcon(Lcom/cyanogenmod/trebuchet/FolderIcon;)V
    .locals 9
    .parameter

    .prologue
    const/high16 v4, 0x3fc0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1982
    if-nez p1, :cond_0

    .line 1997
    :goto_0
    return-void

    .line 1983
    :cond_0
    const-string v0, "alpha"

    new-array v1, v8, [F

    const/4 v2, 0x0

    aput v2, v1, v7

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1984
    const-string v0, "scaleX"

    new-array v1, v8, [F

    aput v4, v1, v7

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1985
    const-string v0, "scaleY"

    new-array v1, v8, [F

    aput v4, v1, v7

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 1987
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/FolderInfo;

    .line 1988
    iget-wide v0, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->container:J

    const-wide/16 v5, -0x65

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    .line 1989
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 1990
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 1991
    iget v5, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    iget v1, v1, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v5, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFolderLeaveBehindCell(II)V

    .line 1994
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v7

    aput-object v3, v0, v8

    const/4 v1, 0x2

    aput-object v4, v0, v1

    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1995
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1996
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private handleFolderClick(Lcom/cyanogenmod/trebuchet/FolderIcon;)V
    .locals 5
    .parameter

    .prologue
    .line 1948
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/FolderIcon;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    .line 1949
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/cyanogenmod/trebuchet/Folder;

    move-result-object v1

    .line 1953
    iget-boolean v2, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->opened:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 1954
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder info marked as open, but associated folder is not open. Screen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->screen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->cellX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->cellY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->opened:Z

    .line 1959
    :cond_0
    iget-boolean v0, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->opened:Z

    if-nez v0, :cond_2

    .line 1961
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->closeFolder()V

    .line 1963
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->openFolder(Lcom/cyanogenmod/trebuchet/FolderIcon;)V

    .line 1979
    :cond_1
    :goto_0
    return-void

    .line 1967
    :cond_2
    if-eqz v1, :cond_1

    .line 1968
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageForView(Landroid/view/View;)I

    move-result v0

    .line 1970
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->closeFolder(Lcom/cyanogenmod/trebuchet/Folder;)V

    .line 1971
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1973
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->closeFolder()V

    .line 1975
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->openFolder(Lcom/cyanogenmod/trebuchet/FolderIcon;)V

    goto :goto_0
.end method

.method private hideAppsCustomizeHelper(ZZ)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 2470
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2471
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2472
    iput-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2474
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2477
    const v0, 0x7f0a000c

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2478
    const v1, 0x7f0a000d

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v4, v1

    .line 2480
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    .line 2482
    invoke-direct {p0, v2, v4}, Lcom/cyanogenmod/trebuchet/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    .line 2483
    invoke-virtual {p0, v9}, Lcom/cyanogenmod/trebuchet/Launcher;->updateWallpaperVisibility(Z)V

    .line 2484
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->showHotseat(Z)V

    .line 2485
    if-eqz p1, :cond_2

    .line 2486
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v3

    .line 2487
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v5

    .line 2489
    new-array v1, v10, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    int-to-long v7, v0

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 2490
    new-instance v0, Lcom/cyanogenmod/trebuchet/Workspace$ZoomInInterpolator;

    invoke-direct {v0}, Lcom/cyanogenmod/trebuchet/Workspace$ZoomInInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2491
    new-instance v0, Lcom/cyanogenmod/trebuchet/Launcher$15;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/Launcher$15;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/view/View;FFF)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2497
    new-array v0, v10, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2498
    const v0, 0x7f0a000f

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2499
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2500
    new-instance v0, Lcom/cyanogenmod/trebuchet/Launcher$16;

    invoke-direct {v0, p0, v2}, Lcom/cyanogenmod/trebuchet/Launcher$16;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2505
    instance-of v0, v2, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 2506
    check-cast v0, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;

    invoke-interface {v0, p0, v1, v9}, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;->onLauncherTransitionStart(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/animation/Animator;Z)Z

    .line 2509
    :cond_1
    new-instance v0, Lcom/cyanogenmod/trebuchet/Launcher$17;

    invoke-direct {v0, p0, v2, p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher$17;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/view/View;Lcom/cyanogenmod/trebuchet/Launcher;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2521
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2522
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v10, [Landroid/animation/Animator;

    aput-object v7, v2, v11

    aput-object v1, v2, v9

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2523
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2532
    :goto_0
    return-void

    .line 2525
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2526
    instance-of v0, v2, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;

    if-eqz v0, :cond_3

    move-object v0, v2

    .line 2527
    check-cast v0, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;

    invoke-interface {v0, p0, v3, v9}, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;->onLauncherTransitionStart(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/animation/Animator;Z)Z

    .line 2528
    check-cast v2, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;

    invoke-interface {v2, p0, v3, v9}, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/animation/Animator;Z)V

    .line 2530
    :cond_3
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v0, v11}, Lcom/cyanogenmod/trebuchet/Workspace;->hideScrollingIndicator(Z)V

    goto :goto_0

    .line 2489
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2497
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private initCling(I[IZI)Lcom/cyanogenmod/trebuchet/Cling;
    .locals 4
    .parameter "clingId"
    .parameter "positionData"
    .parameter "animate"
    .parameter "delay"

    .prologue
    const/high16 v3, 0x3f80

    .line 3385
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/Cling;

    .line 3386
    .local v0, cling:Lcom/cyanogenmod/trebuchet/Cling;
    if-eqz v0, :cond_0

    .line 3387
    invoke-virtual {v0, p0, p2}, Lcom/cyanogenmod/trebuchet/Cling;->init(Lcom/cyanogenmod/trebuchet/Launcher;[I)V

    .line 3388
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Cling;->setVisibility(I)V

    .line 3389
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Cling;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3390
    if-eqz p3, :cond_1

    .line 3391
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Cling;->buildLayer()V

    .line 3392
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Cling;->setAlpha(F)V

    .line 3393
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Cling;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x226

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3403
    :cond_0
    :goto_0
    return-object v0

    .line 3400
    :cond_1
    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/Cling;->setAlpha(F)V

    goto :goto_0
.end method

.method private static intToState(I)Lcom/cyanogenmod/trebuchet/Launcher$State;
    .locals 4
    .parameter "stateOrdinal"

    .prologue
    .line 711
    sget-object v1, Lcom/cyanogenmod/trebuchet/Launcher$State;->WORKSPACE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    .line 712
    .local v1, state:Lcom/cyanogenmod/trebuchet/Launcher$State;
    invoke-static {}, Lcom/cyanogenmod/trebuchet/Launcher$State;->values()[Lcom/cyanogenmod/trebuchet/Launcher$State;

    move-result-object v2

    .line 713
    .local v2, stateValues:[Lcom/cyanogenmod/trebuchet/Launcher$State;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 714
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/Launcher$State;->ordinal()I

    move-result v3

    if-ne v3, p0, :cond_1

    .line 715
    aget-object v1, v2, v0

    .line 719
    :cond_0
    return-object v1

    .line 713
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "container"
    .parameter "button"

    .prologue
    .line 2834
    instance-of v2, p1, Lcom/cyanogenmod/trebuchet/HolographicLinearLayout;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 2835
    check-cast v0, Lcom/cyanogenmod/trebuchet/HolographicLinearLayout;

    .line 2836
    .local v0, layout:Lcom/cyanogenmod/trebuchet/HolographicLinearLayout;
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/HolographicLinearLayout;->invalidatePressedFocusedStates()V

    .line 2841
    .end local v0           #layout:Lcom/cyanogenmod/trebuchet/HolographicLinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 2837
    :cond_1
    instance-of v2, p2, Lcom/cyanogenmod/trebuchet/HolographicImageView;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 2838
    check-cast v1, Lcom/cyanogenmod/trebuchet/HolographicImageView;

    .line 2839
    .local v1, view:Lcom/cyanogenmod/trebuchet/HolographicImageView;
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/HolographicImageView;->invalidatePressedFocusedStates()V

    goto :goto_0
.end method

.method private isClingsEnabled()Z
    .locals 1

    .prologue
    .line 3380
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mapConfigurationOriActivityInfoOri(I)I
    .locals 6
    .parameter "configOri"

    .prologue
    const/4 v4, 0x2

    .line 3331
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3332
    .local v0, d:Landroid/view/Display;
    const/4 v2, 0x2

    .line 3333
    .local v2, naturalOri:I
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 3347
    :goto_0
    const/4 v5, 0x4

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 3355
    .local v3, oriMap:[I
    const/4 v1, 0x0

    .line 3356
    .local v1, indexOffset:I
    if-ne v2, v4, :cond_0

    .line 3357
    const/4 v1, 0x1

    .line 3359
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    add-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x4

    aget v4, v3, v4

    return v4

    .line 3337
    .end local v1           #indexOffset:I
    .end local v3           #oriMap:[I
    :pswitch_0
    move v2, p1

    .line 3338
    goto :goto_0

    .line 3342
    :pswitch_1
    if-ne p1, v4, :cond_1

    const/4 v2, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    .line 3333
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3347
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private onAppWidgetReset()V
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppWidgetHost:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppWidgetHost:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;->startListening()V

    .line 1723
    :cond_0
    return-void
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 438
    const/4 v0, 0x0

    .line 440
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 441
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 442
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;->mcc:I

    .line 443
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 449
    if-eqz v1, :cond_2

    .line 451
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 457
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 452
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 454
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0

    .line 444
    :catch_1
    move-exception v2

    .line 449
    :goto_1
    if-eqz v0, :cond_0

    .line 451
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 452
    :catch_2
    move-exception v2

    goto :goto_0

    .line 446
    :catch_3
    move-exception v2

    .line 449
    :goto_2
    if-eqz v0, :cond_0

    .line 451
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 452
    :catch_4
    move-exception v2

    goto :goto_0

    .line 449
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v0, :cond_1

    .line 451
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 454
    :cond_1
    :goto_4
    throw v2

    .line 452
    :catch_5
    move-exception v3

    goto :goto_4

    .line 449
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 446
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 444
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_2
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1670
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/cyanogenmod/trebuchet/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1672
    return-void
.end method

.method private removeCling(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 3425
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3426
    .local v0, cling:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3427
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3428
    .local v1, parent:Landroid/view/ViewGroup;
    new-instance v2, Lcom/cyanogenmod/trebuchet/Launcher$22;

    invoke-direct {v2, p0, v1, v0}, Lcom/cyanogenmod/trebuchet/Launcher$22;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3435
    .end local v1           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private resetAddInfo()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1486
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    .line 1487
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iput v3, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    .line 1488
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iput v3, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    iput v3, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    .line 1489
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iput v3, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanY:I

    iput v3, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->spanX:I

    .line 1490
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->dropPos:[I

    .line 1491
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedState"

    .prologue
    .line 728
    if-nez p1, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    const-string v10, "launcher.state"

    sget-object v11, Lcom/cyanogenmod/trebuchet/Launcher$State;->WORKSPACE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    invoke-virtual {v11}, Lcom/cyanogenmod/trebuchet/Launcher$State;->ordinal()I

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/cyanogenmod/trebuchet/Launcher;->intToState(I)Lcom/cyanogenmod/trebuchet/Launcher$State;

    move-result-object v9

    .line 733
    .local v9, state:Lcom/cyanogenmod/trebuchet/Launcher$State;
    sget-object v10, Lcom/cyanogenmod/trebuchet/Launcher$State;->APPS_CUSTOMIZE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    if-ne v9, v10, :cond_2

    .line 734
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/cyanogenmod/trebuchet/Launcher;->showAllApps(Z)V

    .line 737
    :cond_2
    const-string v10, "launcher.current_screen"

    const/4 v11, -0x1

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 738
    .local v2, currentScreen:I
    const/4 v10, -0x1

    if-le v2, v10, :cond_3

    .line 739
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v10, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->setCurrentPage(I)V

    .line 742
    :cond_3
    const-string v10, "launcher.add_container"

    const-wide/16 v11, -0x1

    invoke-virtual {p1, v10, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 743
    .local v5, pendingAddContainer:J
    const-string v10, "launcher.add_screen"

    const/4 v11, -0x1

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 745
    .local v7, pendingAddScreen:I
    const-wide/16 v10, -0x1

    cmp-long v10, v5, v10

    if-eqz v10, :cond_4

    const/4 v10, -0x1

    if-le v7, v10, :cond_4

    .line 746
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iput-wide v5, v10, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    .line 747
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iput v7, v10, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    .line 748
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    const-string v11, "launcher.add_cell_x"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    .line 749
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    const-string v11, "launcher.add_cell_y"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    .line 750
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mRestoring:Z

    .line 753
    :cond_4
    const-string v10, "launcher.rename_folder"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 754
    .local v8, renameFolder:Z
    if-eqz v8, :cond_5

    .line 755
    const-string v10, "launcher.rename_folder_id"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 756
    .local v3, id:J
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mModel:Lcom/cyanogenmod/trebuchet/LauncherModel;

    sget-object v11, Lcom/cyanogenmod/trebuchet/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v10, p0, v11, v3, v4}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/cyanogenmod/trebuchet/FolderInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mFolderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    .line 757
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mRestoring:Z

    .line 762
    .end local v3           #id:J
    :cond_5
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    if-eqz v10, :cond_0

    .line 763
    const-string v10, "apps_customize_currentTab"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, curTab:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 766
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    iget-object v11, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    invoke-virtual {v11, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->getContentTypeForTabTag(Ljava/lang/String;)Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->setContentType(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)V

    .line 768
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    invoke-virtual {v10, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 771
    :cond_6
    const-string v10, "apps_customize_currentIndex"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 772
    .local v1, currentIndex:I
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v10, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->restore(I)V

    goto/16 :goto_0
.end method

.method private sendAdvanceMessage(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 1133
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1134
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1135
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAutoAdvanceSentTime:J

    .line 1137
    return-void
.end method

.method private setPivotsForZoom(Landroid/view/View;F)V
    .locals 2
    .parameter "view"
    .parameter "scaleFactor"

    .prologue
    const/high16 v1, 0x4000

    .line 2281
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 2282
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 2283
    return-void
.end method

.method static setScreen(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 494
    sget-object v1, Lcom/cyanogenmod/trebuchet/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 495
    :try_start_0
    sput p0, Lcom/cyanogenmod/trebuchet/Launcher;->sScreen:I

    .line 496
    monitor-exit v1

    .line 497
    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setupViews()V
    .locals 6

    .prologue
    const v5, 0x7f0e0021

    const v3, 0x7f0e0020

    const/16 v4, 0x8

    .line 780
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    .line 782
    const v0, 0x7f0e001e

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/DragLayer;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;

    .line 783
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;

    const v2, 0x7f0e001f

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/Workspace;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    .line 784
    invoke-virtual {p0, v3}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mQsbDivider:Landroid/view/View;

    .line 785
    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDockDivider:Landroid/view/View;

    .line 788
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;

    invoke-virtual {v0, p0, v1}, Lcom/cyanogenmod/trebuchet/DragLayer;->setup(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/DragController;)V

    .line 791
    const v0, 0x7f0e0022

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/Hotseat;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHotseat:Lcom/cyanogenmod/trebuchet/Hotseat;

    .line 792
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHotseat:Lcom/cyanogenmod/trebuchet/Hotseat;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHotseat:Lcom/cyanogenmod/trebuchet/Hotseat;

    invoke-virtual {v0, p0}, Lcom/cyanogenmod/trebuchet/Hotseat;->setup(Lcom/cyanogenmod/trebuchet/Launcher;)V

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 798
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v0, p0}, Lcom/cyanogenmod/trebuchet/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 799
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->setup(Lcom/cyanogenmod/trebuchet/DragController;)V

    .line 800
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/DragController;->addDragListener(Lcom/cyanogenmod/trebuchet/DragController$DragListener;)V

    .line 803
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;

    const v2, 0x7f0e0023

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSearchDropTargetBar:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    .line 805
    invoke-virtual {p0, v3}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 806
    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 808
    iget-boolean v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mShowSearchBar:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 809
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 812
    :cond_1
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mShowDockDivider:Z

    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    .line 813
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 817
    :cond_2
    const v0, 0x7f0e0024

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    .line 819
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    const v2, 0x7f0e000a

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    .line 821
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v0, p0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->setup(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/DragController;)V

    .line 824
    const v0, 0x7f0e002c

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAllAppsButton:Landroid/view/View;

    .line 825
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 826
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAllAppsButton:Landroid/view/View;

    new-instance v2, Lcom/cyanogenmod/trebuchet/Launcher$5;

    invoke-direct {v2, p0}, Lcom/cyanogenmod/trebuchet/Launcher$5;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 837
    :cond_3
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/DragController;->setDragScoller(Lcom/cyanogenmod/trebuchet/DragScroller;)V

    .line 838
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/DragController;->setScrollView(Landroid/view/View;)V

    .line 839
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 840
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/DragController;->addDropTarget(Lcom/cyanogenmod/trebuchet/DropTarget;)V

    .line 841
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSearchDropTargetBar:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    if-eqz v0, :cond_4

    .line 842
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSearchDropTargetBar:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    invoke-virtual {v0, p0, v1}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->setup(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/DragController;)V

    .line 844
    :cond_4
    return-void
.end method

.method private showAppsCustomizeHelper(ZZ)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 2340
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2341
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2342
    iput-object v10, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2344
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2347
    const v2, 0x7f0a000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2348
    const v2, 0x7f0a000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 2349
    const v2, 0x7f0a000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v7, v2

    .line 2350
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    .line 2351
    const v4, 0x7f0a0012

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 2354
    invoke-direct {p0, v2, v7}, Lcom/cyanogenmod/trebuchet/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    .line 2356
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->getTransitionEffect()Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-result-object v0

    .line 2357
    sget-object v4, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->RotateUp:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    if-eq v0, v4, :cond_3

    sget-object v4, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->RotateDown:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    if-eq v0, v4, :cond_3

    move v0, v1

    .line 2361
    :goto_0
    if-eqz v0, :cond_1

    .line 2362
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    sget-object v4, Lcom/cyanogenmod/trebuchet/Workspace$State;->SMALL:Lcom/cyanogenmod/trebuchet/Workspace$State;

    invoke-virtual {v0, v4, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->changeState(Lcom/cyanogenmod/trebuchet/Workspace$State;Z)V

    .line 2365
    :cond_1
    if-eqz p1, :cond_4

    .line 2366
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 2367
    new-instance v0, Lcom/cyanogenmod/trebuchet/Workspace$ZoomOutInterpolator;

    invoke-direct {v0}, Lcom/cyanogenmod/trebuchet/Workspace$ZoomOutInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2368
    new-instance v0, Lcom/cyanogenmod/trebuchet/Launcher$12;

    invoke-direct {v0, p0, v2, v7}, Lcom/cyanogenmod/trebuchet/Launcher$12;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/view/View;F)V

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2375
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2376
    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    .line 2377
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v9, v5

    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2378
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc0

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2379
    new-instance v1, Lcom/cyanogenmod/trebuchet/Launcher$13;

    invoke-direct {v1, p0, v2}, Lcom/cyanogenmod/trebuchet/Launcher$13;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2385
    int-to-long v9, v8

    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2386
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2388
    new-instance v0, Lcom/cyanogenmod/trebuchet/Launcher$14;

    move-object v1, p0

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/Launcher$14;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/view/View;Lcom/cyanogenmod/trebuchet/Launcher;Landroid/animation/ValueAnimator;Z)V

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2429
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2430
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    int-to-long v3, v8

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 2433
    instance-of v0, v2, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;

    if-eqz v0, :cond_6

    .line 2434
    check-cast v2, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;

    .line 2435
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-interface {v2, p0, v0, v6}, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;->onLauncherTransitionStart(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/animation/Animator;Z)Z

    move-result v0

    .line 2438
    :goto_1
    if-nez v0, :cond_2

    .line 2441
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2462
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v6

    .line 2357
    goto/16 :goto_0

    .line 2444
    :cond_4
    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 2445
    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 2446
    invoke-virtual {v2, v11}, Landroid/view/View;->setScaleX(F)V

    .line 2447
    invoke-virtual {v2, v11}, Landroid/view/View;->setScaleY(F)V

    .line 2448
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2449
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 2450
    instance-of v0, v2, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;

    if-eqz v0, :cond_5

    move-object v0, v2

    .line 2451
    check-cast v0, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;

    invoke-interface {v0, p0, v10, v6}, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;->onLauncherTransitionStart(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/animation/Animator;Z)Z

    .line 2452
    check-cast v2, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;

    invoke-interface {v2, p0, v10, v6}, Lcom/cyanogenmod/trebuchet/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/cyanogenmod/trebuchet/Launcher;Landroid/animation/Animator;Z)V

    .line 2454
    if-nez p2, :cond_5

    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2456
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->hideScrollingIndicator(Z)V

    .line 2457
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->hideDockDivider()V

    .line 2460
    :cond_5
    invoke-virtual {p0, v6}, Lcom/cyanogenmod/trebuchet/Launcher;->updateWallpaperVisibility(Z)V

    goto :goto_2

    :cond_6
    move v0, v6

    goto :goto_1

    .line 2366
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2377
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private shrinkAndFadeInFolderIcon(Lcom/cyanogenmod/trebuchet/FolderIcon;)V
    .locals 11
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2000
    if-nez p1, :cond_0

    .line 2023
    :goto_0
    return-void

    .line 2001
    :cond_0
    const-string v0, "alpha"

    new-array v1, v10, [F

    aput v4, v1, v9

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 2002
    const-string v0, "scaleX"

    new-array v1, v10, [F

    aput v4, v1, v9

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 2003
    const-string v0, "scaleY"

    new-array v1, v10, [F

    aput v4, v1, v9

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 2005
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/FolderInfo;

    .line 2006
    const/4 v1, 0x0

    .line 2007
    iget-wide v5, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;->container:J

    const-wide/16 v7, -0x65

    cmp-long v0, v5, v7

    if-nez v0, :cond_1

    .line 2008
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 2012
    :goto_1
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v9

    aput-object v3, v1, v10

    const/4 v2, 0x2

    aput-object v4, v1, v2

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2013
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2014
    new-instance v2, Lcom/cyanogenmod/trebuchet/Launcher$11;

    invoke-direct {v2, p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher$11;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/CellLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2022
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private startWallpaper()V
    .locals 2

    .prologue
    .line 1646
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->showWorkspace(Z)V

    .line 1647
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1648
    const v1, 0x7f090007

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1661
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1662
    return-void
.end method

.method private syncOrientation()V
    .locals 3

    .prologue
    .line 374
    const-string v1, "uimode"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 375
    .local v0, uiModeManager:Landroid/app/UiModeManager;
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAutoRotate:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 376
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->setRequestedOrientation(I)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private unbindWorkspaceAndHotseatItems()V
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mModel:Lcom/cyanogenmod/trebuchet/LauncherModel;

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mModel:Lcom/cyanogenmod/trebuchet/LauncherModel;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->unbindWorkspaceItems()V

    .line 1733
    :cond_0
    return-void
.end method

.method private updateAppMarketIcon()V
    .locals 7

    .prologue
    const v6, 0x7f0e0009

    const/4 v5, 0x0

    .line 2916
    invoke-virtual {p0, v6}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2917
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.APP_MARKET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2920
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2922
    if-eqz v2, :cond_0

    .line 2923
    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 2926
    :cond_0
    if-eqz v2, :cond_2

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2928
    :cond_1
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v1

    .line 2929
    sget-object v3, Lcom/cyanogenmod/trebuchet/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    const v4, 0x7f020029

    invoke-direct {p0, v6, v2, v4}, Lcom/cyanogenmod/trebuchet/Launcher;->updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    aput-object v2, v3, v1

    .line 2931
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2938
    :goto_0
    return-void

    .line 2935
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2936
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateAppMarketIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 1
    .parameter

    .prologue
    .line 2941
    const v0, 0x7f0e0009

    invoke-direct {p0, v0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->updateTextButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 2942
    return-void
.end method

.method private updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 2
    .parameter "buttonId"
    .parameter "d"

    .prologue
    .line 2829
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2830
    .local v0, button:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2831
    return-void
.end method

.method private updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3
    .parameter "buttonId"
    .parameter "activityName"
    .parameter "fallbackDrawableId"

    .prologue
    .line 2806
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2807
    .local v0, button:Landroid/widget/ImageView;
    invoke-direct {p0, p2}, Lcom/cyanogenmod/trebuchet/Launcher;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2809
    .local v1, toolbarIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 2812
    if-nez v1, :cond_1

    .line 2813
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2819
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    :goto_1
    return-object v2

    .line 2815
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2819
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateGlobalSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0e002f

    .line 2874
    const v0, 0x7f0e0032

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2875
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2876
    invoke-direct {p0, v2, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 2877
    invoke-direct {p0, v1, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 2878
    return-void
.end method

.method private updateGlobalSearchIcon()Z
    .locals 9

    .prologue
    const v8, 0x7f0e002f

    const/4 v2, 0x0

    const/16 v7, 0x8

    .line 2844
    const v0, 0x7f0e0032

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2845
    invoke-virtual {p0, v8}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2846
    const v1, 0x7f0e0030

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2847
    const v1, 0x7f0e0033

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2848
    const v1, 0x7f0e0031

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2850
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 2852
    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 2853
    if-eqz v1, :cond_2

    .line 2854
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v5

    .line 2855
    sget-object v6, Lcom/cyanogenmod/trebuchet/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    const v7, 0x7f020021

    invoke-direct {p0, v8, v1, v7}, Lcom/cyanogenmod/trebuchet/Launcher;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    aput-object v1, v6, v5

    .line 2857
    if-eqz v4, :cond_0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2858
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2859
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2860
    invoke-direct {p0, v3, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 2861
    const/4 v0, 0x1

    .line 2869
    :goto_0
    return v0

    .line 2864
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2865
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2866
    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2867
    :cond_5
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2868
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    move v0, v2

    .line 2869
    goto :goto_0
.end method

.method private updateOverflowMenuButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2945
    const v0, 0x7f0e0008

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2946
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2948
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2949
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2953
    :goto_0
    return-void

    .line 2951
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateRunning()V
    .locals 11

    .prologue
    const-wide/16 v1, 0x4e20

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1140
    iget-boolean v5, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mVisible:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mUserPresent:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    .line 1141
    .local v0, autoAdvanceRunning:Z
    :goto_0
    iget-boolean v5, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAutoAdvanceRunning:Z

    if-eq v0, v5, :cond_0

    .line 1142
    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAutoAdvanceRunning:Z

    .line 1143
    if-eqz v0, :cond_3

    .line 1144
    iget-wide v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAutoAdvanceTimeLeft:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 1145
    .local v1, delay:J
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->sendAdvanceMessage(J)V

    .line 1155
    .end local v1           #delay:J
    :cond_0
    :goto_2
    return-void

    .end local v0           #autoAdvanceRunning:Z
    :cond_1
    move v0, v4

    .line 1140
    goto :goto_0

    .line 1144
    .restart local v0       #autoAdvanceRunning:Z
    :cond_2
    iget-wide v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAutoAdvanceTimeLeft:J

    goto :goto_1

    .line 1147
    :cond_3
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1148
    const-wide/16 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAutoAdvanceSentTime:J

    sub-long/2addr v7, v9

    sub-long v7, v1, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAutoAdvanceTimeLeft:J

    .line 1151
    :cond_4
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1152
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method

.method private updateTextButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 3
    .parameter "buttonId"
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    .line 2824
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2825
    .local v0, button:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2826
    return-void
.end method

.method private updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 2780
    invoke-direct {p0, p2}, Lcom/cyanogenmod/trebuchet/Launcher;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2781
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2782
    const v0, 0x7f0b001d

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2783
    const v0, 0x7f0b001e

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 2785
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2787
    if-nez v2, :cond_1

    .line 2788
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2789
    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2790
    if-eqz v0, :cond_0

    .line 2791
    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    move-object v0, v1

    .line 2799
    :goto_0
    return-object v0

    .line 2795
    :cond_1
    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2796
    if-eqz v0, :cond_2

    .line 2797
    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2799
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    goto :goto_0
.end method

.method private updateVoiceSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0e0031

    .line 2906
    const v0, 0x7f0e0033

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2907
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2908
    invoke-direct {p0, v2, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 2909
    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 2910
    return-void
.end method

.method private updateVoiceSearchIcon(Z)Z
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0e0031

    const/16 v6, 0x8

    const/4 v0, 0x0

    .line 2881
    const v1, 0x7f0e0030

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2882
    const v2, 0x7f0e0033

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2883
    invoke-virtual {p0, v8}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2886
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.speech.action.WEB_SEARCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2887
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    .line 2888
    if-eqz p1, :cond_2

    if-eqz v4, :cond_2

    .line 2889
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v5

    .line 2890
    sget-object v6, Lcom/cyanogenmod/trebuchet/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    const v7, 0x7f020022

    invoke-direct {p0, v8, v4, v7}, Lcom/cyanogenmod/trebuchet/Launcher;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    aput-object v4, v6, v5

    .line 2892
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2893
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2894
    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2895
    invoke-direct {p0, v2, v3}, Lcom/cyanogenmod/trebuchet/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 2896
    const/4 v0, 0x1

    .line 2901
    :goto_0
    return v0

    .line 2898
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2899
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2900
    :cond_4
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 460
    const/4 v1, 0x0

    .line 462
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 463
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 464
    iget v3, p1, Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 465
    iget v3, p1, Lcom/cyanogenmod/trebuchet/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 466
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 473
    if-eqz v2, :cond_2

    .line 475
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 481
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 476
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 478
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0

    .line 467
    :catch_1
    move-exception v3

    .line 473
    :goto_1
    if-eqz v1, :cond_0

    .line 475
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 476
    :catch_2
    move-exception v3

    goto :goto_0

    .line 469
    :catch_3
    move-exception v0

    .line 471
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 473
    if-eqz v1, :cond_0

    .line 475
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 476
    :catch_4
    move-exception v3

    goto :goto_0

    .line 473
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    .line 475
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 478
    :cond_1
    :goto_4
    throw v3

    .line 476
    :catch_5
    move-exception v4

    goto :goto_4

    .line 473
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 469
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 467
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0
.end method


# virtual methods
.method addAppWidgetFromDrop(Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;JI[I[I)V
    .locals 3
    .parameter "info"
    .parameter "container"
    .parameter "screen"
    .parameter "cell"
    .parameter "loc"

    .prologue
    .line 1584
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->resetAddInfo()V

    .line 1585
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iput-wide p2, p1, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->container:J

    iput-wide p2, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    .line 1586
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iput p4, p1, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->screen:I

    iput p4, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    .line 1587
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iput-object p6, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->dropPos:[I

    .line 1588
    if-eqz p5, :cond_0

    .line 1589
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    const/4 v2, 0x0

    aget v2, p5, v2

    iput v2, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    .line 1590
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    const/4 v2, 0x1

    aget v2, p5, v2

    iput v2, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    .line 1593
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getAppWidgetHost()Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1594
    .local v0, appWidgetId:I
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget-object v2, p1, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 1595
    invoke-virtual {p0, v0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->addAppWidgetImpl(ILcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;)V

    .line 1596
    return-void
.end method

.method addAppWidgetFromPick(Landroid/content/Intent;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 1495
    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1498
    .local v0, appWidgetId:I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->addAppWidgetImpl(ILcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;)V

    .line 1499
    return-void
.end method

.method addAppWidgetImpl(ILcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1502
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 1504
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_4

    .line 1506
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1507
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1508
    const-string v0, "appWidgetId"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1509
    if-eqz p2, :cond_0

    .line 1510
    iget-object v0, p2, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1511
    const-string v0, "com.android.launcher.extra.widget.CONFIGURATION_DATA_MIME_TYPE"

    iget-object v3, p2, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1515
    iget-object v3, p2, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    .line 1516
    iget-object v0, p2, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->configurationData:Landroid/os/Parcelable;

    check-cast v0, Landroid/content/ClipData;

    .line 1517
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    .line 1518
    :goto_0
    invoke-virtual {v4}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1519
    invoke-virtual {v4, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1520
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 1521
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1522
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 1523
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1524
    const-string v4, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    .line 1526
    if-eqz v3, :cond_1

    .line 1527
    const-string v0, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1539
    :cond_0
    :goto_1
    const/4 v0, 0x5

    invoke-virtual {p0, v2, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1547
    :goto_2
    return-void

    .line 1528
    :cond_1
    if-eqz v0, :cond_2

    .line 1529
    const-string v1, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 1530
    :cond_2
    if-eqz v1, :cond_0

    .line 1531
    const-string v0, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_1

    .line 1518
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1542
    :cond_4
    iget-wide v2, p2, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->container:J

    iget v0, p2, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->screen:I

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->completeAddAppWidget(IJI)V

    .line 1545
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->exitSpringLoadedDragModeDelayed(ZZ)V

    goto :goto_2
.end method

.method addFolder(Lcom/cyanogenmod/trebuchet/CellLayout;JIII)Lcom/cyanogenmod/trebuchet/FolderIcon;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1622
    new-instance v1, Lcom/cyanogenmod/trebuchet/FolderInfo;

    invoke-direct {v1}, Lcom/cyanogenmod/trebuchet/FolderInfo;-><init>()V

    .line 1623
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/cyanogenmod/trebuchet/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1626
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v7}, Lcom/cyanogenmod/trebuchet/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;JIIIZ)V

    .line 1628
    sget-object v0, Lcom/cyanogenmod/trebuchet/Launcher;->sFolders:Ljava/util/HashMap;

    iget-wide v2, v1, Lcom/cyanogenmod/trebuchet/FolderInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    const v0, 0x7f03000c

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    invoke-static {v0, p0, p1, v1, v2}, Lcom/cyanogenmod/trebuchet/FolderIcon;->fromXml(ILcom/cyanogenmod/trebuchet/Launcher;Landroid/view/ViewGroup;Lcom/cyanogenmod/trebuchet/FolderInfo;Lcom/cyanogenmod/trebuchet/IconCache;)Lcom/cyanogenmod/trebuchet/FolderIcon;

    move-result-object v1

    .line 1633
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHideIconLabels:Z

    if-eqz v0, :cond_0

    .line 1634
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/FolderIcon;->setTextVisible(Z)V

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->isWorkspaceLocked()Z

    move-result v9

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/cyanogenmod/trebuchet/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 1638
    return-object v1
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .parameter "hostView"
    .parameter "appWidgetInfo"

    .prologue
    .line 1180
    if-eqz p2, :cond_0

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1182
    .local v0, v:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    .line 1183
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    check-cast v0, Landroid/widget/Advanceable;

    .end local v0           #v:Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 1185
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->updateRunning()V

    goto :goto_0
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
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
    .line 3254
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    const v1, 0x7f0e000f

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3256
    if-eqz v1, :cond_0

    .line 3257
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3262
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    new-instance v1, Lcom/cyanogenmod/trebuchet/Launcher$19;

    invoke-direct {v1, p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher$19;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->post(Ljava/lang/Runnable;)Z

    .line 3269
    return-void
.end method

.method public bindAppWidget(Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;)V
    .locals 14
    .parameter "item"

    .prologue
    .line 3168
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->setLoadOnResume()Z

    .line 3170
    const-wide/16 v12, 0x0

    .line 3174
    .local v12, start:J
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    .line 3176
    .local v0, workspace:Lcom/cyanogenmod/trebuchet/Workspace;
    iget v10, p1, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->appWidgetId:I

    .line 3177
    .local v10, appWidgetId:I
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v10}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    .line 3182
    .local v11, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppWidgetHost:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;

    invoke-virtual {v1, p0, v10, v11}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, p1, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 3184
    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v10, v11}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 3185
    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 3187
    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v2, p1, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->container:J

    iget v4, p1, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->screen:I

    iget v5, p1, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->cellX:I

    iget v6, p1, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->cellY:I

    iget v7, p1, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->spanX:I

    iget v8, p1, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->spanY:I

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/cyanogenmod/trebuchet/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 3190
    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v1, v11}, Lcom/cyanogenmod/trebuchet/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 3192
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->requestLayout()V

    .line 3198
    return-void
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 3277
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->setLoadOnResume()Z

    .line 3278
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->removeDialog(I)V

    .line 3280
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    if-eqz v0, :cond_0

    .line 3281
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->addApps(Ljava/util/ArrayList;)V

    .line 3283
    :cond_0
    return-void
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter
    .parameter "permanent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3308
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ApplicationInfo;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->removeDialog(I)V

    .line 3309
    if-eqz p2, :cond_0

    .line 3310
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->removeItems(Ljava/util/ArrayList;)V

    .line 3313
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    if-eqz v0, :cond_1

    .line 3314
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->removeApps(Ljava/util/ArrayList;)V

    .line 3318
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    invoke-virtual {v0, p1, p0}, Lcom/cyanogenmod/trebuchet/DragController;->onAppsRemoved(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 3319
    return-void
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 3291
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->setLoadOnResume()Z

    .line 3292
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->removeDialog(I)V

    .line 3293
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    if-eqz v0, :cond_0

    .line 3294
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 3297
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    if-eqz v0, :cond_1

    .line 3298
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v0, p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->updateApps(Ljava/util/ArrayList;)V

    .line 3300
    :cond_1
    return-void
.end method

.method public bindFolders(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/cyanogenmod/trebuchet/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3157
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/cyanogenmod/trebuchet/FolderInfo;>;"
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->setLoadOnResume()Z

    .line 3158
    sget-object v0, Lcom/cyanogenmod/trebuchet/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3159
    sget-object v0, Lcom/cyanogenmod/trebuchet/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3160
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 3119
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->setLoadOnResume()Z

    .line 3121
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    .line 3122
    :goto_0
    if-ge p2, p3, :cond_2

    .line 3123
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 3126
    iget-wide v1, v6, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    const-wide/16 v3, -0x65

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHotseat:Lcom/cyanogenmod/trebuchet/Hotseat;

    if-nez v1, :cond_0

    .line 3122
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3131
    :cond_0
    iget v1, v6, Lcom/cyanogenmod/trebuchet/ItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object v1, v6

    .line 3134
    check-cast v1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->createShortcut(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)Landroid/view/View;

    move-result-object v1

    .line 3135
    iget-wide v2, v6, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    iget v4, v6, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    iget v5, v6, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    iget v6, v6, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    move v8, v7

    invoke-virtual/range {v0 .. v9}, Lcom/cyanogenmod/trebuchet/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto :goto_1

    .line 3139
    :pswitch_1
    const v3, 0x7f03000c

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v2, v6

    check-cast v2, Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    invoke-static {v3, p0, v1, v2, v4}, Lcom/cyanogenmod/trebuchet/FolderIcon;->fromXml(ILcom/cyanogenmod/trebuchet/Launcher;Landroid/view/ViewGroup;Lcom/cyanogenmod/trebuchet/FolderInfo;Lcom/cyanogenmod/trebuchet/IconCache;)Lcom/cyanogenmod/trebuchet/FolderIcon;

    move-result-object v1

    .line 3142
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHideIconLabels:Z

    if-nez v2, :cond_1

    .line 3143
    invoke-virtual {v1, v9}, Lcom/cyanogenmod/trebuchet/FolderIcon;->setTextVisible(Z)V

    .line 3145
    :cond_1
    iget-wide v2, v6, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    iget v4, v6, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    iget v5, v6, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    iget v6, v6, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    move v8, v7

    invoke-virtual/range {v0 .. v9}, Lcom/cyanogenmod/trebuchet/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto :goto_1

    .line 3150
    :cond_2
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->requestLayout()V

    .line 3151
    return-void

    .line 3131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bindPackagesUpdated()V
    .locals 1

    .prologue
    .line 3325
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    if-eqz v0, :cond_0

    .line 3326
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->onPackagesUpdated()V

    .line 3328
    :cond_0
    return-void
.end method

.method public bindSearchablesChanged()V
    .locals 3

    .prologue
    .line 3241
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->updateGlobalSearchIcon()Z

    move-result v0

    .line 3242
    .local v0, searchVisible:Z
    invoke-direct {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->updateVoiceSearchIcon(Z)Z

    move-result v1

    .line 3243
    .local v1, voiceVisible:Z
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSearchDropTargetBar:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    invoke-virtual {v2, v0, v1}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->onSearchPackagesChanged(ZZ)V

    .line 3244
    return-void
.end method

.method public closeFolder()V
    .locals 2

    .prologue
    .line 2052
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getOpenFolder()Lcom/cyanogenmod/trebuchet/Folder;

    move-result-object v0

    .line 2053
    .local v0, folder:Lcom/cyanogenmod/trebuchet/Folder;
    if-eqz v0, :cond_1

    .line 2054
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2055
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Folder;->dismissEditingName()V

    .line 2057
    :cond_0
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->closeFolder(Lcom/cyanogenmod/trebuchet/Folder;)V

    .line 2060
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->dismissFolderCling(Landroid/view/View;)V

    .line 2062
    :cond_1
    return-void
.end method

.method closeFolder(Lcom/cyanogenmod/trebuchet/Folder;)V
    .locals 4
    .parameter "folder"

    .prologue
    .line 2065
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/Folder;->getInfo()Lcom/cyanogenmod/trebuchet/FolderInfo;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/cyanogenmod/trebuchet/FolderInfo;->opened:Z

    .line 2067
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2068
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 2069
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    iget-object v3, p1, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/trebuchet/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/FolderIcon;

    .line 2070
    .local v0, fi:Lcom/cyanogenmod/trebuchet/FolderIcon;
    invoke-direct {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->shrinkAndFadeInFolderIcon(Lcom/cyanogenmod/trebuchet/FolderIcon;)V

    .line 2072
    .end local v0           #fi:Lcom/cyanogenmod/trebuchet/FolderIcon;
    :cond_0
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/Folder;->animateClosed()V

    .line 2073
    return-void
.end method

.method closeSystemDialogs()V
    .locals 1

    .prologue
    .line 1214
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 1234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWaitingForResult:Z

    .line 1235
    return-void
.end method

.method completeAddApplication(Landroid/content/Intent;JIII)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 884
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 885
    invoke-virtual {p0, p2, p3, p4}, Lcom/cyanogenmod/trebuchet/Launcher;->getCellLayout(JI)Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v2

    .line 888
    if-ltz p5, :cond_1

    if-ltz p6, :cond_1

    .line 889
    const/4 v0, 0x0

    aput p5, v3, v0

    .line 890
    const/4 v0, 0x1

    aput p6, v3, v0

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mModel:Lcom/cyanogenmod/trebuchet/LauncherModel;

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    move-result-object v1

    .line 898
    if-eqz v1, :cond_2

    .line 899
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/high16 v4, 0x1020

    invoke-virtual {v1, v0, v4}, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 901
    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->container:J

    .line 902
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    const/4 v4, 0x0

    aget v6, v3, v4

    const/4 v4, 0x1

    aget v7, v3, v4

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->isWorkspaceLocked()Z

    move-result v8

    move-wide v3, p2

    move v5, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lcom/cyanogenmod/trebuchet/Workspace;->addApplicationShortcut(Lcom/cyanogenmod/trebuchet/ShortcutInfo;Lcom/cyanogenmod/trebuchet/CellLayout;JIIIZII)V

    .line 907
    :goto_0
    return-void

    .line 891
    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->showOutOfSpaceMessage()V

    goto :goto_0

    .line 905
    :cond_2
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find ActivityInfo for selected application: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method createShortcut(ILandroid/view/ViewGroup;Lcom/cyanogenmod/trebuchet/ShortcutInfo;)Landroid/view/View;
    .locals 3
    .parameter "layoutResId"
    .parameter "parent"
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    .line 868
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/BubbleTextView;

    .line 869
    .local v0, favorite:Lcom/cyanogenmod/trebuchet/BubbleTextView;
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    invoke-virtual {v0, p3, v1}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->applyFromShortcutInfo(Lcom/cyanogenmod/trebuchet/ShortcutInfo;Lcom/cyanogenmod/trebuchet/IconCache;)V

    .line 870
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHideIconLabels:Z

    if-eqz v1, :cond_0

    .line 871
    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setTextVisible(Z)V

    .line 873
    :cond_0
    invoke-virtual {v0, p0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 874
    return-object v0
.end method

.method createShortcut(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 854
    const v1, 0x7f030003

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/cyanogenmod/trebuchet/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public dismissAllAppsCling(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 3490
    const v0, 0x7f0e000d

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/Cling;

    .line 3491
    const-string v1, "cling.allapps.dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->dismissCling(Lcom/cyanogenmod/trebuchet/Cling;Ljava/lang/String;I)V

    .line 3492
    return-void
.end method

.method public dismissAllAppsSortCling(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 3494
    const v0, 0x7f0e000e

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/Cling;

    .line 3495
    const-string v1, "cling.allappssort.dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->dismissCling(Lcom/cyanogenmod/trebuchet/Cling;Ljava/lang/String;I)V

    .line 3496
    return-void
.end method

.method public dismissFolderCling(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 3498
    const v0, 0x7f0e0026

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/Cling;

    .line 3499
    const-string v1, "cling.folder.dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->dismissCling(Lcom/cyanogenmod/trebuchet/Cling;Ljava/lang/String;I)V

    .line 3500
    return-void
.end method

.method public dismissWorkspaceCling(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 3486
    const v0, 0x7f0e0025

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/Cling;

    .line 3487
    const-string v1, "cling.workspace.dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->dismissCling(Lcom/cyanogenmod/trebuchet/Cling;Ljava/lang/String;I)V

    .line 3488
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1676
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 1677
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1694
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    :pswitch_0
    :sswitch_0
    return v0

    .line 1681
    :sswitch_1
    const-string v1, "debug.launcher2.dumpstate"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1682
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->dumpState()V

    goto :goto_1

    .line 1687
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1688
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1677
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch

    .line 1688
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3535
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3536
    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3537
    const-string v0, "Debug logs: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3538
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/cyanogenmod/trebuchet/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/cyanogenmod/trebuchet/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3538
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3541
    :cond_0
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 3518
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedInstanceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cyanogenmod/trebuchet/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mModel:Lcom/cyanogenmod/trebuchet/LauncherModel;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->dumpState()V

    .line 3527
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    if-eqz v0, :cond_0

    .line 3528
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->dumpState()V

    .line 3530
    :cond_0
    const-string v0, "Launcher"

    const-string v1, "END launcher2 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    return-void
.end method

.method enterSpringLoadedDragMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2604
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    sget-object v1, Lcom/cyanogenmod/trebuchet/Launcher$State;->APPS_CUSTOMIZE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    if-ne v0, v1, :cond_0

    .line 2605
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    sget-object v1, Lcom/cyanogenmod/trebuchet/Workspace$State;->SPRING_LOADED:Lcom/cyanogenmod/trebuchet/Workspace$State;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->changeState(Lcom/cyanogenmod/trebuchet/Workspace$State;)V

    .line 2606
    invoke-direct {p0, v2, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->hideAppsCustomizeHelper(ZZ)V

    .line 2607
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->hideDockDivider()V

    .line 2608
    sget-object v0, Lcom/cyanogenmod/trebuchet/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/cyanogenmod/trebuchet/Launcher$State;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    .line 2610
    :cond_0
    return-void
.end method

.method exitSpringLoadedDragMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2635
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    sget-object v3, Lcom/cyanogenmod/trebuchet/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/cyanogenmod/trebuchet/Launcher$State;

    if-ne v2, v3, :cond_0

    .line 2636
    const/4 v0, 0x1

    .line 2637
    .local v0, animated:Z
    const/4 v1, 0x1

    .line 2638
    .local v1, springLoaded:Z
    invoke-direct {p0, v4, v4}, Lcom/cyanogenmod/trebuchet/Launcher;->showAppsCustomizeHelper(ZZ)V

    .line 2639
    sget-object v2, Lcom/cyanogenmod/trebuchet/Launcher$State;->APPS_CUSTOMIZE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    .line 2642
    .end local v0           #animated:Z
    .end local v1           #springLoaded:Z
    :cond_0
    return-void
.end method

.method exitSpringLoadedDragModeDelayed(ZZ)V
    .locals 5
    .parameter "successfulDrop"
    .parameter "extendedDelay"

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    sget-object v1, Lcom/cyanogenmod/trebuchet/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/cyanogenmod/trebuchet/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 2632
    :goto_0
    return-void

    .line 2615
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/cyanogenmod/trebuchet/Launcher$18;

    invoke-direct {v2, p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher$18;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Z)V

    if-eqz p2, :cond_1

    const/16 v0, 0x258

    :goto_1
    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x12c

    goto :goto_1
.end method

.method public finishBindingItems()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3206
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->setLoadOnResume()Z

    .line 3208
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 3209
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Workspace;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3210
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 3212
    :cond_0
    iput-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 3215
    :cond_1
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 3216
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 3217
    iput-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 3220
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspaceLoading:Z

    .line 3224
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/cyanogenmod/trebuchet/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3225
    sget-object v1, Lcom/cyanogenmod/trebuchet/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;

    invoke-direct {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->completeAdd(Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;)Z

    .line 3224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3227
    :cond_3
    sget-object v1, Lcom/cyanogenmod/trebuchet/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3231
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->updateAppMarketIcon()V

    .line 3234
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->updateOverflowMenuButton()V

    .line 3236
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 3237
    return-void
.end method

.method public getAppWidgetHost()Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppWidgetHost:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;

    return-object v0
.end method

.method getCellLayout(JI)Lcom/cyanogenmod/trebuchet/CellLayout;
    .locals 2
    .parameter "container"
    .parameter "screen"

    .prologue
    .line 2130
    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2131
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHotseat:Lcom/cyanogenmod/trebuchet/Hotseat;

    if-eqz v0, :cond_0

    .line 2132
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHotseat:Lcom/cyanogenmod/trebuchet/Hotseat;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Hotseat;->getLayout()Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v0

    .line 2137
    :goto_0
    return-object v0

    .line 2134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2137
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v0, p3}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    goto :goto_0
.end method

.method public getCurrentOrientation()I
    .locals 1

    .prologue
    .line 2738
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 3084
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    if-eqz v0, :cond_0

    .line 3085
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->getCurrentPage()I

    move-result v0

    .line 3087
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 968
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 969
    invoke-static {p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 980
    :goto_0
    return-object v0

    .line 972
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 974
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 975
    const v2, 0x7f0b0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 976
    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 977
    const v2, 0x7f0b0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 978
    const v2, 0x7f0b003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public getDragController()Lcom/cyanogenmod/trebuchet/DragController;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/cyanogenmod/trebuchet/DragLayer;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;

    return-object v0
.end method

.method getHotseat()Lcom/cyanogenmod/trebuchet/Hotseat;
    .locals 1

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHotseat:Lcom/cyanogenmod/trebuchet/Hotseat;

    return-object v0
.end method

.method getMinResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .locals 3
    .parameter "info"
    .parameter "spanXY"

    .prologue
    .line 1002
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/cyanogenmod/trebuchet/Launcher;->getSpanForWidget(Landroid/content/ComponentName;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getModel()Lcom/cyanogenmod/trebuchet/LauncherModel;
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mModel:Lcom/cyanogenmod/trebuchet/LauncherModel;

    return-object v0
.end method

.method getSearchBar()Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;
    .locals 1

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSearchDropTargetBar:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    return-object v0
.end method

.method getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .locals 3
    .parameter "info"
    .parameter "spanXY"

    .prologue
    .line 998
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/cyanogenmod/trebuchet/Launcher;->getSpanForWidget(Landroid/content/ComponentName;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method getSpanForWidget(Landroid/content/ComponentName;II[I)[I
    .locals 6
    .parameter "component"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "spanXY"

    .prologue
    const/4 v5, 0x0

    .line 984
    if-nez p4, :cond_0

    .line 985
    const/4 v3, 0x2

    new-array p4, v3, [I

    .line 988
    :cond_0
    invoke-virtual {p0, p0, p1, v5}, Lcom/cyanogenmod/trebuchet/Launcher;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 992
    .local v0, padding:Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int v2, v3, v4

    .line 993
    .local v2, requiredWidth:I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int v1, v3, v4

    .line 994
    .local v1, requiredHeight:I
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v1, v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object v3

    return-object v3
.end method

.method getSpanForWidget(Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;[I)[I
    .locals 3
    .parameter "info"
    .parameter "spanXY"

    .prologue
    .line 1006
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    iget v1, p1, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->minWidth:I

    iget v2, p1, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->minHeight:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/cyanogenmod/trebuchet/Launcher;->getSpanForWidget(Landroid/content/ComponentName;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;
    .locals 1

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    return-object v0
.end method

.method hideDockDivider()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 2645
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mQsbDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDockDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2646
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mShowSearchBar:Z

    if-eqz v0, :cond_0

    .line 2647
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mQsbDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2649
    :cond_0
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mShowDockDivider:Z

    if-eqz v0, :cond_1

    .line 2650
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDockDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2653
    :cond_1
    return-void
.end method

.method public isAllAppsCustomizeOpen()Z
    .locals 2

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    sget-object v1, Lcom/cyanogenmod/trebuchet/Launcher$State;->APPS_CUSTOMIZE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllAppsVisible()Z
    .locals 2

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    sget-object v1, Lcom/cyanogenmod/trebuchet/Launcher$State;->APPS_CUSTOMIZE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderClingVisible()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3479
    const v0, 0x7f0e0026

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/Cling;

    .line 3480
    if-eqz v0, :cond_1

    .line 3481
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Cling;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3483
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 3481
    goto :goto_0

    :cond_1
    move v0, v1

    .line 3483
    goto :goto_0
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 1
    .parameter "layout"

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHotseat:Lcom/cyanogenmod/trebuchet/Hotseat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/cyanogenmod/trebuchet/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHotseat:Lcom/cyanogenmod/trebuchet/Hotseat;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Hotseat;->getLayout()Lcom/cyanogenmod/trebuchet/CellLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 1482
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lockAllApps()V
    .locals 0

    .prologue
    .line 2689
    return-void
.end method

.method public lockScreenOrientationOnLargeUI()V
    .locals 1

    .prologue
    .line 3363
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3364
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getCurrentOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->mapConfigurationOriActivityInfoOri(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->setRequestedOrientation(I)V

    .line 3366
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v8, -0x1

    .line 538
    const/4 v2, 0x0

    .line 539
    .local v2, delayExitSpringLoadedMode:Z
    iput-boolean v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWaitingForResult:Z

    .line 546
    if-ne p2, v8, :cond_3

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget-wide v4, v4, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 547
    new-instance v1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;-><init>(Lcom/cyanogenmod/trebuchet/Launcher$1;)V

    .line 548
    .local v1, args:Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;
    iput p1, v1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->requestCode:I

    .line 549
    iput-object p3, v1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 550
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget-wide v4, v4, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    iput-wide v4, v1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->container:J

    .line 551
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget v4, v4, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    iput v4, v1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->screen:I

    .line 552
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget v4, v4, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    iput v4, v1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->cellX:I

    .line 553
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget v4, v4, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    iput v4, v1, Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;->cellY:I

    .line 556
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->isWorkspaceLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 557
    sget-object v4, Lcom/cyanogenmod/trebuchet/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    .end local v1           #args:Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->exitSpringLoadedDragModeDelayed(ZZ)V

    .line 574
    return-void

    .line 559
    .restart local v1       #args:Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;
    :cond_2
    invoke-direct {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->completeAdd(Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;)Z

    move-result v2

    goto :goto_0

    .line 561
    .end local v1           #args:Lcom/cyanogenmod/trebuchet/Launcher$PendingAddArguments;
    :cond_3
    const/16 v4, 0x9

    if-eq p1, v4, :cond_4

    const/4 v4, 0x5

    if-ne p1, v4, :cond_0

    :cond_4
    if-nez p2, :cond_0

    .line 563
    if-eqz p3, :cond_0

    .line 565
    const-string v4, "appWidgetId"

    invoke-virtual {p3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 566
    .local v0, appWidgetId:I
    if-eq v0, v8, :cond_0

    .line 567
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppWidgetHost:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;

    invoke-virtual {v4, v0}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1102
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 1105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1106
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1107
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1108
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1110
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAttached:Z

    .line 1111
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mVisible:Z

    .line 1112
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 1699
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    sget-object v2, Lcom/cyanogenmod/trebuchet/Launcher$State;->APPS_CUSTOMIZE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    if-ne v1, v2, :cond_0

    .line 1700
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->showWorkspace(Z)V

    .line 1714
    :goto_0
    return-void

    .line 1701
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getOpenFolder()Lcom/cyanogenmod/trebuchet/Folder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1702
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getOpenFolder()Lcom/cyanogenmod/trebuchet/Folder;

    move-result-object v0

    .line 1703
    .local v0, openFolder:Lcom/cyanogenmod/trebuchet/Folder;
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1704
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Folder;->dismissEditingName()V

    goto :goto_0

    .line 1706
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->closeFolder()V

    goto :goto_0

    .line 1709
    .end local v0           #openFolder:Lcom/cyanogenmod/trebuchet/Folder;
    :cond_2
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Workspace;->exitWidgetResizeMode()V

    .line 1712
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Workspace;->showOutlinesTemporarily()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 1743
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1777
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1747
    .restart local p1
    :cond_1
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/Workspace;->isSwitchingState()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1751
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1752
    .local v4, tag:Ljava/lang/Object;
    instance-of v5, v4, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    if-eqz v5, :cond_2

    move-object v5, v4

    .line 1754
    check-cast v5, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    iget-object v1, v5, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1755
    .local v1, intent:Landroid/content/Intent;
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 1756
    .local v2, pos:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1757
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v2, v8

    aget v7, v2, v11

    aget v8, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v9, v2, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1759
    invoke-virtual {p0, v1, v4}, Lcom/cyanogenmod/trebuchet/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v3

    .line 1761
    .local v3, success:Z
    if-eqz v3, :cond_0

    instance-of v5, p1, Lcom/cyanogenmod/trebuchet/BubbleTextView;

    if-eqz v5, :cond_0

    .line 1762
    check-cast p1, Lcom/cyanogenmod/trebuchet/BubbleTextView;

    .end local p1
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWaitingForResume:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    .line 1763
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWaitingForResume:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    invoke-virtual {v5, v11}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setStayPressed(Z)V

    goto :goto_0

    .line 1765
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pos:[I
    .end local v3           #success:Z
    .restart local p1
    :cond_2
    instance-of v5, v4, Lcom/cyanogenmod/trebuchet/FolderInfo;

    if-eqz v5, :cond_3

    .line 1766
    instance-of v5, p1, Lcom/cyanogenmod/trebuchet/FolderIcon;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 1767
    check-cast v0, Lcom/cyanogenmod/trebuchet/FolderIcon;

    .line 1768
    .local v0, fi:Lcom/cyanogenmod/trebuchet/FolderIcon;
    invoke-direct {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->handleFolderClick(Lcom/cyanogenmod/trebuchet/FolderIcon;)V

    goto :goto_0

    .line 1770
    .end local v0           #fi:Lcom/cyanogenmod/trebuchet/FolderIcon;
    :cond_3
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAllAppsButton:Landroid/view/View;

    if-ne p1, v5, :cond_0

    .line 1771
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    sget-object v6, Lcom/cyanogenmod/trebuchet/Launcher$State;->APPS_CUSTOMIZE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    if-ne v5, v6, :cond_4

    .line 1772
    invoke-virtual {p0, v11}, Lcom/cyanogenmod/trebuchet/Launcher;->showWorkspace(Z)V

    goto :goto_0

    .line 1774
    :cond_4
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickAllAppsButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1817
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->showAllApps(Z)V

    .line 1818
    return-void
.end method

.method public onClickAppMarketButton(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1827
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    const-string v1, "app market"

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 1829
    :cond_0
    return-void
.end method

.method public onClickOverflowMenuButton(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1832
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1833
    .local v1, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1834
    .local v0, menu:Landroid/view/Menu;
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1835
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1836
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 1837
    return-void
.end method

.method public onClickSearchButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1792
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1794
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->onSearchRequested()Z

    .line 1795
    return-void
.end method

.method public onClickVoiceButton(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1803
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1805
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1806
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1807
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1808
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 289
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/LauncherApplication;

    .line 290
    .local v0, app:Lcom/cyanogenmod/trebuchet/LauncherApplication;
    invoke-virtual {v0, p0}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->setLauncher(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/LauncherModel;

    move-result-object v6

    iput-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mModel:Lcom/cyanogenmod/trebuchet/LauncherModel;

    .line 291
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->getIconCache()Lcom/cyanogenmod/trebuchet/IconCache;

    move-result-object v6

    iput-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mIconCache:Lcom/cyanogenmod/trebuchet/IconCache;

    .line 292
    new-instance v6, Lcom/cyanogenmod/trebuchet/DragController;

    invoke-direct {v6, p0}, Lcom/cyanogenmod/trebuchet/DragController;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;)V

    iput-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    .line 293
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 295
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    iput-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 296
    new-instance v6, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;

    const/16 v7, 0x400

    invoke-direct {v6, p0, v7}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppWidgetHost:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;

    .line 297
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppWidgetHost:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;

    invoke-virtual {v6}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;->startListening()V

    .line 300
    invoke-static {p0}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen;->getShowSearchBar(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mShowSearchBar:Z

    .line 301
    invoke-static {p0}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen$Indicator;->getShowDockDivider(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mShowDockDivider:Z

    .line 302
    invoke-static {p0}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$Homescreen;->getHideIconLabels(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHideIconLabels:Z

    .line 303
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    invoke-static {p0, v6}, Lcom/cyanogenmod/trebuchet/preference/PreferencesProvider$Interface$General;->getAutoRotate(Landroid/content/Context;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAutoRotate:Z

    .line 310
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->checkForLocaleChange()V

    .line 311
    const v6, 0x7f03000e

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/trebuchet/Launcher;->setContentView(I)V

    .line 312
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->setupViews()V

    .line 313
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->showFirstRunWorkspaceCling()V

    .line 315
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->registerContentObservers()V

    .line 317
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->lockAllApps()V

    .line 319
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 320
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v6}, Lcom/cyanogenmod/trebuchet/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 323
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    if-eqz v6, :cond_0

    .line 324
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v6}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->onPackagesUpdated()V

    .line 331
    :cond_0
    iget-boolean v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mRestoring:Z

    if-nez v6, :cond_1

    .line 332
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mModel:Lcom/cyanogenmod/trebuchet/LauncherModel;

    const/4 v7, 0x1

    invoke-virtual {v6, p0, v7}, Lcom/cyanogenmod/trebuchet/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 335
    :cond_1
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mModel:Lcom/cyanogenmod/trebuchet/LauncherModel;

    invoke-virtual {v6}, Lcom/cyanogenmod/trebuchet/LauncherModel;->isAllAppsLoaded()Z

    move-result v6

    if-nez v6, :cond_2

    .line 336
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 337
    .local v1, appsCustomizeContentParent:Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030006

    invoke-virtual {v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 341
    .end local v1           #appsCustomizeContentParent:Landroid/view/ViewGroup;
    :cond_2
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 342
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 344
    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 345
    .local v3, filter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/cyanogenmod/trebuchet/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 347
    const/4 v4, 0x0

    .line 348
    .local v4, searchVisible:Z
    const/4 v5, 0x0

    .line 350
    .local v5, voiceVisible:Z
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v2

    .line 351
    .local v2, coi:I
    sget-object v6, Lcom/cyanogenmod/trebuchet/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-eqz v6, :cond_3

    sget-object v6, Lcom/cyanogenmod/trebuchet/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-eqz v6, :cond_3

    sget-object v6, Lcom/cyanogenmod/trebuchet/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-nez v6, :cond_4

    .line 353
    :cond_3
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->updateAppMarketIcon()V

    .line 354
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->updateGlobalSearchIcon()Z

    move-result v4

    .line 355
    invoke-direct {p0, v4}, Lcom/cyanogenmod/trebuchet/Launcher;->updateVoiceSearchIcon(Z)Z

    move-result v5

    .line 357
    :cond_4
    sget-object v6, Lcom/cyanogenmod/trebuchet/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-eqz v6, :cond_5

    .line 358
    sget-object v6, Lcom/cyanogenmod/trebuchet/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    invoke-direct {p0, v6}, Lcom/cyanogenmod/trebuchet/Launcher;->updateGlobalSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 359
    const/4 v4, 0x1

    .line 361
    :cond_5
    sget-object v6, Lcom/cyanogenmod/trebuchet/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-eqz v6, :cond_6

    .line 362
    sget-object v6, Lcom/cyanogenmod/trebuchet/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    invoke-direct {p0, v6}, Lcom/cyanogenmod/trebuchet/Launcher;->updateVoiceSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 363
    const/4 v5, 0x1

    .line 365
    :cond_6
    sget-object v6, Lcom/cyanogenmod/trebuchet/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-eqz v6, :cond_7

    .line 366
    sget-object v6, Lcom/cyanogenmod/trebuchet/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    invoke-direct {p0, v6}, Lcom/cyanogenmod/trebuchet/Launcher;->updateAppMarketIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 368
    :cond_7
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSearchDropTargetBar:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    invoke-virtual {v6, v4, v5}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->onSearchPackagesChanged(ZZ)V

    .line 370
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->syncOrientation()V

    .line 371
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 2147
    packed-switch p1, :pswitch_data_0

    .line 2154
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2149
    :pswitch_0
    new-instance v0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;

    invoke-direct {v0, p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/Launcher$1;)V

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2151
    :pswitch_1
    new-instance v0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;

    invoke-direct {v0, p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/Launcher$1;)V

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .parameter

    .prologue
    const v11, 0x1080049

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/high16 v9, 0x1080

    const/4 v0, 0x0

    .line 1392
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->isWorkspaceLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1443
    :goto_0
    return v0

    .line 1396
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1398
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1401
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/cyanogenmod/trebuchet/preference/Preferences;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 1402
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1404
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1405
    const/high16 v5, 0x1020

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1407
    const v5, 0x7f09003b

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/trebuchet/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1408
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1409
    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1412
    const v7, 0x7f090033

    invoke-interface {p1, v1, v10, v0, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    const v8, 0x108003f

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v7

    const/16 v8, 0x57

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1415
    const/4 v7, 0x3

    const v8, 0x7f090031

    invoke-interface {p1, v0, v7, v0, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    const v8, 0x1080042

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v7, 0x4d

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1419
    const/4 v2, 0x4

    const v7, 0x7f090032

    invoke-interface {p1, v10, v2, v0, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v7, 0x41

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v7, Lcom/cyanogenmod/trebuchet/Launcher$9;

    invoke-direct {v7, p0}, Lcom/cyanogenmod/trebuchet/Launcher$9;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;)V

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1427
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f080003

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1428
    const/4 v2, 0x5

    const v7, 0x7f090037

    invoke-interface {p1, v0, v2, v0, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x4f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1433
    :cond_1
    const/4 v2, 0x6

    const v3, 0x7f090036

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x50

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1437
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1438
    const/4 v2, 0x7

    const v3, 0x7f090038

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x1080040

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x48

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    :cond_2
    move v0, v1

    .line 1443
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1317
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1320
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1321
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1322
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1325
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/LauncherApplication;

    .line 1326
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mModel:Lcom/cyanogenmod/trebuchet/LauncherModel;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/LauncherModel;->stopLoader()V

    .line 1327
    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->setLauncher(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/LauncherModel;

    .line 1330
    :try_start_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppWidgetHost:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    :goto_0
    iput-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppWidgetHost:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;

    .line 1336
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1338
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 1341
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->unbindWorkspaceAndHotseatItems()V

    .line 1343
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1344
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1346
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1347
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->removeAllViews()V

    .line 1348
    iput-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    .line 1349
    iput-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    .line 1351
    invoke-static {}, Landroid/animation/ValueAnimator;->clearAllAnimations()V

    .line 1352
    return-void

    .line 1331
    :catch_0
    move-exception v0

    .line 1332
    const-string v1, "Launcher"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1116
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 1117
    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mVisible:Z

    .line 1118
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/DragLayer;->clearAllResizeFrames()V

    .line 1120
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1122
    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAttached:Z

    .line 1124
    :cond_0
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->updateRunning()V

    .line 1125
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 671
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    .line 672
    .local v3, uniChar:I
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 673
    .local v1, handled:Z
    if-lez v3, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    .line 674
    .local v2, isKeyNotWhitespace:Z
    :goto_0
    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->acceptFilter()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 675
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v6, v7, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 677
    .local v0, gotKey:Z
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 684
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->onSearchRequested()Z

    move-result v1

    .line 693
    .end local v0           #gotKey:Z
    .end local v1           #handled:Z
    :cond_0
    :goto_1
    return v1

    .line 673
    .end local v2           #isKeyNotWhitespace:Z
    .restart local v1       #handled:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 689
    .restart local v2       #isKeyNotWhitespace:Z
    :cond_2
    const/16 v5, 0x52

    if-ne p1, v5, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 690
    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2076
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    sget-object v6, Lcom/cyanogenmod/trebuchet/Launcher$State;->WORKSPACE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    if-eq v5, v6, :cond_1

    .line 2112
    :cond_0
    :goto_0
    return v3

    .line 2080
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->isWorkspaceLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2084
    instance-of v5, p1, Lcom/cyanogenmod/trebuchet/CellLayout;

    if-nez v5, :cond_2

    .line 2085
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 2088
    .restart local p1
    :cond_2
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->resetAddInfo()V

    .line 2089
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;

    .line 2091
    .local v2, longClickCellInfo:Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;
    if-nez v2, :cond_3

    move v3, v4

    .line 2092
    goto :goto_0

    .line 2097
    :cond_3
    iget-object v1, v2, Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2098
    .local v1, itemUnderLongClick:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/Workspace;->allowLongPress()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    move v0, v4

    .line 2099
    .local v0, allowLongPress:Z
    :goto_1
    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/DragController;->isDragging()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2100
    if-nez v1, :cond_7

    .line 2102
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v5, v3, v4}, Lcom/cyanogenmod/trebuchet/Workspace;->performHapticFeedback(II)Z

    .line 2104
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->startWallpaper()V

    :cond_5
    :goto_2
    move v3, v4

    .line 2112
    goto :goto_0

    .end local v0           #allowLongPress:Z
    :cond_6
    move v0, v3

    .line 2098
    goto :goto_1

    .line 2106
    .restart local v0       #allowLongPress:Z
    :cond_7
    instance-of v3, v1, Lcom/cyanogenmod/trebuchet/Folder;

    if-nez v3, :cond_5

    .line 2108
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v3, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->startDrag(Lcom/cyanogenmod/trebuchet/CellLayout$CellInfo;)V

    goto :goto_2
.end method

.method public onLongClickAppsTab(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1840
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1841
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1842
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->dismissAllAppsSortCling(Landroid/view/View;)V

    .line 1843
    const/high16 v2, 0x7f0d

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1844
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->getSortMode()Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    move-result-object v2

    .line 1845
    sget-object v3, Lcom/cyanogenmod/trebuchet/Launcher$23;->$SwitchMap$com$cyanogenmod$trebuchet$AppsCustomizeView$SortMode:[I

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 1854
    :goto_0
    new-instance v1, Lcom/cyanogenmod/trebuchet/Launcher$10;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/trebuchet/Launcher$10;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1868
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 1869
    return-void

    .line 1847
    :pswitch_0
    const v2, 0x7f0e003c

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1850
    :pswitch_1
    const v2, 0x7f0e003d

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1845
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/high16 v4, 0x40

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1239
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1242
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1244
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->closeSystemDialogs()V

    .line 1246
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v4

    if-eq v1, v4, :cond_3

    move v1, v0

    .line 1249
    :goto_0
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/Workspace;->getOpenFolder()Lcom/cyanogenmod/trebuchet/Folder;

    move-result-object v3

    .line 1251
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/Workspace;->exitWidgetResizeMode()V

    .line 1252
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    sget-object v5, Lcom/cyanogenmod/trebuchet/Launcher$State;->WORKSPACE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/Workspace;->isTouchActive()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 1254
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v3, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->moveToDefaultScreen(Z)V

    .line 1257
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->closeFolder()V

    .line 1258
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->exitSpringLoadedDragMode()V

    .line 1259
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->showWorkspace(Z)V

    .line 1261
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v3

    .line 1262
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1263
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1265
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1269
    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    if-eqz v0, :cond_2

    .line 1270
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->reset()V

    .line 1273
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 1246
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1464
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1470
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1466
    :pswitch_0
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->startWallpaper()V

    .line 1467
    const/4 v0, 0x1

    goto :goto_0

    .line 1464
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 627
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPaused:Z

    .line 629
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/DragController;->cancelDrag()V

    .line 630
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2159
    packed-switch p1, :pswitch_data_0

    .line 2171
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2163
    :pswitch_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mFolderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    if-eqz v0, :cond_0

    .line 2164
    const v0, 0x7f0e002e

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2165
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mFolderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-object v1, v1, Lcom/cyanogenmod/trebuchet/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 2166
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2167
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    .line 2159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1448
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1450
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->isTransitioning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    :goto_0
    return v3

    .line 1453
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 1454
    .local v0, allAppsVisible:Z
    :goto_1
    if-nez v0, :cond_3

    move v1, v2

    :goto_2
    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1455
    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    if-eqz v4, :cond_1

    move v3, v2

    :cond_1
    invoke-interface {p1, v1, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    move v3, v2

    .line 1459
    goto :goto_0

    .end local v0           #allAppsVisible:Z
    :cond_2
    move v0, v3

    .line 1453
    goto :goto_1

    .restart local v0       #allAppsVisible:Z
    :cond_3
    move v1, v3

    .line 1454
    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1279
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 578
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 579
    iput-boolean v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPaused:Z

    .line 581
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->preferencesChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 584
    :cond_0
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mRestoring:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v2, :cond_2

    .line 585
    :cond_1
    iput-boolean v4, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspaceLoading:Z

    .line 586
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mModel:Lcom/cyanogenmod/trebuchet/LauncherModel;

    invoke-virtual {v2, p0, v4}, Lcom/cyanogenmod/trebuchet/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 587
    iput-boolean v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mRestoring:Z

    .line 588
    iput-boolean v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mOnResumeNeedsLoad:Z

    .line 590
    :cond_2
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWaitingForResume:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    if-eqz v2, :cond_3

    .line 591
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWaitingForResume:Lcom/cyanogenmod/trebuchet/BubbleTextView;

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setStayPressed(Z)V

    .line 595
    :cond_3
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->updateAppMarketIcon()V

    .line 596
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->onResume()V

    .line 597
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspaceLoading:Z

    if-nez v2, :cond_4

    .line 598
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 599
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    .line 604
    .local v1, workspace:Lcom/cyanogenmod/trebuchet/Workspace;
    new-instance v2, Lcom/cyanogenmod/trebuchet/Launcher$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/cyanogenmod/trebuchet/Launcher$4;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/Workspace;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 622
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    .end local v1           #workspace:Lcom/cyanogenmod/trebuchet/Workspace;
    :cond_4
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->clearTypedText()V

    .line 623
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mModel:Lcom/cyanogenmod/trebuchet/LauncherModel;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/LauncherModel;->stopLoader()V

    .line 636
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->surrender()V

    .line 639
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    .line 1283
    const-string v2, "launcher.current_screen"

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1284
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1286
    const-string v2, "launcher.state"

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/Launcher$State;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1289
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->closeFolder()V

    .line 1291
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget-wide v2, v2, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget v2, v2, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWaitingForResult:Z

    if-eqz v2, :cond_0

    .line 1293
    const-string v2, "launcher.add_container"

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget-wide v3, v3, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1294
    const-string v2, "launcher.add_screen"

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget v3, v3, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1295
    const-string v2, "launcher.add_cell_x"

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget v3, v3, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1296
    const-string v2, "launcher.add_cell_y"

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget v3, v3, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1299
    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mFolderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWaitingForResult:Z

    if-eqz v2, :cond_1

    .line 1300
    const-string v2, "launcher.rename_folder"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1301
    const-string v2, "launcher.rename_folder_id"

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mFolderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    iget-wide v3, v3, Lcom/cyanogenmod/trebuchet/FolderInfo;->id:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1305
    :cond_1
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    if-eqz v2, :cond_3

    .line 1306
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 1307
    .local v1, currentTabTag:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1308
    const-string v2, "apps_customize_currentTab"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    :cond_2
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    invoke-interface {v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->getSaveInstanceStateIndex()I

    move-result v0

    .line 1311
    .local v0, currentIndex:I
    const-string v2, "apps_customize_currentIndex"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1313
    .end local v0           #currentIndex:I
    .end local v1           #currentTabTag:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1475
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1477
    const/high16 v0, 0x7f04

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->overridePendingTransition(II)V

    .line 1478
    return v2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1782
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->showWorkspace(Z)V

    .line 1783
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchDownAllAppsButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1822
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1823
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 2536
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 2537
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 2538
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->onTrimMemory()V

    .line 2540
    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1128
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mVisible:Z

    .line 1129
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->updateRunning()V

    .line 1130
    return-void

    .line 1128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openFolder(Lcom/cyanogenmod/trebuchet/FolderIcon;)V
    .locals 4
    .parameter

    .prologue
    .line 2033
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/FolderIcon;->mFolder:Lcom/cyanogenmod/trebuchet/Folder;

    .line 2034
    iget-object v1, v0, Lcom/cyanogenmod/trebuchet/Folder;->mInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;

    .line 2036
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->growAndFadeOutFolderIcon(Lcom/cyanogenmod/trebuchet/FolderIcon;)V

    .line 2037
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/cyanogenmod/trebuchet/FolderInfo;->opened:Z

    .line 2041
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2042
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/DragLayer;->addView(Landroid/view/View;)V

    .line 2043
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/DragController;->addDropTarget(Lcom/cyanogenmod/trebuchet/DropTarget;)V

    .line 2048
    :goto_0
    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Folder;->animateOpen()V

    .line 2049
    return-void

    .line 2045
    :cond_0
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening folder ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") which already has a parent ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public preferencesChanged()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3503
    const-string v0, "com.cyanogenmod.trebuchet_preferences"

    invoke-virtual {p0, v0, v3}, Lcom/cyanogenmod/trebuchet/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3505
    const-string v1, "preferences_changed"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3506
    if-eqz v1, :cond_0

    .line 3507
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3508
    const-string v2, "preferences_changed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3509
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3511
    :cond_0
    return v1
.end method

.method processShortcut(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 1600
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1601
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1603
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1604
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1605
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1607
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1608
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1609
    const-string v0, "android.intent.extra.TITLE"

    const v2, 0x7f090022

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1610
    const/4 v0, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1614
    :goto_0
    return-void

    .line 1612
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method processShortcutFromDrop(Landroid/content/ComponentName;JI[I[I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1559
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->resetAddInfo()V

    .line 1560
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iput-wide p2, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    .line 1561
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iput p4, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->screen:I

    .line 1562
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iput-object p6, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->dropPos:[I

    .line 1564
    if-eqz p5, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    const/4 v1, 0x0

    aget v1, p5, v1

    iput v1, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellX:I

    .line 1566
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;

    const/4 v1, 0x1

    aget v1, p5, v1

    iput v1, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->cellY:I

    .line 1569
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1571
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->processShortcut(Landroid/content/Intent;)V

    .line 1572
    return-void
.end method

.method public removeAppWidget(Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;)V
    .locals 1
    .parameter "launcherInfo"

    .prologue
    .line 1197
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    .line 1198
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1199
    return-void
.end method

.method removeFolder(Lcom/cyanogenmod/trebuchet/FolderInfo;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 1642
    sget-object v0, Lcom/cyanogenmod/trebuchet/Launcher;->sFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/cyanogenmod/trebuchet/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .locals 1
    .parameter "hostView"

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->updateRunning()V

    .line 1194
    :cond_0
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3071
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    .line 3072
    const-string v1, "Launcher"

    const-string v2, "setLoadOnResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mOnResumeNeedsLoad:Z

    .line 3076
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showAllApps(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    const/4 v2, 0x0

    .line 2583
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    sget-object v1, Lcom/cyanogenmod/trebuchet/Launcher$State;->WORKSPACE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 2601
    :goto_0
    return-void

    .line 2585
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->showAppsCustomizeHelper(ZZ)V

    .line 2586
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->requestFocus()Z

    .line 2589
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSearchDropTargetBar:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->hideSearchBar(Z)V

    .line 2592
    sget-object v0, Lcom/cyanogenmod/trebuchet/Launcher$State;->APPS_CUSTOMIZE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    .line 2595
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mUserPresent:Z

    .line 2596
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->updateRunning()V

    .line 2597
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->closeFolder()V

    .line 2600
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method showDockDivider(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 2656
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mQsbDivider:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDockDivider:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 2657
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mShowSearchBar:Z

    if-eqz v0, :cond_0

    .line 2658
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mQsbDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2660
    :cond_0
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mShowDockDivider:Z

    if-eqz v0, :cond_1

    .line 2661
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDockDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2663
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 2664
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2665
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mShowSearchBar:Z

    if-eqz v0, :cond_2

    .line 2666
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mQsbDivider:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2668
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDockDivider:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    .line 2671
    :cond_3
    if-eqz p1, :cond_5

    .line 2672
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    .line 2673
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mShowSearchBar:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mShowDockDivider:Z

    if-eqz v0, :cond_6

    .line 2674
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mQsbDivider:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDockDivider:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2681
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSearchDropTargetBar:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->getTransitionInDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2682
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2685
    :cond_5
    return-void

    .line 2676
    :cond_6
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mShowSearchBar:Z

    if-eqz v0, :cond_7

    .line 2677
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mQsbDivider:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v7, [F

    aput v6, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 2678
    :cond_7
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mShowDockDivider:Z

    if-eqz v0, :cond_4

    .line 2679
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mDockDivider:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v7, [F

    aput v6, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0
.end method

.method public showFirstRunAllAppsCling([I)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0e000d

    const/4 v2, 0x0

    .line 3448
    const-string v0, "com.cyanogenmod.trebuchet_preferences"

    invoke-virtual {p0, v0, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3450
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->isClingsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cling.allapps.dismissed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3451
    const/4 v0, 0x1

    invoke-direct {p0, v3, p1, v0, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->initCling(I[IZI)Lcom/cyanogenmod/trebuchet/Cling;

    .line 3455
    :goto_0
    return-void

    .line 3453
    :cond_0
    invoke-direct {p0, v3}, Lcom/cyanogenmod/trebuchet/Launcher;->removeCling(I)V

    goto :goto_0
.end method

.method public showFirstRunAllAppsSortCling()V
    .locals 4

    .prologue
    const v3, 0x7f0e000e

    const/4 v2, 0x0

    .line 3458
    const-string v0, "com.cyanogenmod.trebuchet_preferences"

    invoke-virtual {p0, v0, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3460
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->isClingsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cling.allappssort.dismissed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3461
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->initCling(I[IZI)Lcom/cyanogenmod/trebuchet/Cling;

    .line 3465
    :goto_0
    return-void

    .line 3463
    :cond_0
    invoke-direct {p0, v3}, Lcom/cyanogenmod/trebuchet/Launcher;->removeCling(I)V

    goto :goto_0
.end method

.method public showFirstRunFoldersCling()Lcom/cyanogenmod/trebuchet/Cling;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const v4, 0x7f0e0026

    const/4 v3, 0x0

    .line 3468
    const-string v1, "com.cyanogenmod.trebuchet_preferences"

    invoke-virtual {p0, v1, v3}, Lcom/cyanogenmod/trebuchet/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3471
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->isClingsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cling.folder.dismissed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3472
    const/4 v1, 0x1

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/cyanogenmod/trebuchet/Launcher;->initCling(I[IZI)Lcom/cyanogenmod/trebuchet/Cling;

    move-result-object v0

    .line 3476
    :goto_0
    return-object v0

    .line 3474
    :cond_0
    invoke-direct {p0, v4}, Lcom/cyanogenmod/trebuchet/Launcher;->removeCling(I)V

    goto :goto_0
.end method

.method public showFirstRunWorkspaceCling()V
    .locals 4

    .prologue
    const v3, 0x7f0e0025

    const/4 v2, 0x0

    .line 3438
    const-string v0, "com.cyanogenmod.trebuchet_preferences"

    invoke-virtual {p0, v0, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3440
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->isClingsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cling.workspace.dismissed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3441
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0, v2, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->initCling(I[IZI)Lcom/cyanogenmod/trebuchet/Cling;

    .line 3445
    :goto_0
    return-void

    .line 3443
    :cond_0
    invoke-direct {p0, v3}, Lcom/cyanogenmod/trebuchet/Launcher;->removeCling(I)V

    goto :goto_0
.end method

.method showHotseat(Z)V
    .locals 4
    .parameter "animated"

    .prologue
    const/high16 v2, 0x3f80

    .line 2703
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2704
    if-eqz p1, :cond_1

    .line 2705
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSearchDropTargetBar:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->getTransitionInDuration()I

    move-result v0

    .line 2706
    .local v0, duration:I
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHotseat:Lcom/cyanogenmod/trebuchet/Hotseat;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2711
    .end local v0           #duration:I
    :cond_0
    :goto_0
    return-void

    .line 2708
    :cond_1
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHotseat:Lcom/cyanogenmod/trebuchet/Hotseat;

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/Hotseat;->setAlpha(F)V

    goto :goto_0
.end method

.method showOutOfSpaceMessage()V
    .locals 2

    .prologue
    .line 1202
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1203
    return-void
.end method

.method showWorkspace(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2543
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2544
    const v3, 0x7f0a0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2546
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getTransitionEffect()Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    move-result-object v2

    .line 2547
    sget-object v4, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->RotateUp:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->RotateDown:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    if-ne v2, v4, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getState()Lcom/cyanogenmod/trebuchet/Workspace$State;

    move-result-object v2

    sget-object v4, Lcom/cyanogenmod/trebuchet/Workspace$State;->SMALL:Lcom/cyanogenmod/trebuchet/Workspace$State;

    if-eq v2, v4, :cond_5

    :cond_1
    move v2, v1

    .line 2550
    :goto_0
    if-eqz v2, :cond_2

    .line 2551
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    sget-object v4, Lcom/cyanogenmod/trebuchet/Workspace$State;->NORMAL:Lcom/cyanogenmod/trebuchet/Workspace$State;

    invoke-virtual {v2, v4, p1, v3}, Lcom/cyanogenmod/trebuchet/Workspace;->changeState(Lcom/cyanogenmod/trebuchet/Workspace$State;ZI)V

    .line 2554
    :cond_2
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    sget-object v3, Lcom/cyanogenmod/trebuchet/Launcher$State;->WORKSPACE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    if-eq v2, v3, :cond_4

    .line 2555
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v2, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->setVisibility(I)V

    .line 2556
    invoke-direct {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->hideAppsCustomizeHelper(ZZ)V

    .line 2559
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSearchDropTargetBar:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    invoke-virtual {v2, p1}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->showSearchBar(Z)V

    .line 2561
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    sget-object v3, Lcom/cyanogenmod/trebuchet/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/cyanogenmod/trebuchet/Launcher$State;

    if-ne v2, v3, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->showDockDivider(Z)V

    .line 2564
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2565
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mAllAppsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2569
    :cond_4
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/Workspace;->flashScrollingIndicator(Z)V

    .line 2572
    sget-object v0, Lcom/cyanogenmod/trebuchet/Launcher$State;->WORKSPACE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mState:Lcom/cyanogenmod/trebuchet/Launcher$State;

    .line 2575
    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mUserPresent:Z

    .line 2576
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->updateRunning()V

    .line 2579
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2580
    return-void

    :cond_5
    move v2, v0

    .line 2547
    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1360
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWaitingForResult:Z

    .line 1361
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1362
    return-void
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v2, 0x7f09000a

    const/4 v1, 0x0

    .line 1936
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/Launcher;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1945
    :goto_0
    return-void

    .line 1937
    :catch_0
    move-exception v0

    .line 1938
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1939
    :catch_1
    move-exception v0

    .line 1940
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1941
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const v2, 0x7f09000a

    const/4 v0, 0x0

    .line 1917
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1919
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1920
    const/4 v0, 0x1

    .line 1931
    :goto_0
    return v0

    .line 1921
    :catch_0
    move-exception v1

    .line 1922
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1923
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch. tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1924
    :catch_1
    move-exception v1

    .line 1925
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1926
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher does not have the permission to launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "or use the exported attribute for this activity. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startApplicationDetailsActivity(Landroid/content/ComponentName;)V
    .locals 5
    .parameter

    .prologue
    .line 1872
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1873
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1875
    const/high16 v0, 0x1080

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1876
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1877
    return-void
.end method

.method startApplicationUninstallActivity(Lcom/cyanogenmod/trebuchet/ApplicationInfo;)V
    .locals 5
    .parameter

    .prologue
    .line 1880
    iget v0, p1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1883
    const v0, 0x7f09004b

    .line 1884
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1894
    :goto_0
    return-void

    .line 1886
    :cond_0
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1887
    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1888
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    const-string v4, "package"

    invoke-static {v4, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1890
    const/high16 v0, 0x1080

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1892
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startBinding()V
    .locals 5

    .prologue
    .line 3098
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    .line 3100
    .local v3, workspace:Lcom/cyanogenmod/trebuchet/Workspace;
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/Workspace;->clearDropTargets()V

    .line 3101
    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v0

    .line 3102
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3104
    invoke-virtual {v3, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 3105
    .local v2, layoutParent:Lcom/cyanogenmod/trebuchet/CellLayout;
    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->removeAllViewsInLayout()V

    .line 3102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3107
    .end local v2           #layoutParent:Lcom/cyanogenmod/trebuchet/CellLayout;
    :cond_0
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 3108
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHotseat:Lcom/cyanogenmod/trebuchet/Hotseat;

    if-eqz v4, :cond_1

    .line 3109
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHotseat:Lcom/cyanogenmod/trebuchet/Hotseat;

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/Hotseat;->resetLayout()V

    .line 3111
    :cond_1
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1372
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->showWorkspace(Z)V

    .line 1374
    if-nez p1, :cond_1

    .line 1376
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object v1

    .line 1378
    :goto_0
    if-nez p3, :cond_0

    .line 1379
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1380
    const-string v0, "source"

    const-string v2, "launcher-search"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    :goto_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mSearchDropTargetBar:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->getSearchBarBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 1384
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1386
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/graphics/Rect;)V

    .line 1388
    return-void

    :cond_0
    move-object v4, p3

    goto :goto_1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method startShortcutUninstallActivity(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1897
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1898
    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1899
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1903
    const v0, 0x7f09004b

    .line 1904
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1914
    :goto_0
    return-void

    .line 1906
    :cond_0
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1907
    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1908
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    const-string v4, "package"

    invoke-static {v4, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1910
    const/high16 v0, 0x1080

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1912
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public unlockScreenOrientationOnLargeUI()V
    .locals 4

    .prologue
    .line 3368
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3369
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cyanogenmod/trebuchet/Launcher$20;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/trebuchet/Launcher$20;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3375
    :cond_0
    return-void
.end method

.method updateWallpaperVisibility(Z)V
    .locals 3
    .parameter

    .prologue
    const/high16 v1, 0x10

    .line 2286
    if-eqz p1, :cond_1

    move v0, v1

    .line 2287
    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v1

    .line 2289
    if-eq v0, v2, :cond_0

    .line 2290
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 2292
    :cond_0
    return-void

    .line 2286
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
