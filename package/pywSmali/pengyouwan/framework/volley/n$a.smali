.class public final enum Lcom/pengyouwan/framework/volley/n$a;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/volley/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pengyouwan/framework/volley/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/pengyouwan/framework/volley/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/volley/n$a;"
        }
    .end annotation
.end field

.field public static final enum b:Lcom/pengyouwan/framework/volley/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/volley/n$a;"
        }
    .end annotation
.end field

.field public static final enum c:Lcom/pengyouwan/framework/volley/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/volley/n$a;"
        }
    .end annotation
.end field

.field public static final enum d:Lcom/pengyouwan/framework/volley/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/volley/n$a;"
        }
    .end annotation
.end field

.field private static final synthetic e:[Lcom/pengyouwan/framework/volley/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 592
    new-instance v0, Lcom/pengyouwan/framework/volley/n$a;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/pengyouwan/framework/volley/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pengyouwan/framework/volley/n$a;->a:Lcom/pengyouwan/framework/volley/n$a;

    new-instance v0, Lcom/pengyouwan/framework/volley/n$a;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/pengyouwan/framework/volley/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pengyouwan/framework/volley/n$a;->b:Lcom/pengyouwan/framework/volley/n$a;

    new-instance v0, Lcom/pengyouwan/framework/volley/n$a;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/pengyouwan/framework/volley/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pengyouwan/framework/volley/n$a;->c:Lcom/pengyouwan/framework/volley/n$a;

    new-instance v0, Lcom/pengyouwan/framework/volley/n$a;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcom/pengyouwan/framework/volley/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pengyouwan/framework/volley/n$a;->d:Lcom/pengyouwan/framework/volley/n$a;

    .line 591
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pengyouwan/framework/volley/n$a;

    sget-object v1, Lcom/pengyouwan/framework/volley/n$a;->a:Lcom/pengyouwan/framework/volley/n$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pengyouwan/framework/volley/n$a;->b:Lcom/pengyouwan/framework/volley/n$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pengyouwan/framework/volley/n$a;->c:Lcom/pengyouwan/framework/volley/n$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pengyouwan/framework/volley/n$a;->d:Lcom/pengyouwan/framework/volley/n$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pengyouwan/framework/volley/n$a;->e:[Lcom/pengyouwan/framework/volley/n$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 591
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pengyouwan/framework/volley/n$a;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/pengyouwan/framework/volley/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/volley/n$a;

    return-object v0
.end method

.method public static values()[Lcom/pengyouwan/framework/volley/n$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/pengyouwan/framework/volley/n$a;->e:[Lcom/pengyouwan/framework/volley/n$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/pengyouwan/framework/volley/n$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
