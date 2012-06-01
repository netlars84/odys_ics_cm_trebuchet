.class Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$5;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Lcom/cyanogenmod/trebuchet/AsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

.field final synthetic val$sleepMs:I


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$5;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    iput p2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$5;->val$sleepMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;)V
    .locals 3
    .parameter "task"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 1073
    :try_start_0
    iget v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$5;->val$sleepMs:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$5;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    #calls: Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->loadWidgetPreviewsInBackground(Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;)V
    invoke-static {v0, p1, p2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->access$200(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1077
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {p2, v2}, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->cleanup(Z)V

    .line 1081
    :cond_0
    return-void

    .line 1077
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1078
    invoke-virtual {p2, v2}, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->cleanup(Z)V

    :cond_1
    throw v0

    .line 1074
    :catch_0
    move-exception v0

    goto :goto_0
.end method
