.class Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$2;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->onPackagesUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$2;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$2;->this$0:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;->updatePackages()V

    .line 541
    return-void
.end method
