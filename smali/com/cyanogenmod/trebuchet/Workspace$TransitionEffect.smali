.class public final enum Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;
.super Ljava/lang/Enum;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransitionEffect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

.field public static final enum CubeIn:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

.field public static final enum CubeOut:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

.field public static final enum RotateDown:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

.field public static final enum RotateUp:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

.field public static final enum Stack:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

.field public static final enum Standard:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

.field public static final enum Tablet:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

.field public static final enum ZoomIn:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

.field public static final enum ZoomOut:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 247
    new-instance v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    const-string v1, "Standard"

    invoke-direct {v0, v1, v3}, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->Standard:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    .line 248
    new-instance v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    const-string v1, "Tablet"

    invoke-direct {v0, v1, v4}, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->Tablet:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    .line 249
    new-instance v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    const-string v1, "ZoomIn"

    invoke-direct {v0, v1, v5}, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->ZoomIn:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    .line 250
    new-instance v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    const-string v1, "ZoomOut"

    invoke-direct {v0, v1, v6}, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->ZoomOut:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    .line 251
    new-instance v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    const-string v1, "RotateUp"

    invoke-direct {v0, v1, v7}, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->RotateUp:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    .line 252
    new-instance v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    const-string v1, "RotateDown"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->RotateDown:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    .line 253
    new-instance v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    const-string v1, "CubeIn"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->CubeIn:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    .line 254
    new-instance v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    const-string v1, "CubeOut"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->CubeOut:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    .line 255
    new-instance v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    const-string v1, "Stack"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->Stack:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    .line 246
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    sget-object v1, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->Standard:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->Tablet:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->ZoomIn:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->ZoomOut:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->RotateUp:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->RotateDown:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->CubeIn:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->CubeOut:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->Stack:Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->$VALUES:[Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;
    .locals 1
    .parameter

    .prologue
    .line 246
    const-class v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    return-object v0
.end method

.method public static values()[Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->$VALUES:[Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    invoke-virtual {v0}, [Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyanogenmod/trebuchet/Workspace$TransitionEffect;

    return-object v0
.end method
