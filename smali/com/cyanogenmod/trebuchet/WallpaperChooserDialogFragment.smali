.class public Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;
.super Landroid/app/DialogFragment;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperDrawable;,
        Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;,
        Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$ImageAdapter;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mEmbedded:Z

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoader:Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;

.field private mThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperDrawable:Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    .line 60
    new-instance v0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperDrawable;

    invoke-direct {v0}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperDrawable;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperDrawable;

    .line 328
    return-void
.end method

.method static synthetic access$000(Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->selectWallpaper(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;)Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperDrawable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;)Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mLoader:Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;

    return-object p1
.end method

.method private addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 9
    .parameter "resources"
    .parameter "packageName"
    .parameter "list"

    .prologue
    .line 214
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, extras:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 216
    .local v1, extra:Ljava/lang/String;
    const-string v7, "drawable"

    invoke-virtual {p1, v1, v7, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 217
    .local v5, res:I
    if-eqz v5, :cond_0

    .line 218
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_small"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {p1, v7, v8, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 221
    .local v6, thumbRes:I
    if-eqz v6, :cond_0

    .line 222
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v7, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v6           #thumbRes:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    .end local v1           #extra:Ljava/lang/String;
    .end local v5           #res:I
    :cond_1
    return-void
.end method

.method private findWallpapers()V
    .locals 5

    .prologue
    const v4, 0x7f060005

    const/16 v3, 0x18

    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    .line 202
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 207
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, packageName:Ljava/lang/String;
    invoke-direct {p0, v1, v0, v4}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 210
    const v2, 0x7f060004

    invoke-direct {p0, v1, v0, v2}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 211
    return-void
.end method

.method public static newInstance()Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;

    invoke-direct {v0}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;-><init>()V

    .line 64
    .local v0, fragment:Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->setCancelable(Z)V

    .line 65
    return-object v0
.end method

.method private selectWallpaper(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "wallpaper"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    .line 170
    .local v2, wpm:Landroid/app/WallpaperManager;
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 171
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 172
    .local v0, activity:Landroid/app/Activity;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 173
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #wpm:Landroid/app/WallpaperManager;
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, e:Ljava/io/IOException;
    const-string v3, "Launcher.WallpaperChooserDialogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set wallpaper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    if-eqz p1, :cond_0

    const-string v0, "com.cyanogenmod.trebuchet.WallpaperChooserDialogFragment.EMBEDDED_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "com.cyanogenmod.trebuchet.WallpaperChooserDialogFragment.EMBEDDED_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mEmbedded:Z

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->isInLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mEmbedded:Z

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->findWallpapers()V

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 139
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->findWallpapers()V

    .line 145
    iget-boolean v3, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mEmbedded:Z

    if-eqz v3, :cond_0

    .line 146
    const v3, 0x7f030018

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 147
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperDrawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    const v3, 0x7f0e0035

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 150
    .local v0, gallery:Landroid/widget/Gallery;
    invoke-virtual {v0, v4}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 151
    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 152
    new-instance v3, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$ImageAdapter;

    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$ImageAdapter;-><init>(Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 154
    const v3, 0x7f0e0036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 155
    .local v1, setButton:Landroid/view/View;
    new-instance v3, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$1;-><init>(Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;Landroid/widget/Gallery;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .end local v0           #gallery:Landroid/widget/Gallery;
    .end local v1           #setButton:Landroid/view/View;
    .end local v2           #view:Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 87
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mLoader:Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mLoader:Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mLoader:Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;->cancel(Z)Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mLoader:Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;

    .line 91
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 100
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 101
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 104
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->selectWallpaper(I)V

    .line 183
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mLoader:Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mLoader:Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mLoader:Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;->cancel()V

    .line 191
    :cond_0
    new-instance v0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;-><init>(Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mLoader:Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment$WallpaperLoader;

    .line 192
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 80
    const-string v0, "com.cyanogenmod.trebuchet.WallpaperChooserDialogFragment.EMBEDDED_KEY"

    iget-boolean v1, p0, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->mEmbedded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    return-void
.end method
