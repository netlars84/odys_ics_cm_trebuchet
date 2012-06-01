.class Lcom/cyanogenmod/trebuchet/Launcher$20;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Launcher;->unlockScreenOrientationOnLargeUI()V
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
    .line 3369
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$20;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3371
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$20;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #calls: Lcom/cyanogenmod/trebuchet/Launcher;->syncOrientation()V
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->access$3100(Lcom/cyanogenmod/trebuchet/Launcher;)V

    .line 3372
    return-void
.end method
