.class Lcom/cyanogenmod/trebuchet/Launcher$10;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Launcher;->onLongClickAppsTab(Landroid/view/View;)V
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
    .line 1854
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$10;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1856
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1864
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1858
    :pswitch_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$10;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->access$1700(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    move-result-object v0

    sget-object v1, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;->Title:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    invoke-interface {v0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->setSortMode(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;)V

    goto :goto_0

    .line 1861
    :pswitch_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$10;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher;->mAppsCustomizeContent:Lcom/cyanogenmod/trebuchet/AppsCustomizeView;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Launcher;->access$1700(Lcom/cyanogenmod/trebuchet/Launcher;)Lcom/cyanogenmod/trebuchet/AppsCustomizeView;

    move-result-object v0

    sget-object v1, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;->InstallDate:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    invoke-interface {v0, v1}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView;->setSortMode(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;)V

    goto :goto_0

    .line 1856
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e003c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
