.class Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameFolder"
.end annotation


# instance fields
.field private mInput:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Launcher;


# direct methods
.method private constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 2187
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2187
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2187
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->cleanup()V

    return-void
.end method

.method static synthetic access$2100(Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2187
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->changeFolderName()V

    return-void
.end method

.method static synthetic access$2300(Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->mInput:Landroid/widget/EditText;

    return-object v0
.end method

.method private changeFolderName()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2234
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->mInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2235
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2237
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-static {}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2500()Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mFolderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    invoke-static {v4}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2400(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/FolderInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/cyanogenmod/trebuchet/FolderInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/trebuchet/FolderInfo;

    #setter for: Lcom/cyanogenmod/trebuchet/Launcher;->mFolderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    invoke-static {v3, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2402(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/FolderInfo;)Lcom/cyanogenmod/trebuchet/FolderInfo;

    .line 2238
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mFolderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2400(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/FolderInfo;

    move-result-object v2

    iput-object v1, v2, Lcom/cyanogenmod/trebuchet/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 2239
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mFolderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2400(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/FolderInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyanogenmod/trebuchet/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;)V

    .line 2241
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspaceLoading:Z
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2600(Lcom/cyanogenmod/trebuchet/Launcher;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2242
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->lockAllApps()V

    .line 2243
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mModel:Lcom/cyanogenmod/trebuchet/LauncherModel;
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2700(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/LauncherModel;

    move-result-object v2

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2, v3, v6}, Lcom/cyanogenmod/trebuchet/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 2259
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->cleanup()V

    .line 2260
    return-void

    .line 2245
    :cond_1
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspace:Lcom/cyanogenmod/trebuchet/Workspace;
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->access$100(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v2

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mFolderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2400(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/FolderInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/trebuchet/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/FolderIcon;

    .line 2247
    .local v0, folderIcon:Lcom/cyanogenmod/trebuchet/FolderIcon;
    if-eqz v0, :cond_2

    .line 2251
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->requestLayout()V

    goto :goto_0

    .line 2253
    :cond_2
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->lockAllApps()V

    .line 2254
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v3, 0x1

    #setter for: Lcom/cyanogenmod/trebuchet/Launcher;->mWorkspaceLoading:Z
    invoke-static {v2, v3}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2602(Lcom/cyanogenmod/trebuchet/Launcher;Z)Z

    .line 2255
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mModel:Lcom/cyanogenmod/trebuchet/LauncherModel;
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2700(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/LauncherModel;

    move-result-object v2

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2, v3, v6}, Lcom/cyanogenmod/trebuchet/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->dismissDialog(I)V

    .line 2264
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/cyanogenmod/trebuchet/Launcher;->mWaitingForResult:Z
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2202(Lcom/cyanogenmod/trebuchet/Launcher;Z)Z

    .line 2265
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/cyanogenmod/trebuchet/Launcher;->mFolderInfo:Lcom/cyanogenmod/trebuchet/FolderInfo;
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2402(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/FolderInfo;)Lcom/cyanogenmod/trebuchet/FolderInfo;

    .line 2266
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 2191
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const v4, 0x7f030013

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2192
    .local v2, layout:Landroid/view/View;
    const v3, 0x7f0e002e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->mInput:Landroid/widget/EditText;

    .line 2194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2195
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2196
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const v4, 0x7f090014

    invoke-virtual {v3, v4}, Lcom/cyanogenmod/trebuchet/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2197
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2198
    new-instance v3, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder$1;

    invoke-direct {v3, p0}, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder$1;-><init>(Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2203
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const v4, 0x7f090016

    invoke-virtual {v3, v4}, Lcom/cyanogenmod/trebuchet/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder$2;

    invoke-direct {v4, p0}, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder$2;-><init>(Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2210
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const v4, 0x7f090015

    invoke-virtual {v3, v4}, Lcom/cyanogenmod/trebuchet/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder$3;

    invoke-direct {v4, p0}, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder$3;-><init>(Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2217
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2219
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2220
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v3, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder$4;

    invoke-direct {v3, p0}, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder$4;-><init>(Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2230
    return-object v1
.end method
