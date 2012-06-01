.class Lcom/cyanogenmod/trebuchet/Launcher$21;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Launcher;->dismissCling(Lcom/cyanogenmod/trebuchet/Cling;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Launcher;

.field final synthetic val$cling:Lcom/cyanogenmod/trebuchet/Cling;

.field final synthetic val$flag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/Cling;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3410
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$21;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/Launcher$21;->val$cling:Lcom/cyanogenmod/trebuchet/Cling;

    iput-object p3, p0, Lcom/cyanogenmod/trebuchet/Launcher$21;->val$flag:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 3412
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$21;->val$cling:Lcom/cyanogenmod/trebuchet/Cling;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/trebuchet/Cling;->setVisibility(I)V

    .line 3413
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$21;->val$cling:Lcom/cyanogenmod/trebuchet/Cling;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Cling;->cleanup()V

    .line 3414
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$21;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const-string v3, "com.cyanogenmod.trebuchet_preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/cyanogenmod/trebuchet/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3416
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3417
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Launcher$21;->val$flag:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3418
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3419
    return-void
.end method
