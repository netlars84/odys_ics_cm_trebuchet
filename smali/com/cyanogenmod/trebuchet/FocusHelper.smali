.class public Lcom/cyanogenmod/trebuchet/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "i"
    .parameter "delta"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 600
    .local p0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 601
    .local v0, count:I
    add-int v1, p1, p2

    .line 602
    .local v1, newI:I
    :goto_0
    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 603
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 604
    .local v2, newV:Landroid/view/View;
    instance-of v3, v2, Lcom/cyanogenmod/trebuchet/BubbleTextView;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/cyanogenmod/trebuchet/FolderIcon;

    if-eqz v3, :cond_1

    .line 609
    .end local v2           #newV:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v2

    .line 607
    .restart local v2       #newV:Landroid/view/View;
    :cond_1
    add-int/2addr v1, p2

    .line 608
    goto :goto_0

    .line 609
    .end local v2           #newV:Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;
    .locals 2
    .parameter "v"

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 75
    .local v0, p:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TabHost;

    if-nez v1, :cond_0

    .line 76
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_0
    check-cast v0, Landroid/widget/TabHost;

    .end local v0           #p:Landroid/view/ViewParent;
    return-object v0
.end method

.method private static getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .locals 2
    .parameter "container"
    .parameter "index"

    .prologue
    .line 126
    check-cast p0, Lcom/cyanogenmod/trebuchet/PagedView;

    .end local p0
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 127
    .local v0, page:Landroid/view/ViewGroup;
    instance-of v1, v0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #page:Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 131
    .restart local v0       #page:Landroid/view/ViewGroup;
    :cond_0
    return-object v0
.end method

.method private static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    .locals 2
    .parameter "container"
    .parameter "i"

    .prologue
    .line 563
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 564
    .local v0, parent:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    return-object v1
.end method

