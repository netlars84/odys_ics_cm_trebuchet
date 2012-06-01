.class public Lcom/cyanogenmod/trebuchet/WallpaperChooser;
.super Landroid/app/Activity;
.source "WallpaperChooser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v2, 0x7f030019

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/trebuchet/WallpaperChooser;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/WallpaperChooser;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0e0037

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 36
    .local v1, fragmentView:Landroid/app/Fragment;
    if-nez v1, :cond_0

    .line 40
    invoke-static {}, Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;->newInstance()Lcom/cyanogenmod/trebuchet/WallpaperChooserDialogFragment;

    move-result-object v0

    .line 41
    .local v0, fragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/WallpaperChooser;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 43
    .end local v0           #fragment:Landroid/app/DialogFragment;
    :cond_0
    return-void
.end method
