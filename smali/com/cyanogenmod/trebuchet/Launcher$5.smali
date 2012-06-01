.class Lcom/cyanogenmod/trebuchet/Launcher$5;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Launcher;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Launcher;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$5;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 829
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$5;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->onTouchDownAllAppsButton(Landroid/view/View;)V

    .line 832
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
