.class Lcom/cyanogenmod/trebuchet/HotseatIconKeyEventListener;
.super Ljava/lang/Object;
.source "FocusHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 55
    .local v0, configuration:Landroid/content/res/Configuration;
    invoke-static {p1, p2, p3}, Lcom/cyanogenmod/trebuchet/FocusHelper;->handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method
