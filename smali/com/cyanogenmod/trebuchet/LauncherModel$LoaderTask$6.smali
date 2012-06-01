.class Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$6;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->bindWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

.field final synthetic val$oldCallbacks:Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;

.field final synthetic val$widget:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$6;->this$1:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$6;->val$oldCallbacks:Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$6;->val$widget:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1278
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$6;->this$1:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$6;->val$oldCallbacks:Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;)Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;

    move-result-object v0

    .line 1279
    .local v0, callbacks:Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1280
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$6;->val$widget:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;

    invoke-interface {v0, v1}, Lcom/cyanogenmod/trebuchet/LauncherModel$Callbacks;->bindAppWidget(Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;)V

    .line 1282
    :cond_0
    return-void
.end method
