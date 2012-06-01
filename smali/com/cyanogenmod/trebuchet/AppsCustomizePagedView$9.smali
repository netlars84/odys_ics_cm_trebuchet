.class Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->syncWidgetPageItems(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

.field final synthetic val$cellHeight:I

.field final synthetic val$cellWidth:I

.field final synthetic val$immediate:Z

.field final synthetic val$items:Ljava/util/ArrayList;

.field final synthetic val$layout:Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;IILcom/cyanogenmod/trebuchet/PagedViewGridLayout;ZILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    iput p2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->val$cellWidth:I

    iput p3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->val$cellHeight:I

    iput-object p4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->val$layout:Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;

    iput-boolean p5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->val$immediate:Z

    iput p6, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->val$page:I

    iput-object p7, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1401
    iget v3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->val$cellWidth:I

    .line 1402
    .local v3, maxPreviewWidth:I
    iget v4, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->val$cellHeight:I

    .line 1403
    .local v4, maxPreviewHeight:I
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->val$layout:Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;

    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1404
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->val$layout:Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/cyanogenmod/trebuchet/PagedViewWidget;

    .line 1405
    .local v8, w:Lcom/cyanogenmod/trebuchet/PagedViewWidget;
    invoke-virtual {v8}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->getPreviewSize()[I

    move-result-object v7

    .line 1406
    .local v7, maxSize:[I
    aget v3, v7, v2

    .line 1407
    const/4 v1, 0x1

    aget v4, v7, v1

    .line 1409
    .end local v7           #maxSize:[I
    .end local v8           #w:Lcom/cyanogenmod/trebuchet/PagedViewWidget;
    :cond_0
    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->val$immediate:Z

    if-eqz v1, :cond_1

    .line 1410
    new-instance v0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;

    iget v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->val$page:I

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->val$items:Ljava/util/ArrayList;

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;-><init>(ILjava/util/ArrayList;IILcom/cyanogenmod/trebuchet/AsyncTaskCallback;Lcom/cyanogenmod/trebuchet/AsyncTaskCallback;)V

    .line 1412
    .local v0, data:Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    #calls: Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->loadWidgetPreviewsInBackground(Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;)V
    invoke-static {v1, v5, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->access$200(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;Lcom/cyanogenmod/trebuchet/AppsCustomizeAsyncTask;Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;)V

    .line 1413
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    #calls: Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->onSyncWidgetPageItems(Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;)V
    invoke-static {v1, v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->access$500(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;)V

    .line 1418
    .end local v0           #data:Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;
    :goto_0
    return-void

    .line 1415
    :cond_1
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    iget v2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->val$page:I

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$9;->val$items:Ljava/util/ArrayList;

    #calls: Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;II)V
    invoke-static {v1, v2, v5, v3, v4}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->access$700(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;ILjava/util/ArrayList;II)V

    goto :goto_0
.end method
