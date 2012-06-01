.class Lcom/cyanogenmod/trebuchet/Launcher$6;
.super Ljava/lang/Thread;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Launcher;->completeAddAppWidget(IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Launcher;

.field final synthetic val$appWidgetId:I


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$6;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    iput p3, p0, Lcom/cyanogenmod/trebuchet/Launcher$6;->val$appWidgetId:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$6;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mAppWidgetHost:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->access$900(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;

    move-result-object v0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$6;->val$appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 1049
    return-void
.end method
