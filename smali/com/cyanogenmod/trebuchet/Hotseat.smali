.class public Lcom/cyanogenmod/trebuchet/Hotseat;
.super Landroid/widget/FrameLayout;
.source "Hotseat.java"


# instance fields
.field private mCellCountX:I

.field private mCellCountY:I

.field private mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

.field private mIsLandscape:Z

.field private mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyanogenmod/trebuchet/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyanogenmod/trebuchet/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    sget-object v3, Lcom/cyanogenmod/trebuchet/R$styleable;->Hotseat:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mCellCountX:I

    .line 55
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mCellCountY:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mIsLandscape:Z

    .line 58
    return-void

    :cond_0
    move v1, v2

    .line 56
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/cyanogenmod/trebuchet/Hotseat;)Lcom/cyanogenmod/trebuchet/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    return-object v0
.end method

.method public static isAllAppsButtonRank(I)Z
    .locals 1
    .parameter "rank"

    .prologue
    .line 81
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getCellXFromOrder(I)I
    .locals 1
    .parameter "rank"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1
    :cond_0
    return p1
.end method

.method getCellYFromOrder(I)I
    .locals 2
    .parameter "rank"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getCountY()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getLayout()Lcom/cyanogenmod/trebuchet/CellLayout;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    return-object v0
.end method

.method getOrderInHotseat(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->getCountY()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1

    .end local p1
    :cond_0
    return p1
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 87
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mCellCountX:I

    if-gez v0, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mCellCountX:I

    .line 88
    :cond_0
    iget v0, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mCellCountY:I

    if-gez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mCellCountY:I

    .line 89
    :cond_1
    const v0, 0x7f0e001d

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 90
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    iget v1, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mCellCountX:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mCellCountY:I

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setGridSize(II)V

    .line 92
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Hotseat;->resetLayout()V

    .line 93
    return-void
.end method

.method resetLayout()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 96
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->removeAllViewsInLayout()V

    .line 99
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 100
    .local v6, context:Landroid/content/Context;
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 101
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f030003

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v7, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/BubbleTextView;

    .line 103
    .local v1, allAppsButton:Lcom/cyanogenmod/trebuchet/BubbleTextView;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f02

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v4, v0, v4, v4}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 105
    const v0, 0x7f090023

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v0, Lcom/cyanogenmod/trebuchet/Hotseat$1;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/trebuchet/Hotseat$1;-><init>(Lcom/cyanogenmod/trebuchet/Hotseat;)V

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    new-instance v0, Lcom/cyanogenmod/trebuchet/Hotseat$2;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/trebuchet/Hotseat$2;-><init>(Lcom/cyanogenmod/trebuchet/Hotseat;)V

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0, v10}, Lcom/cyanogenmod/trebuchet/Hotseat;->getCellXFromOrder(I)I

    move-result v8

    .line 129
    .local v8, x:I
    invoke-virtual {p0, v10}, Lcom/cyanogenmod/trebuchet/Hotseat;->getCellYFromOrder(I)I

    move-result v9

    .line 130
    .local v9, y:I
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mContent:Lcom/cyanogenmod/trebuchet/CellLayout;

    const/4 v2, -0x1

    new-instance v4, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;

    invoke-direct {v4, v8, v9, v5, v5}, Lcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/cyanogenmod/trebuchet/CellLayout$LayoutParams;Z)Z

    .line 132
    return-void
.end method

.method public setup(Lcom/cyanogenmod/trebuchet/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Hotseat;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    .line 62
    new-instance v0, Lcom/cyanogenmod/trebuchet/HotseatIconKeyEventListener;

    invoke-direct {v0}, Lcom/cyanogenmod/trebuchet/HotseatIconKeyEventListener;-><init>()V

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/Hotseat;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 63
    return-void
.end method
