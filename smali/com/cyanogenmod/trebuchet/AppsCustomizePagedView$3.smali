.class Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$3;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

.field final synthetic val$appInfo:Lcom/cyanogenmod/trebuchet/ApplicationInfo;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;Lcom/cyanogenmod/trebuchet/ApplicationInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$3;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$3;->val$appInfo:Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 588
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$3;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    #getter for: Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->access$000(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;)Lcom/cyanogenmod/trebuchet/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$3;->val$appInfo:Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    iget-object v1, v1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$3;->val$appInfo:Lcom/cyanogenmod/trebuchet/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 589
    return-void
.end method
