.class Lcom/pengyouwan/sdk/g/u$1;
.super Ljava/lang/Object;
.source "ResetAccountPwdTask.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pengyouwan/framework/volley/p$b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/u;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/g/u;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/u$1;->a:Lcom/pengyouwan/sdk/g/u;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 59
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, "jobj":Lorg/json/JSONObject;
    const-string v3, "ack"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, "ack":I
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/pengyouwan/sdk/g/u$1;->a:Lcom/pengyouwan/sdk/g/u;

    invoke-static {v3}, Lcom/pengyouwan/sdk/g/u;->a(Lcom/pengyouwan/sdk/g/u;)Lcom/pengyouwan/sdk/g/u$a;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/pengyouwan/sdk/g/u$a;->a(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    iget-object v3, p0, Lcom/pengyouwan/sdk/g/u$1;->a:Lcom/pengyouwan/sdk/g/u;

    iget-object v4, p0, Lcom/pengyouwan/sdk/g/u$1;->a:Lcom/pengyouwan/sdk/g/u;

    invoke-static {v4}, Lcom/pengyouwan/sdk/g/u;->a(Lcom/pengyouwan/sdk/g/u;)Lcom/pengyouwan/sdk/g/u$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pengyouwan/sdk/g/u;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 74
    .end local v0    # "ack":I
    .end local v2    # "jobj":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 64
    .restart local v0    # "ack":I
    .restart local v2    # "jobj":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/pengyouwan/sdk/g/u$1;->a:Lcom/pengyouwan/sdk/g/u;

    invoke-static {v3}, Lcom/pengyouwan/sdk/g/u;->a(Lcom/pengyouwan/sdk/g/u;)Lcom/pengyouwan/sdk/g/u$a;

    move-result-object v3

    const-string v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pengyouwan/sdk/g/u$a;->a(Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Lcom/pengyouwan/sdk/g/u$1;->a:Lcom/pengyouwan/sdk/g/u;

    invoke-static {v3}, Lcom/pengyouwan/sdk/g/u;->a(Lcom/pengyouwan/sdk/g/u;)Lcom/pengyouwan/sdk/g/u$a;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pengyouwan/sdk/g/u$a;->a(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    .end local v0    # "ack":I
    .end local v2    # "jobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    iget-object v3, p0, Lcom/pengyouwan/sdk/g/u$1;->a:Lcom/pengyouwan/sdk/g/u;

    invoke-static {v3}, Lcom/pengyouwan/sdk/g/u;->a(Lcom/pengyouwan/sdk/g/u;)Lcom/pengyouwan/sdk/g/u$a;

    move-result-object v3

    const-string v4, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v3, v4}, Lcom/pengyouwan/sdk/g/u$a;->a(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    iget-object v3, p0, Lcom/pengyouwan/sdk/g/u$1;->a:Lcom/pengyouwan/sdk/g/u;

    iget-object v4, p0, Lcom/pengyouwan/sdk/g/u$1;->a:Lcom/pengyouwan/sdk/g/u;

    invoke-static {v4}, Lcom/pengyouwan/sdk/g/u;->a(Lcom/pengyouwan/sdk/g/u;)Lcom/pengyouwan/sdk/g/u$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pengyouwan/sdk/g/u;->a(Lcom/pengyouwan/sdk/e/c;)V

    goto :goto_1

    .line 70
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v3

    .line 71
    iget-object v4, p0, Lcom/pengyouwan/sdk/g/u$1;->a:Lcom/pengyouwan/sdk/g/u;

    iget-object v5, p0, Lcom/pengyouwan/sdk/g/u$1;->a:Lcom/pengyouwan/sdk/g/u;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/u;->a(Lcom/pengyouwan/sdk/g/u;)Lcom/pengyouwan/sdk/g/u$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/g/u;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 72
    throw v3
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/g/u$1;->a(Ljava/lang/String;)V

    return-void
.end method
