.class Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$9;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;->bindWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

.field final synthetic val$t:J


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$9;->this$1:Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask;

    iput-wide p2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$LoaderTask$9;->val$t:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 1316
    return-void
.end method
