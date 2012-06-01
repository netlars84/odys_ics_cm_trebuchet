.class Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;
.super Ljava/lang/Object;
.source "RocketLauncher.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->reset()V
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
    .line 284
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 15
    .parameter "animation"
    .parameter "totalTime"
    .parameter "deltaTime"

    .prologue
    .line 288
    const/16 v2, 0xbb8

    .line 289
    .local v2, START_ZOOM_TIME:I
    const-wide/16 v10, 0xbb8

    cmp-long v10, p2, v10

    if-gez v10, :cond_3

    .line 290
    move-wide/from16 v0, p2

    long-to-float v10, v0

    const v11, 0x453b8000

    div-float v9, v10, v11

    .line 291
    .local v9, x:F
    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    sub-float v11, v9, v11

    float-to-double v11, v11

    const-wide/high16 v13, 0x4010

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v11, v11

    sub-float v5, v10, v11

    .line 292
    .local v5, s:F
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    invoke-virtual {v10, v5}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->setScaleX(F)V

    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    invoke-virtual {v10, v5}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->setScaleY(F)V

    .line 297
    .end local v5           #s:F
    .end local v9           #x:F
    :goto_0
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    #getter for: Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mManeuveringThrusters:Z
    invoke-static {v10}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->access$000(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 298
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    #getter for: Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mSpeedScale:F
    invoke-static {v10}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->access$100(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;)F

    move-result v10

    const v11, 0x3dcccccd

    cmpl-float v10, v10, v11

    if-lez v10, :cond_0

    .line 299
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    const-wide/16 v11, 0x2

    mul-long v11, v11, p4

    long-to-float v11, v11

    const/high16 v12, 0x447a

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->access$124(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;F)F

    .line 301
    :cond_0
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    #getter for: Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mSpeedScale:F
    invoke-static {v10}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->access$100(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;)F

    move-result v10

    const v11, 0x3dcccccd

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 302
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    const v11, 0x3dcccccd

    #setter for: Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mSpeedScale:F
    invoke-static {v10, v11}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->access$102(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;F)F

    .line 313
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    invoke-virtual {v10}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->getChildCount()I

    move-result v10

    if-ge v3, v10, :cond_8

    .line 314
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    invoke-virtual {v10, v3}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 315
    .local v8, v:Landroid/view/View;
    instance-of v10, v8, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;

    if-nez v10, :cond_6

    .line 313
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 294
    .end local v3           #i:I
    .end local v8           #v:Landroid/view/View;
    :cond_3
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    const/high16 v11, 0x3f80

    invoke-virtual {v10, v11}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->setScaleX(F)V

    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    const/high16 v11, 0x3f80

    invoke-virtual {v10, v11}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->setScaleY(F)V

    goto :goto_0

    .line 305
    :cond_4
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    #getter for: Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mSpeedScale:F
    invoke-static {v10}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->access$100(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;)F

    move-result v10

    const/high16 v11, 0x3f80

    cmpg-float v10, v10, v11

    if-gez v10, :cond_5

    .line 306
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    move-wide/from16 v0, p4

    long-to-float v11, v0

    const/high16 v12, 0x447a

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->access$116(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;F)F

    .line 308
    :cond_5
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    #getter for: Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mSpeedScale:F
    invoke-static {v10}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->access$100(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;)F

    move-result v10

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    .line 309
    iget-object v10, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    const/high16 v11, 0x3f80

    #setter for: Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mSpeedScale:F
    invoke-static {v10, v11}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->access$102(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;F)F

    goto :goto_1

    .restart local v3       #i:I
    .restart local v8       #v:Landroid/view/View;
    :cond_6
    move-object v4, v8

    .line 316
    check-cast v4, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;

    .line 317
    .local v4, nv:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;
    move-wide/from16 v0, p4

    long-to-float v10, v0

    const/high16 v11, 0x447a

    div-float/2addr v10, v11

    iget-object v11, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    #getter for: Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->mSpeedScale:F
    invoke-static {v11}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->access$100(Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;)F

    move-result v11

    mul-float/2addr v10, v11

    invoke-virtual {v4, v10}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;->update(F)V

    .line 318
    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;->getScaleX()F

    move-result v11

    mul-float v7, v10, v11

    .line 319
    .local v7, scaledWidth:F
    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;->getScaleY()F

    move-result v11

    mul-float v6, v10, v11

    .line 320
    .local v6, scaledHeight:F
    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;->getX()F

    move-result v10

    add-float/2addr v10, v7

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_7

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;->getX()F

    move-result v10

    sub-float/2addr v10, v7

    iget-object v11, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    invoke-virtual {v11}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->getWidth()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_7

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;->getY()F

    move-result v10

    add-float/2addr v10, v6

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_7

    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;->getY()F

    move-result v10

    sub-float/2addr v10, v6

    iget-object v11, p0, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$1;->this$0:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;

    invoke-virtual {v11}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board;->getHeight()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 325
    :cond_7
    invoke-virtual {v4}, Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;->reset()V

    goto/16 :goto_3

    .line 328
    .end local v4           #nv:Lcom/cyanogenmod/trebuchet/RocketLauncher$Board$FlyingIcon;
    .end local v6           #scaledHeight:F
    .end local v7           #scaledWidth:F
    .end local v8           #v:Landroid/view/View;
    :cond_8
    return-void
.end method
