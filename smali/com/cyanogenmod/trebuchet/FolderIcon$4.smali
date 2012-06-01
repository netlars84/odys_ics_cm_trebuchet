.class Lcom/cyanogenmod/trebuchet/FolderIcon$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/FolderIcon;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/FolderIcon;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$4;->this$0:Lcom/cyanogenmod/trebuchet/FolderIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$4;->this$0:Lcom/cyanogenmod/trebuchet/FolderIcon;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAnimating:Z

    .line 558
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$4;->this$0:Lcom/cyanogenmod/trebuchet/FolderIcon;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cyanogenmod/trebuchet/FolderIcon;->mAnimating:Z

    .line 554
    return-void
.end method
