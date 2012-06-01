.class Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;
.super Ljava/lang/Thread;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClearHistoryTask"
.end annotation


# instance fields
.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 323
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;->mResolver:Landroid/content/ContentResolver;

    .line 324
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 329
    return-void
.end method
