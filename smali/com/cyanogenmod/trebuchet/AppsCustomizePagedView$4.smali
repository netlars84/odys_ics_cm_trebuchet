.class Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->onTabChanged(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

.field final synthetic val$duration:I

.field final synthetic val$type:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->val$type:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    iput p3, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 856
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    invoke-virtual {v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v10

    if-lez v10, :cond_0

    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    invoke-virtual {v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v10

    if-gtz v10, :cond_1

    .line 858
    :cond_0
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    invoke-virtual {v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->reloadCurrentPage()V

    .line 936
    :goto_0
    return-void

    .line 864
    :cond_1
    const/4 v10, 0x2

    new-array v8, v10, [I

    .line 865
    .local v8, visiblePageRange:[I
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    invoke-virtual {v10, v8}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getVisiblePages([I)V

    .line 866
    const/4 v10, 0x0

    aget v10, v8, v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    aget v10, v8, v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 868
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    invoke-virtual {v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->reloadCurrentPage()V

    goto :goto_0

    .line 871
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .local v9, visiblePages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v10, 0x0

    aget v3, v8, v10

    .local v3, i:I
    :goto_1
    const/4 v10, 0x1

    aget v10, v8, v10

    if-gt v3, v10, :cond_3

    .line 873
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    invoke-virtual {v10, v3}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 876
    :cond_3
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    #calls: Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getTabHost()Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;
    invoke-static {v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->access$100(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;)Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    move-result-object v10

    const v11, 0x7f0e000b

    invoke-virtual {v10, v11}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 878
    .local v1, animationBuffer:Landroid/widget/FrameLayout;
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    #calls: Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getTabHost()Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;
    invoke-static {v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->access$100(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;)Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;

    move-result-object v10

    const v11, 0x7f0e000a

    invoke-virtual {v10, v11}, Lcom/cyanogenmod/trebuchet/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    .line 885
    .local v7, self:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    invoke-virtual {v10}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->getScrollX()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 889
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    :goto_2
    if-ltz v3, :cond_6

    .line 890
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 891
    .local v2, child:Landroid/view/View;
    instance-of v10, v2, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    if-eqz v10, :cond_5

    move-object v10, v2

    .line 892
    check-cast v10, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-virtual {v10}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->resetChildrenOnKeyListeners()V

    .line 896
    :cond_4
    :goto_3
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->setDeletePreviewsWhenDetachedFromWindow(Z)V

    .line 897
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    invoke-virtual {v10, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->removeView(Landroid/view/View;)V

    .line 898
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/cyanogenmod/trebuchet/PagedViewWidget;->setDeletePreviewsWhenDetachedFromWindow(Z)V

    .line 899
    const/high16 v10, 0x3f80

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 900
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 901
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-direct {v6, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 903
    .local v6, p:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 904
    invoke-virtual {v1, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 893
    .end local v6           #p:Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    instance-of v10, v2, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;

    if-eqz v10, :cond_4

    move-object v10, v2

    .line 894
    check-cast v10, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;

    invoke-virtual {v10}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->resetChildrenOnKeyListeners()V

    goto :goto_3

    .line 908
    .end local v2           #child:Landroid/view/View;
    :cond_6
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->hideScrollingIndicator(Z)V

    .line 909
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    iget-object v11, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->val$type:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    invoke-virtual {v10, v11}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->setContentType(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)V

    .line 912
    const-string v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {v1, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 913
    .local v5, outAnim:Landroid/animation/ObjectAnimator;
    new-instance v10, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4$1;

    invoke-direct {v10, p0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4$1;-><init>(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;Landroid/widget/FrameLayout;)V

    invoke-virtual {v5, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 925
    const-string v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    aput v13, v11, v12

    invoke-static {v7, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 926
    .local v4, inAnim:Landroid/animation/ObjectAnimator;
    new-instance v10, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4$2;

    invoke-direct {v10, p0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4$2;-><init>(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;)V

    invoke-virtual {v4, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 932
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 933
    .local v0, animSet:Landroid/animation/AnimatorSet;
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 934
    iget v10, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->val$duration:I

    int-to-long v10, v10

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 935
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method
