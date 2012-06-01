.class Lcom/cyanogenmod/trebuchet/Launcher$9;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Launcher;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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
    .line 1421
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$9;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$9;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/Launcher;->onClickAppMarketButton(Landroid/view/View;)V

    .line 1424
    const/4 v0, 0x1

    return v0
.end method
