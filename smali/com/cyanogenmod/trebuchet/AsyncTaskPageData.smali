.class Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/AsyncTaskPageData$Type;
    }
.end annotation


# instance fields
.field doInBackgroundCallback:Lcom/cyanogenmod/trebuchet/AsyncTaskCallback;

.field generatedImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field maxImageHeight:I

.field maxImageWidth:I

.field page:I

.field postExecuteCallback:Lcom/cyanogenmod/trebuchet/AsyncTaskCallback;

.field sourceImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/ArrayList;IILcom/cyanogenmod/trebuchet/AsyncTaskCallback;Lcom/cyanogenmod/trebuchet/AsyncTaskCallback;)V
    .locals 1
    .parameter "p"
    .parameter
    .parameter "cw"
    .parameter "ch"
    .parameter "bgR"
    .parameter "postR"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;II",
            "Lcom/cyanogenmod/trebuchet/AsyncTaskCallback;",
            "Lcom/cyanogenmod/trebuchet/AsyncTaskCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->page:I

    .line 101
    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 103
    iput p3, p0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->maxImageWidth:I

    .line 104
    iput p4, p0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->maxImageHeight:I

    .line 105
    iput-object p5, p0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->doInBackgroundCallback:Lcom/cyanogenmod/trebuchet/AsyncTaskCallback;

    .line 106
    iput-object p6, p0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->postExecuteCallback:Lcom/cyanogenmod/trebuchet/AsyncTaskCallback;

    .line 107
    return-void
.end method


# virtual methods
.method cleanup(Z)V
    .locals 3
    .parameter "cancelled"

    .prologue
    .line 110
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->sourceImages:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 111
    if-eqz p1, :cond_0

    .line 112
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->sourceImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 113
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 116
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->sourceImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 119
    if-eqz p1, :cond_2

    .line 120
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 121
    .restart local v0       #b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 124
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 126
    :cond_3
    return-void
.end method
