.class Lcom/cyanogenmod/trebuchet/Workspace$13;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Workspace;->removeItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Workspace;

.field final synthetic val$layout:Landroid/view/ViewGroup;

.field final synthetic val$layoutParent:Lcom/cyanogenmod/trebuchet/CellLayout;

.field final synthetic val$packageNames:Ljava/util/HashSet;

.field final synthetic val$widgets:Landroid/appwidget/AppWidgetManager;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Landroid/appwidget/AppWidgetManager;Lcom/cyanogenmod/trebuchet/CellLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3722
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Workspace$13;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/cyanogenmod/trebuchet/Workspace$13;->val$packageNames:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/cyanogenmod/trebuchet/Workspace$13;->val$widgets:Landroid/appwidget/AppWidgetManager;

    iput-object p5, p0, Lcom/cyanogenmod/trebuchet/Workspace$13;->val$layoutParent:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 3724
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3725
    .local v5, childrenToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 3728
    .local v4, childCount:I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_0
    if-ge v13, v4, :cond_8

    .line 3729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 3730
    .local v18, view:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 3732
    .local v17, tag:Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v10, v17

    .line 3733
    check-cast v10, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 3734
    .local v10, info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    iget-object v11, v10, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3735
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 3737
    .local v14, name:Landroid/content/ComponentName;
    const-string v19, "android.intent.action.MAIN"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    if-eqz v14, :cond_7

    .line 3738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace$13;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3739
    .local v15, packageName:Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 3740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace$13;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    move-object/from16 v19, v0

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;
    invoke-static/range {v19 .. v19}, Lcom/cyanogenmod/trebuchet/Workspace;->access$2800(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/Launcher;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Lcom/cyanogenmod/trebuchet/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;)V

    .line 3741
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3745
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #info:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v14           #name:Landroid/content/ComponentName;
    .end local v15           #packageName:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/cyanogenmod/trebuchet/FolderInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v10, v17

    .line 3746
    check-cast v10, Lcom/cyanogenmod/trebuchet/FolderInfo;

    .line 3747
    .local v10, info:Lcom/cyanogenmod/trebuchet/FolderInfo;
    iget-object v6, v10, Lcom/cyanogenmod/trebuchet/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 3748
    .local v6, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ShortcutInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3749
    .local v7, contentsCount:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3752
    .local v2, appsToRemoveFromFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ShortcutInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 3753
    .local v1, appInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    iget-object v11, v1, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3754
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 3756
    .restart local v14       #name:Landroid/content/ComponentName;
    const-string v19, "android.intent.action.MAIN"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    if-eqz v14, :cond_2

    .line 3757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace$13;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3758
    .restart local v15       #packageName:Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 3759
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3764
    .end local v1           #appInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v14           #name:Landroid/content/ComponentName;
    .end local v15           #packageName:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    .line 3765
    .local v12, item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    invoke-virtual {v10, v12}, Lcom/cyanogenmod/trebuchet/FolderInfo;->remove(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V

    .line 3766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace$13;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    move-object/from16 v19, v0

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;
    invoke-static/range {v19 .. v19}, Lcom/cyanogenmod/trebuchet/Workspace;->access$2800(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/Launcher;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v12}, Lcom/cyanogenmod/trebuchet/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;)V

    goto :goto_3

    .line 3768
    .end local v2           #appsToRemoveFromFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ShortcutInfo;>;"
    .end local v6           #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cyanogenmod/trebuchet/ShortcutInfo;>;"
    .end local v7           #contentsCount:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #info:Lcom/cyanogenmod/trebuchet/FolderInfo;
    .end local v12           #item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;
    :cond_5
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v10, v17

    .line 3769
    check-cast v10, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;

    .line 3770
    .local v10, info:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace$13;->val$widgets:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v19, v0

    iget v0, v10, Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;->appWidgetId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v16

    .line 3772
    .local v16, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v16, :cond_7

    .line 3773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace$13;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3774
    .restart local v15       #packageName:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 3775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace$13;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    move-object/from16 v19, v0

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;
    invoke-static/range {v19 .. v19}, Lcom/cyanogenmod/trebuchet/Workspace;->access$2800(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/Launcher;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Lcom/cyanogenmod/trebuchet/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/cyanogenmod/trebuchet/ItemInfo;)V

    .line 3776
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3728
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #info:Lcom/cyanogenmod/trebuchet/LauncherAppWidgetInfo;
    .end local v15           #packageName:Ljava/lang/String;
    .end local v16           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 3783
    .end local v17           #tag:Ljava/lang/Object;
    .end local v18           #view:Landroid/view/View;
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3784
    const/4 v13, 0x0

    :goto_5
    if-ge v13, v4, :cond_a

    .line 3785
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3788
    .local v3, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace$13;->val$layoutParent:Lcom/cyanogenmod/trebuchet/CellLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 3789
    instance-of v0, v3, Lcom/cyanogenmod/trebuchet/DropTarget;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 3790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace$13;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    move-object/from16 v19, v0

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mDragController:Lcom/cyanogenmod/trebuchet/DragController;
    invoke-static/range {v19 .. v19}, Lcom/cyanogenmod/trebuchet/Workspace;->access$3300(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/DragController;

    move-result-object v19

    check-cast v3, Lcom/cyanogenmod/trebuchet/DropTarget;

    .end local v3           #child:Landroid/view/View;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/cyanogenmod/trebuchet/DragController;->removeDropTarget(Lcom/cyanogenmod/trebuchet/DropTarget;)V

    .line 3784
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 3794
    :cond_a
    if-lez v4, :cond_b

    .line 3795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/trebuchet/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->invalidate()V

    .line 3798
    :cond_b
    return-void
.end method
