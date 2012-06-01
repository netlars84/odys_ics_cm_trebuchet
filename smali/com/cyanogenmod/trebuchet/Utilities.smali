.class final Lcom/cyanogenmod/trebuchet/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I

.field private static sIconTextureHeight:I

.field private static sIconTextureWidth:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 42
    sput v0, Lcom/cyanogenmod/trebuchet/Utilities;->sIconWidth:I

    .line 43
    sput v0, Lcom/cyanogenmod/trebuchet/Utilities;->sIconHeight:I

    .line 44
    sput v0, Lcom/cyanogenmod/trebuchet/Utilities;->sIconTextureWidth:I

    .line 45
    sput v0, Lcom/cyanogenmod/trebuchet/Utilities;->sIconTextureHeight:I

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 55
    sget-object v0, Lcom/cyanogenmod/trebuchet/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyanogenmod/trebuchet/Utilities;->sColors:[I

    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/cyanogenmod/trebuchet/Utilities;->sColorIndex:I

    return-void

    .line 58
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 67
    sget v3, Lcom/cyanogenmod/trebuchet/Utilities;->sIconTextureWidth:I

    .line 68
    .local v3, textureWidth:I
    sget v2, Lcom/cyanogenmod/trebuchet/Utilities;->sIconTextureHeight:I

    .line 69
    .local v2, textureHeight:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 70
    .local v1, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 71
    .local v0, sourceHeight:I
    if-le v1, v3, :cond_1

    if-le v0, v2, :cond_1

    .line 73
    sub-int v4, v1, v3

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v0, v2

    div-int/lit8 v5, v5, 0x2

    invoke-static {p0, v4, v5, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 82
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 77
    .restart local p0
    :cond_1
    if-ne v1, v3, :cond_2

    if-eq v0, v2, :cond_0

    .line 82
    :cond_2
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v4, p1}, Lcom/cyanogenmod/trebuchet/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 90
    sget-object v16, Lcom/cyanogenmod/trebuchet/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v16

    .line 91
    :try_start_0
    sget v15, Lcom/cyanogenmod/trebuchet/Utilities;->sIconWidth:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_0

    .line 92
    invoke-static/range {p1 .. p1}, Lcom/cyanogenmod/trebuchet/Utilities;->initStatics(Landroid/content/Context;)V

    .line 95
    :cond_0
    sget v14, Lcom/cyanogenmod/trebuchet/Utilities;->sIconWidth:I

    .line 96
    .local v14, width:I
    sget v5, Lcom/cyanogenmod/trebuchet/Utilities;->sIconHeight:I

    .line 98
    .local v5, height:I
    move-object/from16 v0, p0

    instance-of v15, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v15, :cond_4

    .line 99
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v7, v0

    .line 100
    .local v7, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v7, v14}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 101
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 110
    .end local v7           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 111
    .local v10, sourceWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 113
    .local v9, sourceHeight:I
    if-lez v10, :cond_3

    if-lez v9, :cond_3

    .line 115
    if-lt v14, v10, :cond_2

    if-ge v5, v9, :cond_6

    .line 117
    :cond_2
    int-to-float v15, v10

    int-to-float v0, v9

    move/from16 v17, v0

    div-float v8, v15, v17

    .line 118
    .local v8, ratio:F
    if-le v10, v9, :cond_5

    .line 119
    int-to-float v15, v14

    div-float/2addr v15, v8

    float-to-int v5, v15

    .line 131
    .end local v8           #ratio:F
    :cond_3
    :goto_1
    sget v12, Lcom/cyanogenmod/trebuchet/Utilities;->sIconTextureWidth:I

    .line 132
    .local v12, textureWidth:I
    sget v11, Lcom/cyanogenmod/trebuchet/Utilities;->sIconTextureHeight:I

    .line 134
    .local v11, textureHeight:I
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v11, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 136
    .local v2, bitmap:Landroid/graphics/Bitmap;
    sget-object v4, Lcom/cyanogenmod/trebuchet/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 137
    .local v4, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    sub-int v15, v12, v14

    div-int/lit8 v6, v15, 0x2

    .line 140
    .local v6, left:I
    sub-int v15, v11, v5

    div-int/lit8 v13, v15, 0x2

    .line 142
    .local v13, top:I
    sget-object v15, Lcom/cyanogenmod/trebuchet/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 143
    add-int v15, v6, v14

    add-int v17, v13, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v13, v15, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 145
    sget-object v15, Lcom/cyanogenmod/trebuchet/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 146
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 148
    monitor-exit v16

    return-object v2

    .line 102
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v6           #left:I
    .end local v9           #sourceHeight:I
    .end local v10           #sourceWidth:I
    .end local v11           #textureHeight:I
    .end local v12           #textureWidth:I
    .end local v13           #top:I
    :cond_4
    move-object/from16 v0, p0

    instance-of v15, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v15, :cond_1

    .line 104
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0

    .line 105
    .local v3, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 106
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v15

    if-nez v15, :cond_1

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 149
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v5           #height:I
    .end local v14           #width:I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 120
    .restart local v5       #height:I
    .restart local v8       #ratio:F
    .restart local v9       #sourceHeight:I
    .restart local v10       #sourceWidth:I
    .restart local v14       #width:I
    :cond_5
    if-le v9, v10, :cond_3

    .line 121
    int-to-float v15, v5

    mul-float/2addr v15, v8

    float-to-int v14, v15

    goto :goto_1

    .line 123
    .end local v8           #ratio:F
    :cond_6
    if-ge v10, v14, :cond_3

    if-ge v9, v5, :cond_3

    .line 125
    move v14, v10

    .line 126
    move v5, v9

    goto :goto_1
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x0

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 197
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 198
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 200
    .local v1, density:F
    const v4, 0x7f0b0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/cyanogenmod/trebuchet/Utilities;->sIconHeight:I

    sput v4, Lcom/cyanogenmod/trebuchet/Utilities;->sIconWidth:I

    .line 201
    sget v4, Lcom/cyanogenmod/trebuchet/Utilities;->sIconWidth:I

    sput v4, Lcom/cyanogenmod/trebuchet/Utilities;->sIconTextureHeight:I

    sput v4, Lcom/cyanogenmod/trebuchet/Utilities;->sIconTextureWidth:I

    .line 203
    sget-object v4, Lcom/cyanogenmod/trebuchet/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v6, 0x40a0

    mul-float/2addr v6, v1

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 204
    sget-object v4, Lcom/cyanogenmod/trebuchet/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x3d00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    sget-object v4, Lcom/cyanogenmod/trebuchet/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 206
    sget-object v4, Lcom/cyanogenmod/trebuchet/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x7200

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    sget-object v4, Lcom/cyanogenmod/trebuchet/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 209
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 210
    .local v0, cm:Landroid/graphics/ColorMatrix;
    const v4, 0x3e4ccccd

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 211
    sget-object v4, Lcom/cyanogenmod/trebuchet/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 212
    sget-object v4, Lcom/cyanogenmod/trebuchet/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 213
    return-void
.end method

.method static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 164
    sget-object v1, Lcom/cyanogenmod/trebuchet/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v1

    .line 165
    :try_start_0
    sget v0, Lcom/cyanogenmod/trebuchet/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 166
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/Utilities;->initStatics(Landroid/content/Context;)V

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v2, Lcom/cyanogenmod/trebuchet/Utilities;->sIconWidth:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget v2, Lcom/cyanogenmod/trebuchet/Utilities;->sIconHeight:I

    if-ne v0, v2, :cond_1

    .line 170
    monitor-exit v1

    .line 172
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, p1}, Lcom/cyanogenmod/trebuchet/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    .end local p0
    monitor-exit v1

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
