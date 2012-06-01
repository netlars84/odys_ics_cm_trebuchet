.class Lcom/cyanogenmod/trebuchet/Launcher$7;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Launcher;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$7;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 1081
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1082
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1083
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$7;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #setter for: Lcom/cyanogenmod/trebuchet/Launcher;->mUserPresent:Z
    invoke-static {v1, v5}, Lcom/cyanogenmod/trebuchet/Launcher;->access$1002(Lcom/cyanogenmod/trebuchet/Launcher;Z)Z

    .line 1084
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$7;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mDragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->access$1100(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/DragLayer;->clearAllResizeFrames()V

    .line 1085
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$7;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #calls: Lcom/cyanogenmod/trebuchet/Launcher;->updateRunning()V
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->access$1200(Lcom/cyanogenmod/trebuchet/Launcher;)V

    .line 1089
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$7;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->access$1300(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$7;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mPendingAddInfo:Lcom/cyanogenmod/trebuchet/ItemInfo;
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->access$1400(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1090
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$7;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeTabHost:Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->access$1300(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->reset()V

    .line 1091
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$7;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v1, v5}, Lcom/cyanogenmod/trebuchet/Launcher;->showWorkspace(Z)V

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1093
    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1094
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$7;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v2, 0x1

    #setter for: Lcom/cyanogenmod/trebuchet/Launcher;->mUserPresent:Z
    invoke-static {v1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->access$1002(Lcom/cyanogenmod/trebuchet/Launcher;Z)Z

    .line 1095
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$7;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #calls: Lcom/cyanogenmod/trebuchet/Launcher;->updateRunning()V
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/Launcher;->access$1200(Lcom/cyanogenmod/trebuchet/Launcher;)V

    goto :goto_0
.end method
