.class Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateShortcut"
.end annotation


# instance fields
.field private mAdapter:Lcom/cyanogenmod/trebuchet/AddAdapter;

.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Launcher;


# direct methods
.method private constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 2959
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2959
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;)V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 2992
    :try_start_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2996
    :goto_0
    return-void

    .line 2993
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 2966
    new-instance v2, Lcom/cyanogenmod/trebuchet/AddAdapter;

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-direct {v2, v3}, Lcom/cyanogenmod/trebuchet/AddAdapter;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;)V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->mAdapter:Lcom/cyanogenmod/trebuchet/AddAdapter;

    .line 2968
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2970
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->mAdapter:Lcom/cyanogenmod/trebuchet/AddAdapter;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2972
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2973
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2974
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2975
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2977
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2981
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/cyanogenmod/trebuchet/Launcher;->mWaitingForResult:Z
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2202(Lcom/cyanogenmod/trebuchet/Launcher;Z)Z

    .line 2982
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->cleanup()V

    .line 2983
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 3002
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->cleanup()V

    .line 3004
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->mAdapter:Lcom/cyanogenmod/trebuchet/AddAdapter;

    invoke-virtual {v1, p2}, Lcom/cyanogenmod/trebuchet/AddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/AddAdapter$ListItem;

    .line 3005
    .local v0, item:Lcom/cyanogenmod/trebuchet/AddAdapter$ListItem;
    iget v1, v0, Lcom/cyanogenmod/trebuchet/AddAdapter$ListItem;->actionTag:I

    packed-switch v1, :pswitch_data_0

    .line 3025
    :goto_0
    return-void

    .line 3007
    :pswitch_0
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->access$1300(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3008
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->access$1300(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->selectAppsTab()V

    .line 3010
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->showAllApps(Z)V

    goto :goto_0

    .line 3014
    :pswitch_1
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->access$1300(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3015
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->access$1300(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->selectWidgetsTab()V

    .line 3017
    :cond_1
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->showAllApps(Z)V

    goto :goto_0

    .line 3021
    :pswitch_2
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #calls: Lcom/cyanogenmod/trebuchet/Launcher;->startWallpaper()V
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2900(Lcom/cyanogenmod/trebuchet/Launcher;)V

    goto :goto_0

    .line 3005
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2986
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/cyanogenmod/trebuchet/Launcher;->mWaitingForResult:Z
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2202(Lcom/cyanogenmod/trebuchet/Launcher;Z)Z

    .line 2987
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->cleanup()V

    .line 2988
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 3028
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$CreateShortcut;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v1, 0x1

    #setter for: Lcom/cyanogenmod/trebuchet/Launcher;->mWaitingForResult:Z
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2202(Lcom/cyanogenmod/trebuchet/Launcher;Z)Z

    .line 3029
    return-void
.end method
