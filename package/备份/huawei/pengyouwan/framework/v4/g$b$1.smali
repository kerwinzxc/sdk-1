.class Lcom/pengyouwan/framework/v4/g$b$1;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"

# interfaces
.implements Lcom/pengyouwan/framework/v4/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/framework/v4/g$b;->a(Lcom/pengyouwan/framework/v4/g;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/v4/g$b;

.field private final synthetic b:Lcom/pengyouwan/framework/v4/g;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/v4/g$b;Lcom/pengyouwan/framework/v4/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/g$b$1;->a:Lcom/pengyouwan/framework/v4/g$b;

    iput-object p2, p0, Lcom/pengyouwan/framework/v4/g$b$1;->b:Lcom/pengyouwan/framework/v4/g;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 2
    .param p1, "virtualViewId"    # I

    .prologue
    .line 72
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/g$b$1;->b:Lcom/pengyouwan/framework/v4/g;

    .line 73
    invoke-virtual {v1, p1}, Lcom/pengyouwan/framework/v4/g;->a(I)Lcom/pengyouwan/framework/v4/d;

    move-result-object v0

    .line 74
    .local v0, "compatInfo":Lcom/pengyouwan/framework/v4/d;
    if-nez v0, :cond_0

    .line 75
    const/4 v1, 0x0

    .line 77
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/d;->a()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/g$b$1;->b:Lcom/pengyouwan/framework/v4/g;

    invoke-virtual {v5, p1, p2}, Lcom/pengyouwan/framework/v4/g;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, "compatInfos":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/framework/v4/d;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 62
    .local v3, "infoCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 66
    return-object v4

    .line 63
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/framework/v4/d;

    .line 64
    .local v2, "infoCompat":Lcom/pengyouwan/framework/v4/d;
    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/d;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/g$b$1;->b:Lcom/pengyouwan/framework/v4/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pengyouwan/framework/v4/g;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
