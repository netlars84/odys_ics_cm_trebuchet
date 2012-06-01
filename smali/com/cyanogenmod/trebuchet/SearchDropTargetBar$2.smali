.class Lcom/cyanogenmod/trebuchet/SearchDropTargetBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchDropTargetBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar$2;->this$0:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar$2;->this$0:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    #getter for: Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->access$000(Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar$2;->this$0:Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;

    #getter for: Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;->access$000(Lcom/cyanogenmod/trebuchet/SearchDropTargetBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 131
    return-void
.end method
