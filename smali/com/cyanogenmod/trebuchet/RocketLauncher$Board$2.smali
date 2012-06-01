.class Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$2;
.super Ljava/lang/Object;
.source "RocketLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$2;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$2;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    const/4 v1, 0x0

    #setter for: Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mManeuveringThrusters:Z
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->access$002(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;Z)Z

    .line 370
    return-void
.end method
