.class final Lcom/cyanogenmod/trebuchet/FocusHelper$1;
.super Ljava/lang/Object;
.source "FocusHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cellCountX:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 580
    iput p1, p0, Lcom/cyanogenmod/trebuchet/FocusHelper$1;->val$cellCountX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 6
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 583
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 584
    .local v0, llp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 585
    .local v2, rlp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    iget v4, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    iget v5, p0, Lcom/cyanogenmod/trebuchet/FocusHelper$1;->val$cellCountX:I

    mul-int/2addr v4, v5

    iget v5, v0, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    add-int v1, v4, v5

    .line 586
    .local v1, lvIndex:I
    iget v4, v2, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    iget v5, p0, Lcom/cyanogenmod/trebuchet/FocusHelper$1;->val$cellCountX:I

    mul-int/2addr v4, v5

    iget v5, v2, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    add-int v3, v4, v5

    .line 587
    .local v3, rvIndex:I
    sub-int v4, v1, v3

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 580
    check-cast p1, Landroid/view/View;

    .end local p1
    check-cast p2, Landroid/view/View;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/FocusHelper$1;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
