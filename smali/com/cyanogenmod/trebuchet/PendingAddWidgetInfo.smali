.class Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;
.super Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;
.source "PendingAddItemInfo.java"


# instance fields
.field configurationData:Landroid/os/Parcelable;

.field icon:I

.field mimeType:Ljava/lang/String;

.field minHeight:I

.field minWidth:I

.field previewImage:I


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .parameter "i"
    .parameter "dataMimeType"
    .parameter "data"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;-><init>()V

    .line 45
    const/4 v0, 0x4

    iput v0, p0, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->itemType:I

    .line 46
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 47
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iput v0, p0, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->minWidth:I

    .line 48
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iput v0, p0, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->minHeight:I

    .line 49
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iput v0, p0, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->previewImage:I

    .line 50
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    iput v0, p0, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->icon:I

    .line 51
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 52
    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;->configurationData:Landroid/os/Parcelable;

    .line 55
    :cond_0
    return-void
.end method
