.class Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon$1;
.super Ljava/lang/Object;
.source "RocketLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon$1;->this$1:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon$1;->this$1:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon$1;->this$1:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;

    iget-object v2, v2, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0

    .line 148
    :catch_1
    move-exception v0

    goto :goto_0
.end method
