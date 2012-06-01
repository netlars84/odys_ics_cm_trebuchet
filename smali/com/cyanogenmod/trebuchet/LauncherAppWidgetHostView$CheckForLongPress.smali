.class Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalWindowAttachCount:I

.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;

    #calls: Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->access$300(Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;)I

    move-result v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;->mOriginalWindowAttachCount:I

    .line 88
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mParent:Landroid/view/ViewParent;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->access$000(Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;->mOriginalWindowAttachCount:I

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;

    #calls: Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->getWindowAttachCount()I
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->access$100(Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;

    #getter for: Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->access$200(Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;

    const/4 v1, 0x1

    #setter for: Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;->access$202(Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHostView;Z)Z

    .line 84
    :cond_0
    return-void
.end method
