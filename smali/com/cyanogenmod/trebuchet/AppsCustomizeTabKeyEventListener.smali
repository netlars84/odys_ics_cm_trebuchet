.class Lcom/cyanogenmod/trebuchet/AppsCustomizeTabKeyEventListener;
.super Ljava/lang/Object;
.source "FocusHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 65
    invoke-static {p1, p2, p3}, Lcom/cyanogenmod/trebuchet/FocusHelper;->handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
