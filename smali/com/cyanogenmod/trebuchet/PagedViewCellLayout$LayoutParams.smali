.class public Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "PagedViewCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 428
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 429
    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 430
    iput v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 431
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"

    .prologue
    const/4 v0, -0x1

    .line 454
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 455
    iput p1, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 456
    iput p2, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 457
    iput p3, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 458
    iput p4, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 459
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 434
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 435
    iput v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 436
    iput v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 437
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 440
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    iput v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 442
    iput v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 443
    return-void
.end method


# virtual methods
.method public setup(IIIIII)V
    .locals 6
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "widthGap"
    .parameter "heightGap"
    .parameter "hStartPadding"
    .parameter "vStartPadding"

    .prologue
    .line 464
    iget v0, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 465
    .local v0, myCellHSpan:I
    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 466
    .local v1, myCellVSpan:I
    iget v2, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 467
    .local v2, myCellX:I
    iget v3, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 469
    .local v3, myCellY:I
    mul-int v4, v0, p1

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->width:I

    .line 471
    mul-int v4, v1, p2

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->height:I

    .line 474
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 475
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    add-int/2addr v4, p5

    iget v5, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->x:I

    .line 476
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    add-int/2addr v4, p6

    iget v5, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->y:I

    .line 481
    :goto_0
    return-void

    .line 478
    :cond_0
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->x:I

    .line 479
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    iget v5, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->y:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
