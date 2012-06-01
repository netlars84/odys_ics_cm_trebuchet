.class Lcom/cyanogenmod/trebuchet/Launcher$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Launcher;->shrinkAndFadeInFolderIcon(Lcom/cyanogenmod/trebuchet/FolderIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Launcher;

.field final synthetic val$layout:Lcom/cyanogenmod/trebuchet/CellLayout;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/CellLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2014
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$11;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/Launcher$11;->val$layout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$11;->val$layout:Lcom/cyanogenmod/trebuchet/CellLayout;

    if-eqz v0, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$11;->val$layout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->clearFolderLeaveBehind()V

    .line 2020
    :cond_0
    return-void
.end method
