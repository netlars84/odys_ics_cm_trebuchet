.class Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;)V
    .locals 0
    .parameter

    .prologue
    .line 926
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4$2;->this$1:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 929
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4$2;->this$1:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$4;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->reloadCurrentPage()V

    .line 930
    return-void
.end method
