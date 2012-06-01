.class Lcom/cyanogenmod/trebuchet/PagedViewWidgetImageView;
.super Landroid/widget/ImageView;
.source "PagedViewWidgetImageView.java"


# instance fields
.field public mAllowRequestLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    .line 30
    return-void
.end method


# virtual methods
.method public requestLayout()V
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-super {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 36
    :cond_0
    return-void
.end method
