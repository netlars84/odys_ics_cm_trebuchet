.class public Lcom/cyanogenmod/trebuchet/AddAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/AddAdapter$ListItem;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;)V
    .locals 7
    .parameter "launcher"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/AddAdapter;->mItems:Ljava/util/ArrayList;

    .line 66
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/cyanogenmod/trebuchet/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 71
    .local v2, res:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/cyanogenmod/trebuchet/AddAdapter$ListItem;

    const v3, 0x7f09001b

    const v4, 0x7f02002c

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/trebuchet/AddAdapter$ListItem;-><init>(Lcom/cyanogenmod/trebuchet/AddAdapter;Landroid/content/res/Resources;III)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 99
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 76
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/trebuchet/AddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/AddAdapter$ListItem;

    .line 78
    .local v0, item:Lcom/cyanogenmod/trebuchet/AddAdapter$ListItem;
    if-nez p2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 82
    check-cast v1, Landroid/widget/TextView;

    .line 83
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 84
    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 87
    return-object p2
.end method
