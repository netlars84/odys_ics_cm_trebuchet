.class public Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingStar;
.super Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;
.source "RocketLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlyingStar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;


# direct methods
.method public constructor <init>(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "as"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingStar;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    .line 229
    invoke-direct {p0, p1, p2, p3}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;-><init>(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 230
    return-void
.end method


# virtual methods
.method public randomize()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;->randomize()V

    .line 236
    const v0, 0x443b8000

    const/high16 v1, 0x44fa

    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->randfrange(FF)F

    move-result v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingStar;->v:F

    .line 237
    const/high16 v0, 0x3f80

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->randfrange(FF)F

    move-result v0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingStar;->endscale:F

    .line 238
    return-void
.end method

.method public randomizeIcon()V
    .locals 1

    .prologue
    .line 232
    const v0, 0x7f020061

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingStar;->setImageResource(I)V

    .line 233
    return-void
.end method
