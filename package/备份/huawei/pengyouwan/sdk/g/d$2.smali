.class Lcom/pengyouwan/sdk/g/d$2;
.super Ljava/lang/Object;
.source "BindPhoneTask.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/d;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/g/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/d$2;->a:Lcom/pengyouwan/sdk/g/d;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/pengyouwan/framework/volley/u;)V
    .locals 3
    .param p1, "error"    # Lcom/pengyouwan/framework/volley/u;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/d$2;->a:Lcom/pengyouwan/sdk/g/d;

    invoke-static {v0}, Lcom/pengyouwan/sdk/g/d;->a(Lcom/pengyouwan/sdk/g/d;)Lcom/pengyouwan/sdk/g/d$a;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u9519\u8bef\uff0c\u767b\u5f55\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/g/d$a;->a(Ljava/lang/String;)V

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p1, Lcom/pengyouwan/framework/volley/u;->a:Lcom/pengyouwan/framework/volley/j;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/d$2;->a:Lcom/pengyouwan/sdk/g/d;

    invoke-static {v0}, Lcom/pengyouwan/sdk/g/d;->a(Lcom/pengyouwan/sdk/g/d;)Lcom/pengyouwan/sdk/g/d$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pengyouwan/framework/volley/u;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/g/d$a;->a(Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/d$2;->a:Lcom/pengyouwan/sdk/g/d;

    iget-object v1, p0, Lcom/pengyouwan/sdk/g/d$2;->a:Lcom/pengyouwan/sdk/g/d;

    invoke-static {v1}, Lcom/pengyouwan/sdk/g/d;->a(Lcom/pengyouwan/sdk/g/d;)Lcom/pengyouwan/sdk/g/d$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/g/d;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 89
    return-void
.end method
