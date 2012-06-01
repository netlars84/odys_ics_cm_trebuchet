.class public Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;
.super Ljava/lang/Object;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderRingAnimator"
.end annotation


# static fields
.field public static sPreviewPadding:I

.field public static sPreviewSize:I

.field public static sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

.field public static sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAcceptAnimator:Landroid/animation/ValueAnimator;

.field private mCellLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

.field public mCellX:I

.field public mCellY:I

.field public mFolderIcon:Lcom/cyanogenmod/trebuchet/FolderIcon;

.field public mInnerRingDrawable:Landroid/graphics/drawable/Drawable;

.field public mInnerRingSize:F

.field private mNeutralAnimator:Landroid/animation/ValueAnimator;

.field public mOuterRingDrawable:Landroid/graphics/drawable/Drawable;

.field public mOuterRingSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 153
    sput-object v1, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    sput-object v1, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 155
    sput v0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 156
    sput v0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    return-void
.end method

.method public constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/FolderIcon;)V
    .locals 4
    .parameter "launcher"
    .parameter "folderIcon"

    .prologue
    const v3, 0x7f020038

    const v2, 0x7f020036

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/cyanogenmod/trebuchet/FolderIcon;

    .line 151
    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/cyanogenmod/trebuchet/FolderIcon;

    .line 163
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 164
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 165
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 169
    invoke-static {}, Lcom/cyanogenmod/trebuchet/FolderIcon;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const v1, 0x7f0b003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 171
    const v1, 0x7f0b003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    .line 172
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 173
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 174
    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/cyanogenmod/trebuchet/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    .line 175
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->access$002(Z)Z

    .line 177
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;)Lcom/cyanogenmod/trebuchet/CellLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    return-object v0
.end method


# virtual methods
.method public animateToAcceptState()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 183
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    .line 184
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 185
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator$1;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator$1;-><init>(Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 195
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator$2;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator$2;-><init>(Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 204
    return-void

    .line 183
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public animateToNaturalState()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 210
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    .line 211
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 212
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator$3;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator$3;-><init>(Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 222
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator$4;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator$4;-><init>(Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 233
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 234
    return-void

    .line 210
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public getInnerRingSize()F
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mInnerRingSize:F

    return v0
.end method

.method public getOuterRingSize()F
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mOuterRingSize:F

    return v0
.end method

.method public setCell(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 244
    iput p1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mCellX:I

    .line 245
    iput p2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mCellY:I

    .line 246
    return-void
.end method

.method public setCellLayout(Lcom/cyanogenmod/trebuchet/CellLayout;)V
    .locals 0
    .parameter "layout"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 250
    return-void
.end method