.method private static getCellLayoutChildrenSortedSpatially(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 5
    .parameter "layout"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cyanogenmod/trebuchet/CellLayout;",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getCountX()I

    move-result v0

    .line 575
    .local v0, cellCountX:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 576
    .local v1, count:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v3, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 578
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 580
    :cond_0
    new-instance v4, Lcom/cyanogenmod/trebuchet/FocusHelper$1;

    invoke-direct {v4, v0}, Lcom/cyanogenmod/trebuchet/FocusHelper$1;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 590
    return-object v3
.end method

.method private static getClosestIconOnLine(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 22
    .parameter "layout"
    .parameter "parent"
    .parameter "v"
    .parameter "lineDelta"

    .prologue
    .line 629
    invoke-static/range {p0 .. p1}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v15

    .line 630
    .local v15, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 631
    .local v8, lp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getCountX()I

    move-result v2

    .line 632
    .local v2, cellCountX:I
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getCountY()I

    move-result v3

    .line 633
    .local v3, cellCountY:I
    iget v11, v8, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    .line 634
    .local v11, row:I
    add-int v9, v11, p3

    .line 635
    .local v9, newRow:I
    if-ltz v9, :cond_8

    if-ge v9, v3, :cond_8

    .line 636
    const v4, 0x7f7fffff

    .line 637
    .local v4, closestDistance:F
    const/4 v5, -0x1

    .line 638
    .local v5, closestIndex:I
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 639
    .local v7, index:I
    if-gez p3, :cond_2

    const/4 v6, -0x1

    .line 640
    .local v6, endIndex:I
    :goto_0
    if-eq v7, v6, :cond_7

    .line 641
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 642
    .local v10, newV:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    .line 643
    .local v14, tmpLp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    if-gez p3, :cond_4

    iget v0, v14, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v0, v11, :cond_3

    const/4 v12, 0x1

    .line 644
    .local v12, satisfiesRow:Z
    :goto_1
    if-eqz v12, :cond_1

    instance-of v0, v10, Lcom/cyanogenmod/trebuchet/BubbleTextView;

    move/from16 v16, v0

    if-nez v16, :cond_0

    instance-of v0, v10, Lcom/cyanogenmod/trebuchet/FolderIcon;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 646
    :cond_0
    iget v0, v14, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    move/from16 v16, v0

    iget v0, v8, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellX:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    iget v0, v14, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    iget v0, v8, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v13, v0

    .line 648
    .local v13, tmpDistance:F
    cmpg-float v16, v13, v4

    if-gez v16, :cond_1

    .line 649
    move v5, v7

    .line 650
    move v4, v13

    .line 653
    .end local v13           #tmpDistance:F
    :cond_1
    if-gt v7, v6, :cond_6

    .line 654
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 639
    .end local v6           #endIndex:I
    .end local v10           #newV:Landroid/view/View;
    .end local v12           #satisfiesRow:Z
    .end local v14           #tmpLp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    :cond_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_0

    .line 643
    .restart local v6       #endIndex:I
    .restart local v10       #newV:Landroid/view/View;
    .restart local v14       #tmpLp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    iget v0, v14, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;->cellY:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v0, v11, :cond_5

    const/4 v12, 0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 656
    .restart local v12       #satisfiesRow:Z
    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 659
    .end local v10           #newV:Landroid/view/View;
    .end local v12           #satisfiesRow:Z
    .end local v14           #tmpLp:Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;
    :cond_7
    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v5, v0, :cond_8

    .line 660
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    .line 663
    .end local v4           #closestDistance:F
    .end local v5           #closestIndex:I
    .end local v6           #endIndex:I
    .end local v7           #index:I
    :goto_2
    return-object v16

    :cond_8
    const/16 v16, 0x0

    goto :goto_2
.end method

.method private static getIconInDirection(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 2
    .parameter "layout"
    .parameter "parent"
    .parameter "i"
    .parameter "delta"

    .prologue
    .line 613
    invoke-static {p0, p1}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 614
    .local v0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, p2, p3}, Lcom/cyanogenmod/trebuchet/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static getIconInDirection(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .parameter "layout"
    .parameter "parent"
    .parameter "v"
    .parameter "delta"

    .prologue
    .line 618
    invoke-static {p0, p1}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 619
    .local v0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/cyanogenmod/trebuchet/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method static handleAppsCustomizeKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 24
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 288
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/cyanogenmod/trebuchet/PagedViewCellLayoutChildren;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 290
    .local v10, itemContainer:Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .local v16, parentLayout:Landroid/view/ViewGroup;
    move-object/from16 v22, v16

    .line 291
    check-cast v22, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->getCellCountX()I

    move-result v6

    .local v6, countX:I
    move-object/from16 v22, v16

    .line 292
    check-cast v22, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/cyanogenmod/trebuchet/PagedViewCellLayout;->getCellCountY()I

    move-result v7

    .line 301
    .local v7, countY:I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/cyanogenmod/trebuchet/PagedView;

    .line 302
    .local v5, container:Lcom/cyanogenmod/trebuchet/PagedView;
    invoke-static {v5}, Lcom/cyanogenmod/trebuchet/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v17

    .line 303
    .local v17, tabHost:Landroid/widget/TabHost;
    const v22, 0x1020013

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TabWidget;

    .line 304
    .local v18, tabs:Landroid/widget/TabWidget;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 305
    .local v9, iconIndex:I
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 306
    .local v11, itemCount:I
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->indexToPage(I)I

    move-result v15

    .line 307
    .local v15, pageIndex:I
    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/PagedView;->getChildCount()I

    move-result v14

    .line 309
    .local v14, pageCount:I
    rem-int v20, v9, v6

    .line 310
    .local v20, x:I
    div-int v21, v9, v6

    .line 312
    .local v21, y:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 313
    .local v2, action:I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_1

    const/4 v8, 0x1

    .line 318
    .local v8, handleKeyEvent:Z
    :goto_1
    const/16 v19, 0x0

    .line 319
    .local v19, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 437
    :goto_2
    return v19

    .line 294
    .end local v2           #action:I
    .end local v5           #container:Lcom/cyanogenmod/trebuchet/PagedView;
    .end local v6           #countX:I
    .end local v7           #countY:I
    .end local v8           #handleKeyEvent:Z
    .end local v9           #iconIndex:I
    .end local v10           #itemContainer:Landroid/view/ViewGroup;
    .end local v11           #itemCount:I
    .end local v14           #pageCount:I
    .end local v15           #pageIndex:I
    .end local v16           #parentLayout:Landroid/view/ViewGroup;
    .end local v17           #tabHost:Landroid/widget/TabHost;
    .end local v18           #tabs:Landroid/widget/TabWidget;
    .end local v19           #wasHandled:Z
    .end local v20           #x:I
    .end local v21           #y:I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .restart local v16       #parentLayout:Landroid/view/ViewGroup;
    move-object/from16 v10, v16

    .restart local v10       #itemContainer:Landroid/view/ViewGroup;
    move-object/from16 v22, v16

    .line 295
    check-cast v22, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->getCellCountX()I

    move-result v6

    .restart local v6       #countX:I
    move-object/from16 v22, v16

    .line 296
    check-cast v22, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/cyanogenmod/trebuchet/PagedViewGridLayout;->getCellCountY()I

    move-result v7

    .restart local v7       #countY:I
    goto :goto_0

    .line 313
    .restart local v2       #action:I
    .restart local v5       #container:Lcom/cyanogenmod/trebuchet/PagedView;
    .restart local v9       #iconIndex:I
    .restart local v11       #itemCount:I
    .restart local v14       #pageCount:I
    .restart local v15       #pageIndex:I
    .restart local v17       #tabHost:Landroid/widget/TabHost;
    .restart local v18       #tabs:Landroid/widget/TabWidget;
    .restart local v20       #x:I
    .restart local v21       #y:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 321
    .restart local v8       #handleKeyEvent:Z
    .restart local v19       #wasHandled:Z
    :sswitch_0
    if-eqz v8, :cond_2

    .line 323
    if-lez v9, :cond_3

    .line 324
    add-int/lit8 v22, v9, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 336
    :cond_2
    :goto_3
    const/16 v19, 0x1

    .line 337
    goto :goto_2

    .line 326
    :cond_3
    if-lez v15, :cond_2

    .line 327
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 328
    .local v12, newParent:Landroid/view/ViewGroup;
    if-eqz v12, :cond_2

    .line 329
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(I)V

    .line 330
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 331
    .local v3, child:Landroid/view/View;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 339
    .end local v3           #child:Landroid/view/View;
    .end local v12           #newParent:Landroid/view/ViewGroup;
    :sswitch_1
    if-eqz v8, :cond_4

    .line 341
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    if-ge v9, v0, :cond_5

    .line 342
    add-int/lit8 v22, v9, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 354
    :cond_4
    :goto_4
    const/16 v19, 0x1

    .line 355
    goto :goto_2

    .line 344
    :cond_5
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v15, v0, :cond_4

    .line 345
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 346
    .restart local v12       #newParent:Landroid/view/ViewGroup;
    if-eqz v12, :cond_4

    .line 347
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(I)V

    .line 348
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 349
    .restart local v3       #child:Landroid/view/View;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 357
    .end local v3           #child:Landroid/view/View;
    .end local v12           #newParent:Landroid/view/ViewGroup;
    :sswitch_2
    if-eqz v8, :cond_6

    .line 359
    if-lez v21, :cond_7

    .line 360
    add-int/lit8 v22, v21, -0x1

    mul-int v22, v22, v6

    add-int v13, v22, v20

    .line 361
    .local v13, newiconIndex:I
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 366
    .end local v13           #newiconIndex:I
    :cond_6
    :goto_5
    const/16 v19, 0x1

    .line 367
    goto/16 :goto_2

    .line 363
    :cond_7
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TabWidget;->requestFocus()Z

    goto :goto_5

    .line 369
    :sswitch_3
    if-eqz v8, :cond_8

    .line 371
    add-int/lit8 v22, v7, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 372
    add-int/lit8 v22, v11, -0x1

    add-int/lit8 v23, v21, 0x1

    mul-int v23, v23, v6

    add-int v23, v23, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 373
    .restart local v13       #newiconIndex:I
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 376
    .end local v13           #newiconIndex:I
    :cond_8
    const/16 v19, 0x1

    .line 377
    goto/16 :goto_2

    .line 380
    :sswitch_4
    if-eqz v8, :cond_9

    move-object v4, v5

    .line 382
    check-cast v4, Landroid/view/View$OnClickListener;

    .line 383
    .local v4, clickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 385
    .end local v4           #clickListener:Landroid/view/View$OnClickListener;
    :cond_9
    const/16 v19, 0x1

    .line 386
    goto/16 :goto_2

    .line 388
    :sswitch_5
    if-eqz v8, :cond_a

    .line 391
    if-lez v15, :cond_b

    .line 392
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 393
    .restart local v12       #newParent:Landroid/view/ViewGroup;
    if-eqz v12, :cond_a

    .line 394
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(I)V

    .line 395
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 396
    .restart local v3       #child:Landroid/view/View;
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 402
    .end local v3           #child:Landroid/view/View;
    .end local v12           #newParent:Landroid/view/ViewGroup;
    :cond_a
    :goto_6
    const/16 v19, 0x1

    .line 403
    goto/16 :goto_2

    .line 399
    :cond_b
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    .line 405
    :sswitch_6
    if-eqz v8, :cond_c

    .line 408
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v15, v0, :cond_d

    .line 409
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 410
    .restart local v12       #newParent:Landroid/view/ViewGroup;
    if-eqz v12, :cond_c

    .line 411
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/cyanogenmod/trebuchet/PagedView;->snapToPage(I)V

    .line 412
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 413
    .restart local v3       #child:Landroid/view/View;
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 419
    .end local v3           #child:Landroid/view/View;
    .end local v12           #newParent:Landroid/view/ViewGroup;
    :cond_c
    :goto_7
    const/16 v19, 0x1

    .line 420
    goto/16 :goto_2

    .line 416
    :cond_d
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    .line 422
    :sswitch_7
    if-eqz v8, :cond_e

    .line 424
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 426
    :cond_e
    const/16 v19, 0x1

    .line 427
    goto/16 :goto_2

    .line 429
    :sswitch_8
    if-eqz v8, :cond_f

    .line 431
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 433
    :cond_f
    const/16 v19, 0x1

    .line 434
    goto/16 :goto_2

    .line 319
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-static {p0}, Lcom/cyanogenmod/trebuchet/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    .line 86
    .local v5, tabHost:Landroid/widget/TabHost;
    const v7, 0x1020011

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 88
    .local v1, contents:Landroid/view/ViewGroup;
    const v7, 0x7f0e0009

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 89
    .local v4, shop:Landroid/view/View;
    const v7, 0x7f0e0008

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 91
    .local v3, overflowMenu:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 92
    .local v0, action:I
    if-eq v0, v2, :cond_1

    .line 93
    .local v2, handleKeyEvent:Z
    :goto_0
    const/4 v6, 0x0

    .line 94
    .local v6, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    .line 119
    :cond_0
    :goto_1
    :pswitch_0
    return v6

    .line 92
    .end local v2           #handleKeyEvent:Z
    .end local v6           #wasHandled:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 96
    .restart local v2       #handleKeyEvent:Z
    .restart local v6       #wasHandled:Z
    :pswitch_1
    if-eqz v2, :cond_3

    .line 98
    if-ne p0, v4, :cond_2

    if-eq p0, v3, :cond_3

    .line 99
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    .line 100
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 106
    :cond_3
    :goto_2
    const/4 v6, 0x1

    .line 107
    goto :goto_1

    .line 101
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 102
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 109
    :pswitch_2
    if-eqz v2, :cond_0

    .line 111
    if-eq p0, v4, :cond_5

    if-ne p0, v3, :cond_0

    .line 112
    :cond_5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 113
    const/4 v6, 0x1

    goto :goto_1

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 825
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    .line 826
    .local v5, parent:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 827
    .local v3, layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/Folder;

    .line 828
    .local v1, folder:Lcom/cyanogenmod/trebuchet/Folder;
    iget-object v6, v1, Lcom/cyanogenmod/trebuchet/Folder;->mFolderName:Lcom/cyanogenmod/trebuchet/FolderEditText;

    .line 830
    .local v6, title:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 831
    .local v0, action:I
    if-eq v0, v8, :cond_0

    move v2, v8

    .line 832
    .local v2, handleKeyEvent:Z
    :goto_0
    const/4 v7, 0x0

    .line 833
    .local v7, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 901
    :goto_1
    return v7

    .line 831
    .end local v2           #handleKeyEvent:Z
    .end local v7           #wasHandled:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 835
    .restart local v2       #handleKeyEvent:Z
    .restart local v7       #wasHandled:Z
    :sswitch_0
    if-eqz v2, :cond_1

    .line 837
    invoke-static {v3, v5, p0, v9}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getIconInDirection(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 838
    .local v4, newIcon:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 839
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 842
    .end local v4           #newIcon:Landroid/view/View;
    :cond_1
    const/4 v7, 0x1

    .line 843
    goto :goto_1

    .line 845
    :sswitch_1
    if-eqz v2, :cond_2

    .line 847
    invoke-static {v3, v5, p0, v8}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getIconInDirection(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 848
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 849
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 854
    .end local v4           #newIcon:Landroid/view/View;
    :cond_2
    :goto_2
    const/4 v7, 0x1

    .line 855
    goto :goto_1

    .line 851
    .restart local v4       #newIcon:Landroid/view/View;
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 857
    .end local v4           #newIcon:Landroid/view/View;
    :sswitch_2
    if-eqz v2, :cond_4

    .line 859
    invoke-static {v3, v5, p0, v9}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getClosestIconOnLine(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 860
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_4

    .line 861
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 864
    .end local v4           #newIcon:Landroid/view/View;
    :cond_4
    const/4 v7, 0x1

    .line 865
    goto :goto_1

    .line 867
    :sswitch_3
    if-eqz v2, :cond_5

    .line 869
    invoke-static {v3, v5, p0, v8}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getClosestIconOnLine(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 870
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_6

    .line 871
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 876
    .end local v4           #newIcon:Landroid/view/View;
    :cond_5
    :goto_3
    const/4 v7, 0x1

    .line 877
    goto :goto_1

    .line 873
    .restart local v4       #newIcon:Landroid/view/View;
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 879
    .end local v4           #newIcon:Landroid/view/View;
    :sswitch_4
    if-eqz v2, :cond_7

    .line 881
    invoke-static {v3, v5, v9, v8}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getIconInDirection(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v4

    .line 882
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_7

    .line 883
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 886
    .end local v4           #newIcon:Landroid/view/View;
    :cond_7
    const/4 v7, 0x1

    .line 887
    goto :goto_1

    .line 889
    :sswitch_5
    if-eqz v2, :cond_8

    .line 891
    invoke-virtual {v5}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildCount()I

    move-result v8

    invoke-static {v3, v5, v8, v9}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getIconInDirection(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v4

    .line 893
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_8

    .line 894
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 897
    .end local v4           #newIcon:Landroid/view/View;
    :cond_8
    const/4 v7, 0x1

    .line 898
    goto :goto_1

    .line 833
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 14
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 499
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 500
    .local v9, parent:Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 501
    .local v5, launcher:Landroid/view/ViewGroup;
    const v12, 0x7f0e001f

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/cyanogenmod/trebuchet/Workspace;

    .line 502
    .local v11, workspace:Lcom/cyanogenmod/trebuchet/Workspace;
    invoke-virtual {v9, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 503
    .local v2, buttonIndex:I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 504
    .local v1, buttonCount:I
    invoke-virtual {v11}, Lcom/cyanogenmod/trebuchet/Workspace;->getCurrentPage()I

    move-result v8

    .line 510
    .local v8, pageIndex:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 511
    .local v0, action:I
    const/4 v12, 0x1

    if-eq v0, v12, :cond_0

    const/4 v4, 0x1

    .line 512
    .local v4, handleKeyEvent:Z
    :goto_0
    const/4 v10, 0x0

    .line 513
    .local v10, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    .line 556
    :goto_1
    return v10

    .line 511
    .end local v4           #handleKeyEvent:Z
    .end local v10           #wasHandled:Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 515
    .restart local v4       #handleKeyEvent:Z
    .restart local v10       #wasHandled:Z
    :pswitch_0
    if-eqz v4, :cond_1

    .line 517
    if-lez v2, :cond_2

    .line 518
    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 523
    :cond_1
    :goto_2
    const/4 v10, 0x1

    .line 524
    goto :goto_1

    .line 520
    :cond_2
    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v11, v12}, Lcom/cyanogenmod/trebuchet/Workspace;->snapToPage(I)V

    goto :goto_2

    .line 526
    :pswitch_1
    if-eqz v4, :cond_3

    .line 528
    add-int/lit8 v12, v1, -0x1

    if-ge v2, v12, :cond_4

    .line 529
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 534
    :cond_3
    :goto_3
    const/4 v10, 0x1

    .line 535
    goto :goto_1

    .line 531
    :cond_4
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v11, v12}, Lcom/cyanogenmod/trebuchet/Workspace;->snapToPage(I)V

    goto :goto_3

    .line 537
    :pswitch_2
    if-eqz v4, :cond_5

    .line 539
    invoke-virtual {v11, v8}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 540
    .local v6, layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    invoke-virtual {v6}, Lcom/cyanogenmod/trebuchet/CellLayout;->getChildrenLayout()Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-result-object v3

    .line 541
    .local v3, children:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v6, v3, v12, v13}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getIconInDirection(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 542
    .local v7, newIcon:Landroid/view/View;
    if-eqz v7, :cond_6

    .line 543
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 548
    .end local v3           #children:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    .end local v6           #layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    :cond_5
    :goto_4
    const/4 v10, 0x1

    .line 549
    goto :goto_1

    .line 545
    .restart local v3       #children:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    .restart local v6       #layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    .restart local v7       #newIcon:Landroid/view/View;
    :cond_6
    invoke-virtual {v11}, Lcom/cyanogenmod/trebuchet/Workspace;->requestFocus()Z

    goto :goto_4

    .line 552
    .end local v3           #children:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    .end local v6           #layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    :pswitch_3
    const/4 v10, 0x1

    .line 553
    goto :goto_1

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 14
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 670
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    .line 671
    .local v8, parent:Lcom/cyanogenmod/trebuchet/CellLayoutChildren;
    invoke-virtual {v8}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 672
    .local v4, layout:Lcom/cyanogenmod/trebuchet/CellLayout;
    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/cyanogenmod/trebuchet/Workspace;

    .line 673
    .local v11, workspace:Lcom/cyanogenmod/trebuchet/Workspace;
    invoke-virtual {v11}, Lcom/cyanogenmod/trebuchet/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 674
    .local v3, launcher:Landroid/view/ViewGroup;
    const v12, 0x7f0e0023

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 675
    .local v9, tabs:Landroid/view/ViewGroup;
    const v12, 0x7f0e0022

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 676
    .local v2, hotseat:Landroid/view/ViewGroup;
    invoke-virtual {v11, v4}, Lcom/cyanogenmod/trebuchet/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 677
    .local v7, pageIndex:I
    invoke-virtual {v11}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v6

    .line 679
    .local v6, pageCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 680
    .local v0, action:I
    const/4 v12, 0x1

    if-eq v0, v12, :cond_1

    const/4 v1, 0x1

    .line 681
    .local v1, handleKeyEvent:Z
    :goto_0
    const/4 v10, 0x0

    .line 682
    .local v10, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 818
    :cond_0
    :goto_1
    return v10

    .line 680
    .end local v1           #handleKeyEvent:Z
    .end local v10           #wasHandled:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 684
    .restart local v1       #handleKeyEvent:Z
    .restart local v10       #wasHandled:Z
    :sswitch_0
    if-eqz v1, :cond_2

    .line 686
    const/4 v12, -0x1

    invoke-static {v4, v8, p0, v12}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getIconInDirection(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 687
    .local v5, newIcon:Landroid/view/View;
    if-eqz v5, :cond_3

    .line 688
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 703
    .end local v5           #newIcon:Landroid/view/View;
    :cond_2
    :goto_2
    const/4 v10, 0x1

    .line 704
    goto :goto_1

    .line 690
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_3
    if-lez v7, :cond_2

    .line 691
    add-int/lit8 v12, v7, -0x1

    invoke-static {v11, v12}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-result-object v8

    .line 692
    invoke-virtual {v8}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    invoke-static {v4, v8, v12, v13}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getIconInDirection(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 694
    if-eqz v5, :cond_4

    .line 695
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 698
    :cond_4
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v11, v12}, Lcom/cyanogenmod/trebuchet/Workspace;->snapToPage(I)V

    goto :goto_2

    .line 706
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_1
    if-eqz v1, :cond_5

    .line 708
    const/4 v12, 0x1

    invoke-static {v4, v8, p0, v12}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getIconInDirection(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 709
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_6

    .line 710
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 724
    .end local v5           #newIcon:Landroid/view/View;
    :cond_5
    :goto_3
    const/4 v10, 0x1

    .line 725
    goto :goto_1

    .line 712
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_6
    add-int/lit8 v12, v6, -0x1

    if-ge v7, v12, :cond_5

    .line 713
    add-int/lit8 v12, v7, 0x1

    invoke-static {v11, v12}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-result-object v8

    .line 714
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getIconInDirection(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 715
    if-eqz v5, :cond_7

    .line 716
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 719
    :cond_7
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Lcom/cyanogenmod/trebuchet/Workspace;->snapToPage(I)V

    goto :goto_3

    .line 727
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_2
    if-eqz v1, :cond_0

    .line 729
    const/4 v12, -0x1

    invoke-static {v4, v8, p0, v12}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getClosestIconOnLine(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 730
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_8

    .line 731
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 732
    const/4 v10, 0x1

    goto :goto_1

    .line 734
    :cond_8
    invoke-virtual {v9}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_1

    .line 739
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_3
    if-eqz v1, :cond_0

    .line 741
    const/4 v12, 0x1

    invoke-static {v4, v8, p0, v12}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getClosestIconOnLine(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 742
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_9

    .line 743
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 744
    const/4 v10, 0x1

    goto :goto_1

    .line 745
    :cond_9
    if-eqz v2, :cond_0

    .line 746
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_1

    .line 751
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_4
    if-eqz v1, :cond_a

    .line 754
    if-lez v7, :cond_c

    .line 755
    add-int/lit8 v12, v7, -0x1

    invoke-static {v11, v12}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-result-object v8

    .line 756
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getIconInDirection(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 757
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_b

    .line 758
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 770
    .end local v5           #newIcon:Landroid/view/View;
    :cond_a
    :goto_4
    const/4 v10, 0x1

    .line 771
    goto/16 :goto_1

    .line 761
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_b
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v11, v12}, Lcom/cyanogenmod/trebuchet/Workspace;->snapToPage(I)V

    goto :goto_4

    .line 764
    .end local v5           #newIcon:Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getIconInDirection(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 765
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_a

    .line 766
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 773
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_5
    if-eqz v1, :cond_d

    .line 776
    add-int/lit8 v12, v6, -0x1

    if-ge v7, v12, :cond_f

    .line 777
    add-int/lit8 v12, v7, 0x1

    invoke-static {v11, v12}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/cyanogenmod/trebuchet/CellLayoutChildren;

    move-result-object v8

    .line 778
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getIconInDirection(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 779
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_e

    .line 780
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 793
    .end local v5           #newIcon:Landroid/view/View;
    :cond_d
    :goto_5
    const/4 v10, 0x1

    .line 794
    goto/16 :goto_1

    .line 783
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_e
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Lcom/cyanogenmod/trebuchet/Workspace;->snapToPage(I)V

    goto :goto_5

    .line 786
    .end local v5           #newIcon:Landroid/view/View;
    :cond_f
    invoke-virtual {v8}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    invoke-static {v4, v8, v12, v13}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getIconInDirection(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 788
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_d

    .line 789
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 796
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_6
    if-eqz v1, :cond_10

    .line 798
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getIconInDirection(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 799
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_10

    .line 800
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 803
    .end local v5           #newIcon:Landroid/view/View;
    :cond_10
    const/4 v10, 0x1

    .line 804
    goto/16 :goto_1

    .line 806
    :sswitch_7
    if-eqz v1, :cond_11

    .line 808
    invoke-virtual {v8}, Lcom/cyanogenmod/trebuchet/CellLayoutChildren;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    invoke-static {v4, v8, v12, v13}, Lcom/cyanogenmod/trebuchet/FocusHelper;->getIconInDirection(Lcom/cyanogenmod/trebuchet/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 810
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_11

    .line 811
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 814
    .end local v5           #newIcon:Landroid/view/View;
    :cond_11
    const/4 v10, 0x1

    .line 815
    goto/16 :goto_1

    .line 682
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x5c -> :sswitch_4
        0x5d -> :sswitch_5
        0x7a -> :sswitch_6
        0x7b -> :sswitch_7
    .end sparse-switch
.end method

.method static handleTabKeyEvent(Lcom/cyanogenmod/trebuchet/AccessibleTabView;ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 444
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v8

    if-nez v8, :cond_0

    .line 492
    :goto_0
    return v7

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AccessibleTabView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/trebuchet/FocusOnlyTabWidget;

    .line 447
    .local v3, parent:Lcom/cyanogenmod/trebuchet/FocusOnlyTabWidget;
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    .line 448
    .local v5, tabHost:Landroid/widget/TabHost;
    const v8, 0x1020011

    invoke-virtual {v5, v8}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 450
    .local v1, contents:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Lcom/cyanogenmod/trebuchet/FocusOnlyTabWidget;->getTabCount()I

    move-result v4

    .line 451
    .local v4, tabCount:I
    invoke-virtual {v3, p0}, Lcom/cyanogenmod/trebuchet/FocusOnlyTabWidget;->getChildTabIndex(Landroid/view/View;)I

    move-result v6

    .line 453
    .local v6, tabIndex:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 454
    .local v0, action:I
    if-eq v0, v2, :cond_1

    .line 455
    .local v2, handleKeyEvent:Z
    :goto_1
    const/4 v7, 0x0

    .line 456
    .local v7, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 481
    :pswitch_0
    const/4 v7, 0x1

    .line 482
    goto :goto_0

    .end local v2           #handleKeyEvent:Z
    .end local v7           #wasHandled:Z
    :cond_1
    move v2, v7

    .line 454
    goto :goto_1

    .line 458
    .restart local v2       #handleKeyEvent:Z
    .restart local v7       #wasHandled:Z
    :pswitch_1
    if-eqz v2, :cond_2

    .line 460
    if-lez v6, :cond_2

    .line 461
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v3, v8}, Lcom/cyanogenmod/trebuchet/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 464
    :cond_2
    const/4 v7, 0x1

    .line 465
    goto :goto_0

    .line 467
    :pswitch_2
    if-eqz v2, :cond_3

    .line 469
    add-int/lit8 v8, v4, -0x1

    if-ge v6, v8, :cond_4

    .line 470
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Lcom/cyanogenmod/trebuchet/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 477
    :cond_3
    :goto_2
    const/4 v7, 0x1

    .line 478
    goto :goto_0

    .line 472
    :cond_4
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 473
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 484
    :pswitch_3
    if-eqz v2, :cond_5

    .line 486
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 488
    :cond_5
    const/4 v7, 0x1

    .line 489
    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
